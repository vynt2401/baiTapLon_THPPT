classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
%<<<<<<< ThanhTien91
        UIFigure                    matlab.ui.Figure
        TabGroup                    matlab.ui.container.TabGroup
        Tim_Nghiem_Tab              matlab.ui.container.Tab
        NhpphngtrnhEditFieldLabel   matlab.ui.control.Label
        inputEquation               matlab.ui.control.EditField
        ChnphngphptmLabel           matlab.ui.control.Label
        choseOption                 matlab.ui.control.DropDown
        caculateEvent               matlab.ui.control.Button
        NhpkhongphnlyngimaEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_a   matlab.ui.control.NumericEditField
        NhpkhongphnlynghimbEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_b   matlab.ui.control.NumericEditField
        NhpsaisEditFieldLabel       matlab.ui.control.Label
        inputAllowableError         matlab.ui.control.NumericEditField
        SlnlpcaphngphptrnlLabel     matlab.ui.control.Label
        resultLoop                  matlab.ui.control.NumericEditField
        NghimcaphngphptrnlLabel     matlab.ui.control.Label
        resultMethod                matlab.ui.control.NumericEditField
        UIAxes                      matlab.ui.control.UIAxes
        Noi_Suy_Tab                 matlab.ui.container.Tab
        Hoi_Quy_Tab                 matlab.ui.container.Tab
        Button                      matlab.ui.control.Button
        NhpdliuxEditFieldLabel      matlab.ui.control.Label
        EditFieldX                  matlab.ui.control.NumericEditField
        NhpdliuyEditFieldLabel      matlab.ui.control.Label
        EditFieldY                  matlab.ui.control.NumericEditField
        NhpgitrcndonEditFieldLabel  matlab.ui.control.Label
        EditFieldNhapgiatridudoan   matlab.ui.control.NumericEditField
        KtqudonEditFieldLabel       matlab.ui.control.Label
        EditFieldKetquadudoan       matlab.ui.control.NumericEditField
        KtquchngtrnhhiquyEditFieldLabel  matlab.ui.control.Label
        EditFieldKetquachuongtrinh  matlab.ui.control.EditField
        PhngphpDropDownLabel        matlab.ui.control.Label
        PhngphpDropDown             matlab.ui.control.DropDown
        UIAxes2                     matlab.ui.control.UIAxes
        Dao_Ham_Tab                 matlab.ui.container.Tab
        Tich_Phan_Tab               matlab.ui.container.Tab
        Introduce_Tab               matlab.ui.container.Tab
        EditFieldLabel              matlab.ui.control.Label
        Test_Field                  matlab.ui.control.EditField
%=======
        UIFigure                       matlab.ui.Figure
        TabGroup                       matlab.ui.container.TabGroup
        Tim_Nghiem_Tab                 matlab.ui.container.Tab
        resultMethod                   matlab.ui.control.NumericEditField
        NghimcaphngphptrnlLabel        matlab.ui.control.Label
        resultLoop                     matlab.ui.control.NumericEditField
        SlnlpcaphngphptrnlLabel        matlab.ui.control.Label
        inputAllowableError            matlab.ui.control.NumericEditField
        NhpsaisEditFieldLabel          matlab.ui.control.Label
        inputSeparationDistance_b      matlab.ui.control.NumericEditField
        NhpkhongphnlynghimbEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_a      matlab.ui.control.NumericEditField
        NhpkhongphnlyngimaEditFieldLabel  matlab.ui.control.Label
        caculateEvent                  matlab.ui.control.Button
        choseOption                    matlab.ui.control.DropDown
        ChnphngphptmLabel              matlab.ui.control.Label
        inputEquation                  matlab.ui.control.EditField
        NhpphngtrnhEditFieldLabel      matlab.ui.control.Label
        UIAxes                         matlab.ui.control.UIAxes
        Noi_Suy_Tab                    matlab.ui.container.Tab
        resultPolynomial               matlab.ui.control.EditField
        KtquathcnisuycaphngphptrnlEditFieldLabel  matlab.ui.control.Label
        InputValueToInterpolated       matlab.ui.control.EditField
        NhpgitrcnnisuyLabel            matlab.ui.control.Label
        InputArangeY                   matlab.ui.control.EditField
        NhpgitryEditFieldLabel         matlab.ui.control.Label
        InputArangeX                   matlab.ui.control.EditField
        NhpgitrxEditFieldLabel         matlab.ui.control.Label
        Button                         matlab.ui.control.Button
        restultInterpolation           matlab.ui.control.NumericEditField
        KtqunisuytrnlEditFieldLabel    matlab.ui.control.Label
        choseOptionInterpolation       matlab.ui.control.DropDown
        PhngphpnisuyDropDownLabel      matlab.ui.control.Label
        UIAxesInterpolation            matlab.ui.control.UIAxes
        Hoi_Quy_Tab                    matlab.ui.container.Tab
        Dao_Ham_Tab                    matlab.ui.container.Tab
        PhuongPhapDaoHam               matlab.ui.control.DropDown
        PhngphpohmDropDownLabel        matlab.ui.control.Label
        ChonSaiSo                      matlab.ui.control.DropDown
        ChnsaisOhhocOh2DropDownLabel   matlab.ui.control.Label
        NhapDuLieuy                    matlab.ui.control.EditField
        NhpdliuyEditFieldLabel         matlab.ui.control.Label
        NhapDuLieux                    matlab.ui.control.EditField
        NhpdliuxEditFieldLabel         matlab.ui.control.Label
        NhapHamSo                      matlab.ui.control.EditField
        NhphmsEditFieldLabel           matlab.ui.control.Label
        GiaTriCanTinhDaoHam            matlab.ui.control.NumericEditField
        NhpgitrcntnhohmEditFieldLabel  matlab.ui.control.Label
        NhapBuoch                      matlab.ui.control.NumericEditField
        NhpbchEditFieldLabel           matlab.ui.control.Label
        KetQua                         matlab.ui.control.Button
        Tich_Phan_Tab                  matlab.ui.container.Tab
        ChnPhngPhpDropDown             matlab.ui.control.DropDown
        ChnPhngPhpDropDownLabel        matlab.ui.control.Label
        NhphmsEditField                matlab.ui.control.EditField
        NhphmsEditFieldLabel_2         matlab.ui.control.Label
        NhpNEditField                  matlab.ui.control.NumericEditField
        NhpNEditFieldLabel             matlab.ui.control.Label
        NhpdliuyEditField              matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_2       matlab.ui.control.Label
        NhpdliuxEditField              matlab.ui.control.EditField
        NhpdliuxEditFieldLabel_2       matlab.ui.control.Label
        EditField2_2                   matlab.ui.control.NumericEditField
        EditField2                     matlab.ui.control.NumericEditField
        KtquButton                     matlab.ui.control.Button
        Label_3                        matlab.ui.control.Label
        Label_2                        matlab.ui.control.Label
        Label                          matlab.ui.control.Label
        NhpcnLabel                     matlab.ui.control.Label
        HocLabel                       matlab.ui.control.Label
        Introduce_Tab                  matlab.ui.container.Tab
        AVy                            matlab.ui.control.Image
%>>>>>>> main
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
%<<<<<<< ThanhTien91
                   error('Khoảng phân ly trên không có nghiệm');
%=======
                   
                   return;
%>>>>>>> main
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
%<<<<<<< ThanhTien91
%=======
        
        
        
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
%>>>>>>> main
    end
    
    
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: caculateEvent
        function caculateEventButtonPushed(app, event)
%<<<<<<< ThanhTien91
%=======
         
          %lấy giá trị từ bên ngoài UI sau đó đối với fx của tab tìm nghiệm
          %thì đẩy về dạng function với symbols là x
%>>>>>>> main
           fxi = app.inputEquation.Value;
           fx = str2func(['@(x)', fxi]);
           
           saiso = app.inputAllowableError.Value;
           a = app.inputSeparationDistance_a.Value;
           b = app.inputSeparationDistance_b.Value;
%<<<<<<< ThanhTien91
%            syms x;
%            fp = matlabFunction(diff(fx, x));
         
         
           
           switch app.choseOption.Value
               case 'Chia đôi' 
               [loopTime, no] = bisectionMethod(app, fx, a, b, saiso);              
               app.resultLoop.Value = loopTime;
               app.resultMethod.Value = no;
               x = a: 0.1 : b;
               y = fx(x);
         
               plot(app.UIAxes,x,y);
               grid(app.UIAxes, 'on');
               xlim(app.UIAxes,[a,b]);
               ylim(app.UIAxes,[a,b]);
               
               case 'Lặp'
%=======

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
%>>>>>>> main
               [x1, n, x_plot, y] = repeatMethod(app, fx, a,b,saiso);
            
               app.resultLoop.Value= double(n);
               app.resultMethod.Value = double(x1);
%<<<<<<< ThanhTien91
               

               
               plot(app.UIAxes, x_plot, y);
               grid(app.UIAxes, 'on');
               xlim(app.UIAxes,[a,b]);
               ylim(app.UIAxes,[a,b]);
               
               case 'Newton(Tiếp tuyến)'
%======
               %Vẽ đồ thị
               grid(app.UIAxes, 'on');
     
               plot(app.UIAxes, x_plot, y, 'black');
            
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
              
               
               case 'Newton(Tiếp tuyến)'
               %đẩy các giá trị output ở hàm tính toán nghiệm chia đôi sau
               %đó đưa nó vào các value text
%>>>>>>> main
               [x1, n,x_plot, y] = newtonMethod(app, fx, a, b, saiso);
               
               app.resultLoop.Value = double(n);
               app.resultMethod.Value = double(x1);
               
%<<<<<<< ThanhTien91
               plot(app.UIAxes, x_plot, y);
               grid(app.UIAxes, 'on');
               xlim(app.UIAxes,[a,b]);
               ylim(app.UIAxes,[a,b]);
               
              
           end
                
           
          
           
           
           
           
        end

        % Value changed function: resultLoop
        function resultLoopValueChanged(app, event)
                  
        end
%
        % Callback function: Button, PhngphpDropDown
        function ButtonPushed(app, event)
          
                                      % Lấy giá trị từ các trường EditFields
                        x = app.EditFieldX.Value;
                        y = app.EditFieldY.Value;
                        
                        % Vẽ dữ liệu gốc
                        app.plotRegression(x, y);  % Gọi hàm plotRegression để vẽ dữ liệu
                        
                        % Lấy phương pháp hồi quy từ DropDown
                        selectedMethod = app.PhngphpDropDown.Value;
                        
                        % Thực hiện hồi quy theo phương pháp đã chọn
                        switch selectedMethod
                            case 'Hàm mũ'
                                [y_exp, A, B] = app.plotHammu(x, y);  % Lấy kết quả hồi quy hàm mũ
                                app.EditFieldKetquachuongtrinh.Value = sprintf('A: %.3f, B: %.3f', A, B);
                            case 'Tiếp tuyến'
                                [y_tuyentinh, p] = app.plotTieptuyen(x, y);  % Lấy kết quả hồi quy tuyến tính
                                app.EditFieldKetquachuongtrinh.Value = sprintf('Hệ số góc: %.3f, Intercept: %.3f', p(1), p(2));
                            case 'Logarit'
                                [y_log, A, B] = app.plotLogarit(x, y);  % Lấy kết quả hồi quy logarit
                                app.EditFieldKetquachuongtrinh.Value = sprintf('A: %.3f, B: %.3f', A, B);
                            otherwise
                                disp('Phương pháp không hợp lệ');
                        end
                    end
                    
                    % Hàm vẽ dữ liệu gốc và đường hồi quy
                    function plotRegression(app, x, y)
                        plot(app.UIAxes2, x, y, 'bo', 'MarkerFaceColor', 'b');  % Vẽ các điểm dữ liệu
                        hold(app.UIAxes2, 'on');
                        grid(app.UIAxes2, 'on');
                        xlabel(app.UIAxes2, 'X');
                        ylabel(app.UIAxes2, 'Y');
                        title(app.UIAxes2, 'Dữ liệu gốc và Hồi quy');
                        hold(app.UIAxes2, 'off');
                    end
                    
                    % Hồi quy hàm mũ (Exponential Regression)
                    function [y_exp, A, B] = plotHammu(app, x, y)
                        log_y = log(y);  % Chuyển đổi y sang logarit
                        
                        % Hồi quy tuyến tính trên (x, log(y))
                        p = polyfit(x, log_y, 1);
                        
                        % Tính toán các tham số A và B
                        A = exp(p(2));  % A = exp(intercept)
                        B = p(1);       % B = slope
                        
                        % Tạo giá trị y_exp cho đường hồi quy
                        x_range = linspace(min(x), max(x), 100);
                        y_exp = A * exp(B * x_range);  % Phương trình hồi quy hàm mũ
                        
                        % Vẽ đường hồi quy hàm mũ
                        plot(app.UIAxes2, x_range, y_exp, 'r-', 'LineWidth', 2, 'DisplayName', 'Hồi quy hàm mũ');
                        legend(app.UIAxes2, 'show');
                    end
                    
                    % Hồi quy tuyến tính (Linear Regression)
                    function [y_tuyentinh, p] = plotTieptuyen(app, x, y)
                        p = polyfit(x, y, 1);  % Hồi quy tuyến tính
                        
                        % Tính giá trị y theo phương trình hồi quy
                        y_tuyentinh = polyval(p, x);  % Đường hồi quy tuyến tính
                        
                        % Vẽ đường hồi quy tuyến tính
                        plot(app.UIAxes2, x, y_tuyentinh, 'g-', 'LineWidth', 2, 'DisplayName', 'Hồi quy tuyến tính');
                        legend(app.UIAxes2, 'show');
                    end
                    
                    % Hồi quy logarit (Logarithmic Regression)
                    function [y_log, A, B] = plotLogarit(app, x, y)
                        log_x = log(x);  % Chuyển đổi x sang logarit
                        
                        % Hồi quy tuyến tính trên (log(x), y)
                        p = polyfit(log_x, y, 1);
                        
                        % Tính toán các tham số A và B
                        A = p(2);  % Hằng số
                        B = p(1);  % Hệ số góc
                        
                        % Tạo giá trị y_log cho đường hồi quy
                        x_range = linspace(min(x), max(x), 100);
                        y_log = A + B * log(x_range);  % Phương trình hồi quy logarit
                        
                        % Vẽ đường hồi quy logarit
                        plot(app.UIAxes2, x_range, y_log, 'm--', 'LineWidth', 2, 'DisplayName', 'Hồi quy logarit');
                        legend(app.UIAxes2, 'show');

%=======
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

        % Button pushed function: KetQua
        function KetQuaButtonPushed(app, event)
            % Lấy dữ liệu đầu vào từ GUI
            x_input = char(app.NhapDuLieux.Value); % Chuyển thành chuỗi ký tự
            y_input = char(app.NhapDuLieuy.Value); % Chuyển thành chuỗi ký tự
            x = str2double(strsplit(x_input, {',', ' '})); % Tách và chuyển thành mảng số
            y = str2double(strsplit(y_input, {',', ' '})); % Tách và chuyển thành mảng số
            
            % Kiểm tra độ dài vector
            if length(x) ~= length(y)
                uialert(app.UIFigure, 'Vector x và y phải có cùng độ dài!', 'Lỗi'); % Bảng thông báo lỗi
                return;
            end
            
            % Các giá trị đầu vào khác
            Ss = app.ChonSaiSo.Value; % Sai số yêu cầu (O(h) hoặc O(h^2))
            h = app.NhapBuoch.Value; % Giá trị bước h
            Pp = app.PhuongPhapDaoHam.Value; % Phương pháp đạo hàm (tiến, lùi, trung tâm)
            gtdh = app.GiaTriCanTinhDaoHam.Value; % Giá trị cần tính đạo hàm
            input_ham = app.NhapHamSo.Value; % Hàm số được nhập
            
            % Chuyển chuỗi thành hàm số
            try
                daoham = str2func(['@(x)', input_ham]); % Hàm số
            catch
                uialert(app.UIFigure, 'Hàm số không hợp lệ!', 'Lỗi'); % Bảng thông báo lỗi
                return;
            end
            
            % Tính đạo hàm chính xác 
            try
                dao_ham_xac_dinh = matlabFunction(diff(sym(daoham))); % Đạo hàm chính xác
                gia_tri_dao_ham = dao_ham_xac_dinh(gtdh); % Giá trị đạo hàm tại gtdh
                disp('Đạo hàm chính xác:');
                uialert(app.UIFigure, sprintf('Đạo hàm chính xác: %s', mat2str(gia_tri_dao_ham)), 'Kết quả', 'Icon', 'success');
            catch
                uialert(app.UIFigure, 'Không thể tính đạo hàm chính xác từ hàm số.', 'Lỗi'); % Hiển thị lỗi 
            end
            
            % Nếu h <= 0, tự động tính từ dữ liệu x
            if h <= 0
                h_calc = x(2) - x(1); % khoảng cách giữa các điểm
                h = h_calc;
            end
            
            % Tạo vector kết quả đạo hàm
            n = length(x);
            daoham = NaN(1, n); % Tạo vector kết quả với giá trị NaN ban đầu
            
            % Tính đạo hàm gần đúng dựa trên Ss và Pp
            switch Ss
                case 'O(h)'
                    switch Pp
                        case 'tiến'
                            for i = 1:n-1
                                daoham(i) = (y(i+1) - y(i)) / h;
                            end
                        case 'lùi'
                            for i = 2:n
                                daoham(i) = (y(i) - y(i-1)) / h;
                            end
                        case 'trung tâm'
                            for i = 2:n-1
                                daoham(i) = (y(i+1) - y(i-1)) / (2 * h);
                            end
                        otherwise
                            uialert(app.UIFigure, 'Phương pháp không hợp lệ!', 'Lỗi');% bảng thông báo lỗi
                            return;
                    end
            
                case 'O(h^2)'
                    switch Pp
                        case 'tiến'
                            for i = 1:n-2
                                daoham(i) = (-3 * y(i) + 4 * y(i+1) - y(i+2)) / (2 * h);
                            end
                        case 'lùi'
                            for i = 3:n
                                daoham(i) = (3 * y(i) - 4 * y(i-1) + y(i-2)) / (2 * h);
                            end
                        case 'trung tâm'
                            for i = 2:n-1
                                daoham(i) = (y(i+1) - y(i-1)) / (2 * h);
                            end
                        otherwise
                            uialert(app.UIFigure, 'Phương pháp không hợp lệ!', 'Lỗi');
                            return;
                    end
            
                otherwise
                    uialert(app.UIFigure, 'Sai số không hợp lệ!', 'Lỗi'); %bảng báo lỗi
                    return;
            end
            
            % Hiển thị kết quả
            disp('Đạo hàm gần đúng:');
            uialert(app.UIFigure, sprintf('Đạo hàm gần đúng: %s', mat2str(daoham)), 'Kết quả', 'Icon', 'success');
        end

        % Button pushed function: KtquButton
        function KtquButtonPushed(app, event)
              %///////////// khai báo 
        result=0;
         
 %///////////////input 

             % Xử lý vector X
             x1 = app.NhpdliuxEditField.Value;
            X= str2double(split(x1, ',')); % Chuyển chuỗi thành mảng số
            
             % Xử lý vector Y
             y2 = app.NhpdliuyEditField.Value;
             Y= str2double(split(y2, ',')); % Chuyển chuỗi thành mảng số
             f = app.NhphmsEditField.Value;
             if isempty(f) % Nếu ô hàm để trống
                fx = []; % Không sử dụng hàm fx
                 else
                     if ~contains(f, 'x') % Kiểm tra xem chuỗi hàm có chứa 'x' hay không
                         uialert(app.UIFigure, 'Hàm số không hợp lệ!', 'Lỗi'); % Bảng thông báo lỗi
                     end

                     fx= str2func(['@(x)', f]); % Hàm số
             end
     

        
            a = app.EditField2.Value;
            b = app.EditField2_2.Value;
            N = app.NhpNEditField.Value;
          
   
%///////////////pp hình thang
                %///////ham
       function result = TichPhanThangHam(fx, a, b, N)
            h = (b - a) / N; % Độ dài mỗi đoạn con
            x = a:h:b; % Chia đoạn [a, b] thành N đoạn
            result = fx(x(1)) / 2; % Giá trị đầu tiên của hình thang
            for i = 2:length(x) - 1
                result = result + fx(x(i)); % Cộng các giá trị ở giữa
            end
            result = result + fx(x(end)) / 2; % Giá trị cuối cùng của hình thang
            result =result* h; % Nhân với độ dài
       end 
               %////////vector
       function result = TichPhanThangVector(a, b, N,y)
           
             result = (b - a) * (y(1) + y(end) + 2 * sum(y(2:end-1))) / (2 * N);
       end

%/////////////// pp simpson 1/3
             %///////ham
       function result = TichPhanSimpson13_Ham(fx, a, b, N)
    
           if mod(N, 2) ~= 0
                uialert(app.UIFigure, 'N phải là số chẵn!', 'Cảnh báo','Icon','warning'); % Hiển thị thông báo lỗi
                return;
           end
            h = (b - a) / N; % Độ rộng mỗi đoạn
            xValues = a:h:b;
             fValues = arrayfun(fx, xValues);
            
             result = fValues(1) + fValues(end);
             result = result + 4 * sum(fValues(2:2:end-1));
             result = result + 2 * sum(fValues(3:2:end-2));
             result = (h / 3) * result;

       end
        
       %////////vector
       function result = TichPhanSimpson13_Vector(a, b, N,y)
             h = (b - a) / N;
             result = y(1) + y(end);
             result = result + 4 * sum(y(2:2:end-1));
             result = result + 2 * sum(y(3:2:end-2));
             result = (h / 3) * result;
       end

 %///////////// pp simpson 3/8
         %///////ham
       function  result= TichPhanSimpson38Ham(fx, a, b, N)
           if mod(N, 3) ~= 0
                uialert(app.UIFigure, 'N phải là bội số của 3!', 'Cảnh báo','Icon','warning'); % Hiển thị thông báo lỗi
                return;
           end
          
            h = (b - a) / N; % Độ rộng mỗi đoạn
            xValues = a:h:b;
             fValues = arrayfun(fx, xValues);
             result = fValues(1) + fValues(end);
             result = result + 3 * sum(fValues(2:3:end-1));
             result = result + 3 * sum(fValues(3:3:end-2));
             result = result + 2 * sum(fValues(4:3:end-3));
             result = (3 * h / 8) * result;

       end
          %////////vector
       function result = TichPhanSimpson38_Vector(a, b, N, y)
         h = (b - a) / N;
         result = y(1) + y(end);
         result = result + 3 * sum(y(2:3:end-1));
         result = result + 3 * sum(y(3:3:end-2));
         result = result + 2 * sum(y(4:3:end-3));
         result = (3 * h / 8) * result;
        end


  %/////// drop down select
Val = app.ChnPhngPhpDropDown.Value;

if strcmp(Val, 'Hình Thang')
    if isempty(fx)
        result = TichPhanThangVector(a, b, N, X, Y);
    else
        result = TichPhanThangHam(fx, a, b, N);
    end
elseif strcmp(Val, 'Simpson 1/3')
    if isempty(fx)
        result = TichPhanSimpson13_Vector(a, b, N, X, Y);
    else
        result = TichPhanSimpson13_Ham(fx, a, b, N);
    end
elseif strcmp(Val, 'Simpson 3/8')
    if isempty(fx)
        result = TichPhanSimpson38_Vector(a, b, N, X, Y);
    else
        result = TichPhanSimpson38Ham(fx, a, b, N);
    end
else
    error('Unknown method specified.');
end

     uialert(app.UIFigure, sprintf('Tích phân gần đúng: %s\n', mat2str(result)), 'Kết quả', 'Icon', 'success');    
    
%>>>>>>> main
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

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

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tim_Nghiem_Tab);
            title(app.UIAxes, 'Đồ thị ')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [339 157 498 337];

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
%<<<<<<< ThanhTien91

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
            app.resultLoop.ValueChangedFcn = createCallbackFcn(app, @resultLoopValueChanged, true);
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
            app.UIAxes.Position = [339 157 442 302];
%=======

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
%>>>>>>> main

            % Create Noi_Suy_Tab
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

            % Create UIAxesInterpolation
            app.UIAxesInterpolation = uiaxes(app.Noi_Suy_Tab);
            title(app.UIAxesInterpolation, 'Đồ thị')
            xlabel(app.UIAxesInterpolation, 'X')
            ylabel(app.UIAxesInterpolation, 'Y')
            zlabel(app.UIAxesInterpolation, 'Z')
            app.UIAxesInterpolation.Position = [322 152 515 342];

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

            % Create Hoi_Quy_Tab
            app.Hoi_Quy_Tab = uitab(app.TabGroup);
            app.Hoi_Quy_Tab.Title = 'Hồi Quy';

            % Create Button
            app.Button = uibutton(app.Hoi_Quy_Tab, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Position = [384 26 100 22];

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpdliuxEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel.Position = [41 415 83 22];
            app.NhpdliuxEditFieldLabel.Text = 'Nhập dữ liệu x';

            % Create EditFieldX
            app.EditFieldX = uieditfield(app.Hoi_Quy_Tab, 'numeric');
            app.EditFieldX.Position = [139 415 100 22];

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.Position = [41 355 83 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nhập dữ liệu y';

            % Create EditFieldY
            app.EditFieldY = uieditfield(app.Hoi_Quy_Tab, 'numeric');
            app.EditFieldY.Position = [139 355 100 22];

            % Create NhpgitrcndonEditFieldLabel
            app.NhpgitrcndonEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpgitrcndonEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcndonEditFieldLabel.Position = [41 174 138 22];
            app.NhpgitrcndonEditFieldLabel.Text = 'Nhập giá trị cần dự đoán';

            % Create EditFieldNhapgiatridudoan
            app.EditFieldNhapgiatridudoan = uieditfield(app.Hoi_Quy_Tab, 'numeric');
            app.EditFieldNhapgiatridudoan.Position = [194 174 100 22];

            % Create KtqudonEditFieldLabel
            app.KtqudonEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.KtqudonEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqudonEditFieldLabel.Position = [41 109 95 22];
            app.KtqudonEditFieldLabel.Text = 'Kết quả dự đoán';

            % Create EditFieldKetquadudoan
            app.EditFieldKetquadudoan = uieditfield(app.Hoi_Quy_Tab, 'numeric');
            app.EditFieldKetquadudoan.Position = [151 109 100 22];

            % Create KtquchngtrnhhiquyEditFieldLabel
            app.KtquchngtrnhhiquyEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.KtquchngtrnhhiquyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquchngtrnhhiquyEditFieldLabel.Position = [41 243 161 22];
            app.KtquchngtrnhhiquyEditFieldLabel.Text = 'Kết quả chương trình hồi quy';

            % Create EditFieldKetquachuongtrinh
            app.EditFieldKetquachuongtrinh = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldKetquachuongtrinh.Position = [217 243 100 22];

            % Create PhngphpDropDownLabel
            app.PhngphpDropDownLabel = uilabel(app.Hoi_Quy_Tab);
            app.PhngphpDropDownLabel.HorizontalAlignment = 'right';
            app.PhngphpDropDownLabel.Position = [41 297 79 22];
            app.PhngphpDropDownLabel.Text = 'Phương pháp';

            % Create PhngphpDropDown
            app.PhngphpDropDown = uidropdown(app.Hoi_Quy_Tab);
            app.PhngphpDropDown.Items = {'Tiếp tuyến', 'Hàm mũ', 'Logarit', 'Option 4'};
            app.PhngphpDropDown.ValueChangedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.PhngphpDropDown.Position = [135 297 100 22];
            app.PhngphpDropDown.Value = 'Hàm mũ';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.Hoi_Quy_Tab);
            title(app.UIAxes2, 'Đồ thị mô hình hồi quy')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.PlotBoxAspectRatio = [1.66095890410959 1 1];
            app.UIAxes2.Position = [363 174 436 289];

            % Create Dao_Ham_Tab
            app.Dao_Ham_Tab = uitab(app.TabGroup);
            app.Dao_Ham_Tab.Title = 'Đạo Hàm';

            % Create KetQua
            app.KetQua = uibutton(app.Dao_Ham_Tab, 'push');
            app.KetQua.ButtonPushedFcn = createCallbackFcn(app, @KetQuaButtonPushed, true);
            app.KetQua.Position = [364 77 143 62];
            app.KetQua.Text = 'Kết quả';

            % Create NhpbchEditFieldLabel
            app.NhpbchEditFieldLabel = uilabel(app.Dao_Ham_Tab);
            app.NhpbchEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpbchEditFieldLabel.Position = [545 330 76 22];
            app.NhpbchEditFieldLabel.Text = 'Nhập bước h';

            % Create NhapBuoch
            app.NhapBuoch = uieditfield(app.Dao_Ham_Tab, 'numeric');
            app.NhapBuoch.Position = [636 330 136 22];

            % Create NhpgitrcntnhohmEditFieldLabel
            app.NhpgitrcntnhohmEditFieldLabel = uilabel(app.Dao_Ham_Tab);
            app.NhpgitrcntnhohmEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpgitrcntnhohmEditFieldLabel.Position = [354 290 163 22];
            app.NhpgitrcntnhohmEditFieldLabel.Text = 'Nhập giá trị cần tính đạo hàm';

            % Create GiaTriCanTinhDaoHam
            app.GiaTriCanTinhDaoHam = uieditfield(app.Dao_Ham_Tab, 'numeric');
            app.GiaTriCanTinhDaoHam.Position = [388 256 100 22];

            % Create NhphmsEditFieldLabel
            app.NhphmsEditFieldLabel = uilabel(app.Dao_Ham_Tab);
            app.NhphmsEditFieldLabel.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel.Position = [536 393 87 22];
            app.NhphmsEditFieldLabel.Text = 'Nhập hàm số';

            % Create NhapHamSo
            app.NhapHamSo = uieditfield(app.Dao_Ham_Tab, 'text');
            app.NhapHamSo.Position = [638 393 134 22];

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.Dao_Ham_Tab);
            app.NhpdliuxEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel.Position = [125 393 87 22];
            app.NhpdliuxEditFieldLabel.Text = 'Nhập dữ liệu x ';

            % Create NhapDuLieux
            app.NhapDuLieux = uieditfield(app.Dao_Ham_Tab, 'text');
            app.NhapDuLieux.Position = [227 393 100 22];

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.Dao_Ham_Tab);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.Position = [129 330 83 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nhập dữ liệu y';

            % Create NhapDuLieuy
            app.NhapDuLieuy = uieditfield(app.Dao_Ham_Tab, 'text');
            app.NhapDuLieuy.Position = [227 330 100 22];

            % Create ChnsaisOhhocOh2DropDownLabel
            app.ChnsaisOhhocOh2DropDownLabel = uilabel(app.Dao_Ham_Tab);
            app.ChnsaisOhhocOh2DropDownLabel.HorizontalAlignment = 'right';
            app.ChnsaisOhhocOh2DropDownLabel.Position = [92 189 165 22];
            app.ChnsaisOhhocOh2DropDownLabel.Text = 'Chọn sai số O(h) hoặc O(h^2)';

            % Create ChonSaiSo
            app.ChonSaiSo = uidropdown(app.Dao_Ham_Tab);
            app.ChonSaiSo.Items = {'Chọn', 'O(h)', 'O(h^2)'};
            app.ChonSaiSo.Position = [272 189 100 22];
            app.ChonSaiSo.Value = 'Chọn';

            % Create PhngphpohmDropDownLabel
            app.PhngphpohmDropDownLabel = uilabel(app.Dao_Ham_Tab);
            app.PhngphpohmDropDownLabel.HorizontalAlignment = 'right';
            app.PhngphpohmDropDownLabel.Position = [528 189 129 22];
            app.PhngphpohmDropDownLabel.Text = 'Phương pháp đạo hàm';

            % Create PhuongPhapDaoHam
            app.PhuongPhapDaoHam = uidropdown(app.Dao_Ham_Tab);
            app.PhuongPhapDaoHam.Items = {'Chọn', 'tiến', 'lùi', 'trung tâm'};
            app.PhuongPhapDaoHam.Position = [672 189 100 22];
            app.PhuongPhapDaoHam.Value = 'Chọn';

            % Create Tich_Phan_Tab
            app.Tich_Phan_Tab = uitab(app.TabGroup);
            app.Tich_Phan_Tab.Title = 'Tích Phân';

            % Create HocLabel
            app.HocLabel = uilabel(app.Tich_Phan_Tab);
            app.HocLabel.FontName = 'Times New Roman';
            app.HocLabel.FontSize = 14;
            app.HocLabel.FontWeight = 'bold';
            app.HocLabel.Position = [126 278 36 22];
            app.HocLabel.Text = 'Hoặc';

            % Create NhpcnLabel
            app.NhpcnLabel = uilabel(app.Tich_Phan_Tab);
            app.NhpcnLabel.FontName = 'Times New Roman';
            app.NhpcnLabel.FontSize = 14;
            app.NhpcnLabel.FontWeight = 'bold';
            app.NhpcnLabel.Position = [507 272 74 42];
            app.NhpcnLabel.Text = 'Nhập cận ';

            % Create Label
            app.Label = uilabel(app.Tich_Phan_Tab);
            app.Label.FontSize = 20;
            app.Label.FontWeight = 'bold';
            app.Label.Position = [601 272 35 43];
            app.Label.Text = '[';

            % Create Label_2
            app.Label_2 = uilabel(app.Tich_Phan_Tab);
            app.Label_2.FontSize = 20;
            app.Label_2.FontWeight = 'bold';
            app.Label_2.Position = [700 272 35 43];
            app.Label_2.Text = ']';

            % Create Label_3
            app.Label_3 = uilabel(app.Tich_Phan_Tab);
            app.Label_3.FontSize = 22;
            app.Label_3.FontWeight = 'bold';
            app.Label_3.Position = [652 279 17 28];
            app.Label_3.Text = ';';

            % Create KtquButton
            app.KtquButton = uibutton(app.Tich_Phan_Tab, 'push');
            app.KtquButton.ButtonPushedFcn = createCallbackFcn(app, @KtquButtonPushed, true);
            app.KtquButton.FontName = 'Times New Roman';
            app.KtquButton.FontSize = 14;
            app.KtquButton.FontWeight = 'bold';
            app.KtquButton.Position = [351 101 207 42];
            app.KtquButton.Text = 'Kết quả';

            % Create EditField2
            app.EditField2 = uieditfield(app.Tich_Phan_Tab, 'numeric');
            app.EditField2.HorizontalAlignment = 'center';
            app.EditField2.Position = [612 280 29 30];

            % Create EditField2_2
            app.EditField2_2 = uieditfield(app.Tich_Phan_Tab, 'numeric');
            app.EditField2_2.HorizontalAlignment = 'center';
            app.EditField2_2.Position = [668 280 29 30];

            % Create NhpdliuxEditFieldLabel_2
            app.NhpdliuxEditFieldLabel_2 = uilabel(app.Tich_Phan_Tab);
            app.NhpdliuxEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel_2.FontName = 'Times New Roman';
            app.NhpdliuxEditFieldLabel_2.FontSize = 14;
            app.NhpdliuxEditFieldLabel_2.FontWeight = 'bold';
            app.NhpdliuxEditFieldLabel_2.Position = [86 408 94 22];
            app.NhpdliuxEditFieldLabel_2.Text = 'Nhập dữ liệu x';

            % Create NhpdliuxEditField
            app.NhpdliuxEditField = uieditfield(app.Tich_Phan_Tab, 'text');
            app.NhpdliuxEditField.HorizontalAlignment = 'center';
            app.NhpdliuxEditField.Position = [195 408 100 22];

            % Create NhpdliuyEditFieldLabel_2
            app.NhpdliuyEditFieldLabel_2 = uilabel(app.Tich_Phan_Tab);
            app.NhpdliuyEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel_2.FontName = 'Times New Roman';
            app.NhpdliuyEditFieldLabel_2.FontSize = 14;
            app.NhpdliuyEditFieldLabel_2.FontWeight = 'bold';
            app.NhpdliuyEditFieldLabel_2.Position = [86 339 94 22];
            app.NhpdliuyEditFieldLabel_2.Text = 'Nhập dữ liệu y';

            % Create NhpdliuyEditField
            app.NhpdliuyEditField = uieditfield(app.Tich_Phan_Tab, 'text');
            app.NhpdliuyEditField.HorizontalAlignment = 'center';
            app.NhpdliuyEditField.Position = [195 339 100 22];

            % Create NhpNEditFieldLabel
            app.NhpNEditFieldLabel = uilabel(app.Tich_Phan_Tab);
            app.NhpNEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpNEditFieldLabel.FontName = 'Times New Roman';
            app.NhpNEditFieldLabel.FontSize = 14;
            app.NhpNEditFieldLabel.FontWeight = 'bold';
            app.NhpNEditFieldLabel.Position = [507 204 51 22];
            app.NhpNEditFieldLabel.Text = 'Nhập N';

            % Create NhpNEditField
            app.NhpNEditField = uieditfield(app.Tich_Phan_Tab, 'numeric');
            app.NhpNEditField.HorizontalAlignment = 'center';
            app.NhpNEditField.Position = [573 195 142 40];

            % Create NhphmsEditFieldLabel_2
            app.NhphmsEditFieldLabel_2 = uilabel(app.Tich_Phan_Tab);
            app.NhphmsEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel_2.FontName = 'Times New Roman';
            app.NhphmsEditFieldLabel_2.FontSize = 14;
            app.NhphmsEditFieldLabel_2.FontWeight = 'bold';
            app.NhphmsEditFieldLabel_2.Position = [86 204 84 22];
            app.NhphmsEditFieldLabel_2.Text = 'Nhập hàm số';

            % Create NhphmsEditField
            app.NhphmsEditField = uieditfield(app.Tich_Phan_Tab, 'text');
            app.NhphmsEditField.HorizontalAlignment = 'center';
            app.NhphmsEditField.Position = [179 199 118 36];

            % Create ChnPhngPhpDropDownLabel
            app.ChnPhngPhpDropDownLabel = uilabel(app.Tich_Phan_Tab);
            app.ChnPhngPhpDropDownLabel.HorizontalAlignment = 'center';
            app.ChnPhngPhpDropDownLabel.FontName = 'Times New Roman';
            app.ChnPhngPhpDropDownLabel.FontSize = 14;
            app.ChnPhngPhpDropDownLabel.FontWeight = 'bold';
            app.ChnPhngPhpDropDownLabel.Position = [502 408 123 22];
            app.ChnPhngPhpDropDownLabel.Text = 'Chọn Phương Pháp';

            % Create ChnPhngPhpDropDown
            app.ChnPhngPhpDropDown = uidropdown(app.Tich_Phan_Tab);
            app.ChnPhngPhpDropDown.Items = {'Hình Thang', 'Simpson 1/3', 'Simpson 3/8'};
            app.ChnPhngPhpDropDown.Position = [635 408 100 22];
            app.ChnPhngPhpDropDown.Value = 'Simpson 1/3';

            % Create Introduce_Tab
            app.Introduce_Tab = uitab(app.TabGroup);
            app.Introduce_Tab.Title = 'Giới Thiệu Nhóm';

            % Create AVy
            app.AVy = uiimage(app.Introduce_Tab);
            app.AVy.Position = [246 2 234 213];
            app.AVy.ImageSource = fullfile(pathToMLAPP, 'NTV.png');

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