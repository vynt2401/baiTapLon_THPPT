classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                     matlab.ui.Figure
        TabGroup                     matlab.ui.container.TabGroup
        Tim_Nghiem_Tab               matlab.ui.container.Tab
        NhpphngtrnhEditFieldLabel    matlab.ui.control.Label
        inputEquation                matlab.ui.control.EditField
        ChnphngphptmLabel            matlab.ui.control.Label
        choseOption                  matlab.ui.control.DropDown
        caculateEvent                matlab.ui.control.Button
        NhpkhongphnlyngimaEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_a    matlab.ui.control.NumericEditField
        NhpkhongphnlynghimbEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_b    matlab.ui.control.NumericEditField
        NhpsaisEditFieldLabel        matlab.ui.control.Label
        inputAllowableError          matlab.ui.control.NumericEditField
        SlnlpcaphngphptrnlLabel      matlab.ui.control.Label
        resultLoop                   matlab.ui.control.NumericEditField
        NghimcaphngphptrnlLabel      matlab.ui.control.Label
        resultMethod                 matlab.ui.control.NumericEditField
        UIAxes                       matlab.ui.control.UIAxes
        Noi_Suy_Tab                  matlab.ui.container.Tab
        PhngphpnisuyDropDownLabel    matlab.ui.control.Label
        choseOptionInterpolation     matlab.ui.control.DropDown
        KtqunisuytrnlEditFieldLabel  matlab.ui.control.Label
        restultInterpolation         matlab.ui.control.NumericEditField
        Button                       matlab.ui.control.Button
        NhpgitrxEditFieldLabel       matlab.ui.control.Label
        InputArangeX                 matlab.ui.control.EditField
        NhpgitryEditFieldLabel       matlab.ui.control.Label
        InputArangeY                 matlab.ui.control.EditField
        NhpgitrcnnisuyLabel          matlab.ui.control.Label
        InputValueToInterpolated     matlab.ui.control.EditField
        KtquathcnisuycaphngphptrnlEditFieldLabel  matlab.ui.control.Label
        resultPolynomial             matlab.ui.control.EditField
        UIAxesInterpolation          matlab.ui.control.UIAxes
        Hoi_Quy_Tab                  matlab.ui.container.Tab
        Dao_Ham_Tab                  matlab.ui.container.Tab
        Tich_Phan_Tab                matlab.ui.container.Tab
        Introduce_Tab                matlab.ui.container.Tab
        EditFieldLabel               matlab.ui.control.Label
        Test_Field                   matlab.ui.control.EditField
    end

    
    %this line trust comment in to test
    
    methods (Access = private)
        
        %tạo function sử dụng phương pháp chia đôi để tìm nghiệm
        %fx là hàm cần tìm gần đúng
        %fp là hàm lặp, là hàm đạo hàm của fx
        %a, b là khoảng phân ly nghiệm
        %saiso là sai số cho phép
        %n là số lần lặp của phép tính
        %x1 là giá trị trả về, nghiệm trả về
        
        function [loopTime, no] = bisectionMethod(app, fx, a,b, saiso ) 
            fa = feval(fx, a);
            fb = feval(fx, b);
            if(fa .* fb) > 0
                   result = 0;
                   app.resultLoop.Value =  result;
                   app.resultMethod.Value = result;
                   plot(app.UIAxes,0,0);
                   uialert(app.UIFigure, 'Khoảng phân ly trên không có nghiệm, mời nhập lại khoảng phân ly nghiệm a và b.', 'Lỗi', 'Icon', 'error');
                   error('Khoảng phân ly trên không có nghiệm');
            end
            loopTime = 0; %số lần lặp = 0
           while (b - a) /2 > saiso
               c = (a+b)/2;
               fc = feval(fx,c);
               loopTime = loopTime +1;
               if fc == 0
                   break;
               elseif fa .* fc < 0
                   b = c;
               else
                   a = c;
               end
               no = (a+b)/2;
            end
           disp(loopTime);
           disp(no);
            %no là nghiệm, loopTime là số vòng lặp trả về
            
        end
        
        
        
        %function sử dụng phương pháp lặp để tìm nghiệm
        function [x1, n, x_plot, y] = repeatMethod(app, fx, a, b, saiso)
            syms x;
            fp_diff = diff(fx, x);
            fp = fp_diff;
            x0 = (a+b)/2;
            x1  = subs(fp, x, x0)
            n = 0;
            while abs(x1 - x0) > saiso 
                x0 = x1;
                x1 = subs(fp, x, x0);
                n = n+1;
            end
            x_plot = a: 0.1 : b;
            y = subs(fp,x, x_plot);
        end
        
        
        
        %function sử dụng phương pháp tiếp tuyến (Newton) để tìm nghiệm
        function [x1, n, x_plot, y] = newtonMethod(app, fx, a, b, saiso)
            syms x;
            df = diff(fx,x); %tính đạo hàm của fx tại x và gán và df
            x0 = a+b/2;
            temp_to_test = subs(df, x, x0);
            if temp_to_test == 0
                    result = 0;
                   app.resultLoop.Value =  result;
                   app.resultMethod.Value = result;
                   plot(app.UIAxes,0,0);
                   uialert(app.UIFigure, 'Khoảng phân ly trên khi tính toán thì nghiệm tính ra sẽ bị sai, mời nhập lại khoảng phân ly nghiệm a và b.', 'Lỗi', 'Icon', 'error');
                   
                   return;
            end
            x1 = x0 - fx(x0) / subs(df, x, x0);
            
            n = 0;
            while abs(x1 - x0) > saiso
                x0 = x1;
                x1 = x0 - fx(x0) / subs(df, x, x0);
                n = n +1;
            end 
            x_plot = a: 0.1 : b;
            y = subs(df,x, x_plot);
            
            %x1 là nghiệm trả về, n là số lần vòng lặp
            %đẩy sai số ra sau
        end
        
        
        
        function d = divideDifference(app, xIn,yIn) %function tính tỷ hiệu các cấp 
            %d là giá trị trả về, 
            %xIn là mảng x nhập vào
            %yIn là mảng y nhập vào
            n = length(xIn);
            d = yIn;
            for j = 2 : n
                for i = n : j-1
                    d(i) = (d(i) - d(i-1)) / (xIn(i) - xIn(i-j+1));
                end
            end
        end
        
        
        
        
        
        function results = NewtonForm(app, xIn, yIn, d, x) % function tính giá trị nội suy = đa thức newton
            % d là kết quả của function tính tỷ hiệu các cấp được khai báo
            % từ trước, results là giá trị trả về để tính các giá trị nội
            % suy từ 2 mảng x và y nhập vào trước đó
            n = length(d);
            results = d(n);
            for i = n -1: -1: 1
                results = results * (x - xIn(i)) + d(i);
            end
        end
        
        function results = NewtonInterpolation (app, xIn, yIn, x) 
            %function tổng hợp từ 2 function trước để tính toán giá trị nội
            %suy dựa vào 2 mảng x, y và giá trị cần nội suy được nhập từ
            %trước, chủ yếu để dựa vào hàm tính tỷ hiệu lấy giá trị d trả
            %ra, sau đó lấy giá trị d đó để là input cho hàm NewtonForm
            d = divideDifference(app, xIn, yIn);
            results = NewtonForm(app, xIn, yIn, x);
            
        end
        
        function results_PLN = NewtonInterpolationPolynomial(app, xIn,yIn, x)
            syms x;
            d = divideDifference(app, xIn, yIn);
            newtonPolynomial = d(1);
            for i = 2 : length(d)
                temp = d(i);
                for j = 1 : i-1
                    temp = temp *(x - xIn(j));
                end
                newtonPolynomial = newtonPolynomial + temp;
                
            end
           
            results_PLN = sym(newtonPolynomial);  
        end
        
      
        
        
        function results = larangeProduct(app, xIn, yIn, x)
            n = length(xIn);
            sum = 0;
            for i = 1:n
                product = yIn(i);
                for j = 1 : n
                    if i ~= j
                        product = product * (x - xIn(j)) / (xIn(i) - xIn(j));
                    end
                end
                sum = sum + product;
            end   
            results = sum;
        end
            
        
        
        function results = LarangeInterpolationPolynomial(app, xIn, yIn, x)
            syms x;
            n = length(xIn);
            sum = 0;
            for i = 1: n
                product = 1;
                for j = 1 : n
                    if j ~= i
                        product = product * (x - xIn(j)) / (xIn(i) - xIn(j));
                    end
                end
                sum = sum + product * yIn(i);
            end
            results = sym(sum);
        end
    end
    
    
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: caculateEvent
        function caculateEventButtonPushed(app, event)
         
          %lấy giá trị từ bên ngoài UI sau đó đối với fx của tab tìm nghiệm
          %thì đẩy về dạng function với symbols là x
           fxi = app.inputEquation.Value;
           fx = str2func(['@(x)', fxi]);
           
           saiso = app.inputAllowableError.Value;
           a = app.inputSeparationDistance_a.Value;
           b = app.inputSeparationDistance_b.Value;

           %đẩy các phương pháp chọn ở trong drop down vào hàm switch case
           %để đưa ra các điều kiện sau khi event buttonPushed được nhấn
           switch app.choseOption.Value
               case 'Chia đôi' 
               %đẩy các giá trị output ở hàm tính toán nghiệm chia đôi sau
               %đó đưa nó vào các value text
               [loopTime, no] = bisectionMethod(app, fx, a, b, saiso);              
               app.resultLoop.Value = loopTime;
               app.resultMethod.Value = no;
               %tạo khoảng x và y để vẽ hình trong đồ thị
               x = a: 0.1 : b;
               y = fx(x);
         
               hold(app.UIAxes, 'on');
               %Vẽ đồ thị
               plot(app.UIAxes,x,y, 'black');
               grid(app.UIAxes, 'on');
            
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
               hold(app.UIAxes, 'off');
               
               case 'Lặp'
               %đẩy các giá trị output ở hàm tính toán nghiệm lặp sau
               %đó đưa nó vào các value text
               [x1, n, x_plot, y] = repeatMethod(app, fx, a,b,saiso);
            
               app.resultLoop.Value= double(n);
               app.resultMethod.Value = double(x1);
               %Vẽ đồ thị
               grid(app.UIAxes, 'on');
     
               plot(app.UIAxes, x_plot, y, 'black');
            
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
              
               
               case 'Newton(Tiếp tuyến)'
               %đẩy các giá trị output ở hàm tính toán nghiệm chia đôi sau
               %đó đưa nó vào các value text
               [x1, n,x_plot, y] = newtonMethod(app, fx, a, b, saiso);
               
               app.resultLoop.Value = double(n);
               app.resultMethod.Value = double(x1);
               
               %Vẽ đồ thị
               hold(app.UIAxes, 'on');            
               plot(app.UIAxes, x_plot, y,'black');              
               grid(app.UIAxes, 'on');
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
               hold(app.UIAxes, 'off');
           end

           
        end

        % Button pushed function: Button
        function ButtonPushed(app, event)
           %Lấy các giá trị được ghi ra ở bên ngoài UI xong rồi đẩy vào các
           %biến được khởi tạo ở trong function có event trên --> khi
           %BunttonPushed ở tab Nội Suy được nhấn thì sẽ xảy ra các dòng
           %lệnh tuần tự ở dưới.
           
           %Tại vì mảng được nhập vào dưới dạng string, và khối được nhập
           %mảng là text, nên khi chuyển đổi qua dạng chuỗi số phải sử dụng
           %thêm hàm sttrep.
           xInStr = strrep(app.InputArangeX.Value, ',',' '); 
           %hàm strrep có tác dụng thay đổi giá trị nhập vào chứa ký tự sau
           %đó thành ký tự mới, ở đây là thay đổi ',' thành dấu cách ' ' để
           %đổi chuỗi thành số và đưa vào dãy, nhập vào hàm để tính toán.
           yInStr = strrep(app.InputArangeY.Value, ',',' ');
           xStr = strrep(app.InputValueToInterpolated.Value,',',' ');
           
           %Sau đó sử dụng thêm str2num để chuyển từ chuỗi(String) sang số 
           %để tính toán 
           xIn = str2num(xInStr);
           yIn = str2num(yInStr);
           x = str2num(xStr);
           
           %str2double --> đẩy về giá trị mảng bằng 1 hết, tại vì k phải là
           %số nguyên, str2num --> đẩy về giá trị mảng là một số nguyên nên
           %vẫn đếm được các thành phần có trong mảng.
           
           %các điều kiện tiên quyết ban đầu khi nhập giá trị để thực thi
           %các tab, nếu nhập sai sẽ báo lỗi trên UIFigure của matlab app
           if isempty(xIn) || isempty(yIn)
               uialert(app.UIFigure, 'Nhập vào mảng x hoặc mảng y đang không hợp lệ, vui lòng nhập lại.', 'Lỗi', "Icon", 'error');
               return;
           end
           if length(xIn) ~= length(yIn)
               uialert(app.UIFigure, 'Độ dài hai mảng nhập vào đang không bằng nhau, vui lòng nhập lại.', 'Lỗi',"Icon", 'error');
               return;
           end
           if isempty(x)
               uialert(app.UIFigure, "Giá trị cần nội suy x nhập vào đang không hợp lệ, vui lòng nhập lại.", 'Lỗi', 'Icon', 'error');
               return;
           end
           if length(x) > 1
               uialert(app.UIFigure, "Giá trị cần nội suy x nhập vào chỉ tương ứng 1 giá trị, vui lòng nhập lại.", 'Lỗi,', 'Icon','error');
               return;
           end
           
           %đưa các giá trị vừa tìm được vào hàm swith case sau đó tính
           %toán các event ở bên trong.
           switch app.choseOptionInterpolation.Value
               case 'Newton'
               results = NewtonInterpolation(app, xIn, yIn, x);
               results_PLN = NewtonInterpolationPolynomial(app, xIn, yIn, x);
               app.restultInterpolation.Value = double(results);
               
               %đổi giá trị trả về của hàm NewtonInterpolationPolynomial 
               %thành string để đẩy output sang resultPloynomial phù hợp
               %với lại output text bên ngoài Design View
               app.resultPolynomial.Value = string(results_PLN); 
      
               
               
               %Các dòng code để chuyển đổi từ giá trị syms của results_PLN sang
               %function để tính toán giá trị biểu thức trên x, từ đó vẽ đồ
               %thị ra.
               fx = string(results_PLN);
               fxi = str2sym(fx);
               px = matlabFunction(fxi);
               y = px(xIn);
              
              %Vẽ đồ thị dựa trên biểu thức vừa tìm được
              plot(app.UIAxesInterpolation, xIn, y, 'black');
              hold(app.UIAxesInterpolation, 'on');
              stem(app.UIAxesInterpolation, xIn, y, 'red');
              hold(app.UIAxesInterpolation, 'off');
              legend(app.UIAxesInterpolation,'Nét đồ thị của biểu thức', 'Điểm đồ thị của biểu thức đi qua');
              grid(app.UIAxesInterpolation, 'on');
              xlim(app.UIAxesInterpolation, xIn, yIn);
              ylim(app.UIAxesInterpolation, xIn, yIn);
              
               case 'Larange'
                   results = larangeProduct(app,xIn, yIn, x);
                   app.restultInterpolation.Value = results;
                   results_larange_PLN = LarangeInterpolationPolynomial(app, xIn, yIn, x);
                   app.resultPolynomial.Value = string(results_larange_PLN);
                   
                   
                   %Code chuyển đổi từ giá trị syms của result_larange_PLN
                   %sang function để tính toán các giá trị trên syms x, từ
                   %đó vẽ được đồ thị đi qua, dựa trên biểu thức có được
                   
                   larangeX = string(results_larange_PLN);
                   larangeXi = str2sym(larangeX);
                   Lx = matlabFunction(larangeXi);
                   y = Lx(xIn);
                   
                   %Vẽ đồ thị dựa trên biểu thức tìm được
                   plot(app.UIAxesInterpolation, xIn, y, 'black');
                   hold(app.UIAxesInterpolation, 'on');
                   stem(app.UIAxesInterpolation, xIn, y, 'red');
                   hold(app.UIAxesInterpolation, 'off');
                   legend(app.UIAxesInterpolation, 'Nét đồ thị của biểu thức', 'Điểm đồ thị của biểu thức đi qua');
                   grid(app.UIAxesInterpolation, 'on');
                   xlim(app.UIAxesInterpolation, xIn, yIn);
                   ylim(app.UIAxesInterpolation, xIn, yIn);
              

           end
           
           
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 850 531];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 0 850 532];

            % Create Tim_Nghiem_Tab
            app.Tim_Nghiem_Tab = uitab(app.TabGroup);
            app.Tim_Nghiem_Tab.Title = 'Nghiệm';

            % Create NhpphngtrnhEditFieldLabel
            app.NhpphngtrnhEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpphngtrnhEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpphngtrnhEditFieldLabel.Position = [53 441 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nhập phương trình';

            % Create inputEquation
            app.inputEquation = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputEquation.HorizontalAlignment = 'right';
            app.inputEquation.Position = [184 441 109 22];

            % Create ChnphngphptmLabel
            app.ChnphngphptmLabel = uilabel(app.Tim_Nghiem_Tab);
            app.ChnphngphptmLabel.HorizontalAlignment = 'center';
            app.ChnphngphptmLabel.Position = [41 297 130 22];
            app.ChnphngphptmLabel.Text = 'Chọn phương pháp tìm';

            % Create choseOption
            app.choseOption = uidropdown(app.Tim_Nghiem_Tab);
            app.choseOption.Items = {'Chia đôi', 'Lặp', 'Newton(Tiếp tuyến)'};
            app.choseOption.Position = [180 297 113 22];
            app.choseOption.Value = 'Chia đôi';

            % Create caculateEvent
            app.caculateEvent = uibutton(app.Tim_Nghiem_Tab, 'push');
            app.caculateEvent.ButtonPushedFcn = createCallbackFcn(app, @caculateEventButtonPushed, true);
            app.caculateEvent.Position = [120 222 139 22];
            app.caculateEvent.Text = 'Vẽ tín hiệu và tính toán';

            % Create NhpkhongphnlyngimaEditFieldLabel
            app.NhpkhongphnlyngimaEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpkhongphnlyngimaEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpkhongphnlyngimaEditFieldLabel.Position = [12 407 165 22];
            app.NhpkhongphnlyngimaEditFieldLabel.Text = 'Nhập khoảng phân ly ngiệm a';

            % Create inputSeparationDistance_a
            app.inputSeparationDistance_a = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.inputSeparationDistance_a.HorizontalAlignment = 'center';
            app.inputSeparationDistance_a.Position = [184 407 109 22];

            % Create NhpkhongphnlynghimbEditFieldLabel
            app.NhpkhongphnlynghimbEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpkhongphnlynghimbEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpkhongphnlynghimbEditFieldLabel.Position = [6 370 171 22];
            app.NhpkhongphnlynghimbEditFieldLabel.Text = 'Nhập khoảng phân ly nghiệm b';

            % Create inputSeparationDistance_b
            app.inputSeparationDistance_b = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.inputSeparationDistance_b.HorizontalAlignment = 'center';
            app.inputSeparationDistance_b.Position = [184 370 109 22];

            % Create NhpsaisEditFieldLabel
            app.NhpsaisEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpsaisEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpsaisEditFieldLabel.Position = [108 334 69 22];
            app.NhpsaisEditFieldLabel.Text = 'Nhập sai số';

            % Create inputAllowableError
            app.inputAllowableError = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.inputAllowableError.HorizontalAlignment = 'center';
            app.inputAllowableError.Position = [184 334 109 22];

            % Create SlnlpcaphngphptrnlLabel
            app.SlnlpcaphngphptrnlLabel = uilabel(app.Tim_Nghiem_Tab);
            app.SlnlpcaphngphptrnlLabel.HorizontalAlignment = 'center';
            app.SlnlpcaphngphptrnlLabel.Position = [417 111 308 19];
            app.SlnlpcaphngphptrnlLabel.Text = 'Số lần lặp của phương pháp ở trên là';

            % Create resultLoop
            app.resultLoop = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.resultLoop.HorizontalAlignment = 'center';
            app.resultLoop.Position = [724 110 100 22];

            % Create NghimcaphngphptrnlLabel
            app.NghimcaphngphptrnlLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NghimcaphngphptrnlLabel.HorizontalAlignment = 'right';
            app.NghimcaphngphptrnlLabel.Position = [27 111 198 22];
            app.NghimcaphngphptrnlLabel.Text = 'Nghiệm của phương pháp  ở trên là';

            % Create resultMethod
            app.resultMethod = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.resultMethod.HorizontalAlignment = 'center';
            app.resultMethod.Position = [240 111 100 22];

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tim_Nghiem_Tab);
            title(app.UIAxes, 'Đồ thị ')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [339 157 498 337];

            % Create Noi_Suy_Tab
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

            % Create PhngphpnisuyDropDownLabel
            app.PhngphpnisuyDropDownLabel = uilabel(app.Noi_Suy_Tab);
            app.PhngphpnisuyDropDownLabel.HorizontalAlignment = 'right';
            app.PhngphpnisuyDropDownLabel.Position = [39 243 121 22];
            app.PhngphpnisuyDropDownLabel.Text = 'Phương pháp nội suy';

            % Create choseOptionInterpolation
            app.choseOptionInterpolation = uidropdown(app.Noi_Suy_Tab);
            app.choseOptionInterpolation.Items = {'Larange', 'Newton'};
            app.choseOptionInterpolation.Position = [175 243 100 22];
            app.choseOptionInterpolation.Value = 'Larange';

            % Create KtqunisuytrnlEditFieldLabel
            app.KtqunisuytrnlEditFieldLabel = uilabel(app.Noi_Suy_Tab);
            app.KtqunisuytrnlEditFieldLabel.HorizontalAlignment = 'center';
            app.KtqunisuytrnlEditFieldLabel.FontName = 'Arial';
            app.KtqunisuytrnlEditFieldLabel.Position = [584 98 125 22];
            app.KtqunisuytrnlEditFieldLabel.Text = 'Kết quả nội suy trên là';

            % Create restultInterpolation
            app.restultInterpolation = uieditfield(app.Noi_Suy_Tab, 'numeric');
            app.restultInterpolation.HorizontalAlignment = 'center';
            app.restultInterpolation.FontName = 'Arial';
            app.restultInterpolation.Position = [724 98 100 22];

            % Create Button
            app.Button = uibutton(app.Noi_Suy_Tab, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Position = [108 157 139 22];
            app.Button.Text = 'Vẽ tín hiệu và tính toán';

            % Create NhpgitrxEditFieldLabel
            app.NhpgitrxEditFieldLabel = uilabel(app.Noi_Suy_Tab);
            app.NhpgitrxEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpgitrxEditFieldLabel.FontName = 'Arial';
            app.NhpgitrxEditFieldLabel.Position = [84 420 76 22];
            app.NhpgitrxEditFieldLabel.Text = 'Nhập giá trị x';

            % Create InputArangeX
            app.InputArangeX = uieditfield(app.Noi_Suy_Tab, 'text');
            app.InputArangeX.HorizontalAlignment = 'center';
            app.InputArangeX.FontName = 'Arial';
            app.InputArangeX.Position = [175 420 100 22];

            % Create NhpgitryEditFieldLabel
            app.NhpgitryEditFieldLabel = uilabel(app.Noi_Suy_Tab);
            app.NhpgitryEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpgitryEditFieldLabel.FontName = 'Arial';
            app.NhpgitryEditFieldLabel.Position = [84 370 76 22];
            app.NhpgitryEditFieldLabel.Text = 'Nhập giá trị y';

            % Create InputArangeY
            app.InputArangeY = uieditfield(app.Noi_Suy_Tab, 'text');
            app.InputArangeY.HorizontalAlignment = 'center';
            app.InputArangeY.FontName = 'Arial';
            app.InputArangeY.Position = [175 370 100 22];

            % Create NhpgitrcnnisuyLabel
            app.NhpgitrcnnisuyLabel = uilabel(app.Noi_Suy_Tab);
            app.NhpgitrcnnisuyLabel.HorizontalAlignment = 'center';
            app.NhpgitrcnnisuyLabel.FontName = 'Arial';
            app.NhpgitrcnnisuyLabel.Position = [29 308 131 22];
            app.NhpgitrcnnisuyLabel.Text = 'Nhập giá trị cần nội suy';

            % Create InputValueToInterpolated
            app.InputValueToInterpolated = uieditfield(app.Noi_Suy_Tab, 'text');
            app.InputValueToInterpolated.HorizontalAlignment = 'center';
            app.InputValueToInterpolated.FontName = 'Arial';
            app.InputValueToInterpolated.Position = [175 308 100 22];

            % Create KtquathcnisuycaphngphptrnlEditFieldLabel
            app.KtquathcnisuycaphngphptrnlEditFieldLabel = uilabel(app.Noi_Suy_Tab);
            app.KtquathcnisuycaphngphptrnlEditFieldLabel.HorizontalAlignment = 'center';
            app.KtquathcnisuycaphngphptrnlEditFieldLabel.FontName = 'Arial';
            app.KtquathcnisuycaphngphptrnlEditFieldLabel.Position = [12 98 270 22];
            app.KtquathcnisuycaphngphptrnlEditFieldLabel.Text = 'Kết quả đa thức nội suy của phương pháp trên là';

            % Create resultPolynomial
            app.resultPolynomial = uieditfield(app.Noi_Suy_Tab, 'text');
            app.resultPolynomial.HorizontalAlignment = 'center';
            app.resultPolynomial.FontName = 'Arial';
            app.resultPolynomial.Position = [297 98 278 22];

            % Create UIAxesInterpolation
            app.UIAxesInterpolation = uiaxes(app.Noi_Suy_Tab);
            title(app.UIAxesInterpolation, 'Đồ thị')
            xlabel(app.UIAxesInterpolation, 'X')
            ylabel(app.UIAxesInterpolation, 'Y')
            zlabel(app.UIAxesInterpolation, 'Z')
            app.UIAxesInterpolation.Position = [322 152 515 342];

            % Create Hoi_Quy_Tab
            app.Hoi_Quy_Tab = uitab(app.TabGroup);
            app.Hoi_Quy_Tab.Title = 'Hồi Quy';

            % Create Dao_Ham_Tab
            app.Dao_Ham_Tab = uitab(app.TabGroup);
            app.Dao_Ham_Tab.Title = 'Đạo Hàm';

            % Create Tich_Phan_Tab
            app.Tich_Phan_Tab = uitab(app.TabGroup);
            app.Tich_Phan_Tab.Title = 'Tích Phân';

            % Create Introduce_Tab
            app.Introduce_Tab = uitab(app.TabGroup);
            app.Introduce_Tab.Title = 'Giới Thiệu Nhóm';

            % Create EditFieldLabel
            app.EditFieldLabel = uilabel(app.Introduce_Tab);
            app.EditFieldLabel.HorizontalAlignment = 'right';
            app.EditFieldLabel.Position = [88 453 55 22];
            app.EditFieldLabel.Text = 'Edit Field';

            % Create Test_Field
            app.Test_Field = uieditfield(app.Introduce_Tab, 'text');
            app.Test_Field.Position = [158 453 164 22];
            app.Test_Field.Value = 'Tab này cho Tâm làm';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = baiTapLon_PPT_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end