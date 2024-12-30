classdef baiTapLon_PPT_exported < matlab.apps.AppBase
%
    % Properties that correspond to app components
    properties (Access = public)
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
        KtqudonEditFieldLabel       matlab.ui.control.Label
        EditFieldKetquadudoan       matlab.ui.control.NumericEditField
        KtquchngtrnhhiquyEditFieldLabel  matlab.ui.control.Label
        EditFieldKetquachuongtrinh  matlab.ui.control.EditField
        PhngphpDropDownLabel        matlab.ui.control.Label
        PhngphpDropDown             matlab.ui.control.DropDown
        NhpdliuxEditFieldLabel      matlab.ui.control.Label
        EditFieldX                  matlab.ui.control.EditField
        NhpdliuyEditFieldLabel      matlab.ui.control.Label
        EditFieldY                  matlab.ui.control.EditField
        NhpgitrcndonEditFieldLabel  matlab.ui.control.Label
        EditFieldNhapgiatridudoan   matlab.ui.control.EditField
        UIAxes2                     matlab.ui.control.UIAxes
        Dao_Ham_Tab                 matlab.ui.container.Tab
        Tich_Phan_Tab               matlab.ui.container.Tab
        Introduce_Tab               matlab.ui.container.Tab
        EditFieldLabel              matlab.ui.control.Label
        Test_Field                  matlab.ui.control.EditField
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
                   error('Khoảng phân ly trên không có nghiệm');
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
    end
    
    
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: caculateEvent
        function caculateEventButtonPushed(app, event)
           fxi = app.inputEquation.Value;
           fx = str2func(['@(x)', fxi]);
           
           saiso = app.inputAllowableError.Value;
           a = app.inputSeparationDistance_a.Value;
           b = app.inputSeparationDistance_b.Value;
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
               [x1, n, x_plot, y] = repeatMethod(app, fx, a,b,saiso);
            
               app.resultLoop.Value= double(n);
               app.resultMethod.Value = double(x1);
               

               
               plot(app.UIAxes, x_plot, y);
               grid(app.UIAxes, 'on');
               xlim(app.UIAxes,[a,b]);
               ylim(app.UIAxes,[a,b]);
               
               case 'Newton(Tiếp tuyến)'
               [x1, n,x_plot, y] = newtonMethod(app, fx, a, b, saiso);
               
               app.resultLoop.Value = double(n);
               app.resultMethod.Value = double(x1);
               
               plot(app.UIAxes, x_plot, y);
               grid(app.UIAxes, 'on');
               xlim(app.UIAxes,[a,b]);
               ylim(app.UIAxes,[a,b]);
               
              
           end
                
           
          
           
           
           
           
        end

        % Value changed function: resultLoop
        function resultLoopValueChanged(app, event)
                  
        end

        % Callback function: Button, PhngphpDropDown
        function ButtonPushed(app, event)
                   % Lấy giá trị từ các trường EditFields
                x = str2num(app.EditFieldX.Value);  % Chuyển chuỗi thành mảng số
                y = str2num(app.EditFieldY.Value);  % Chuyển chuỗi thành mảng số
                
                % Kiểm tra dữ liệu x và y hợp lệ
                if isempty(x) || isempty(y) || length(x) ~= length(y)
                    uialert(app.UIFigure, 'Dữ liệu x và y không hợp lệ hoặc không cùng số lượng phần tử.', 'Lỗi');
                    return;
                end
                
                % Kiểm tra dữ liệu xi hợp lệ
                xi = str2double(app.EditFieldNhapgiatridudoan.Value);
                if isnan(xi)
                    uialert(app.UIFigure, 'Giá trị xi không hợp lệ.', 'Lỗi');
                    return;
                end
                
                % Lấy phương pháp hồi quy từ DropDown
                selectedMethod = app.PhngphpDropDown.Value;
                
                % Thực hiện hồi quy theo phương pháp đã chọn
                switch selectedMethod
                    case 'Hàm mũ'
                        [A, B] = plotHammu(x, y);  % Lấy kết quả hồi quy hàm mũ
                        y_fit = A * exp(B * x);
                        y_dudoan = A * exp(B * xi);
                        phuongtrinhhoiquy = sprintf('A: %.3f, B: %.3f', A, B);
                
                    case 'Tiếp tuyến'
                        [A, B] = plotTieptuyen(x, y);  % Lấy kết quả hồi quy tuyến tính
                        y_fit = A + B * x;
                        y_dudoan = A + B * xi;
                        phuongtrinhhoiquy = sprintf('A: %.3f, B: %.3f', A, B);
                
                    case 'Logarit'
                        [A, B] = plotLogarit(x, y);  % Lấy kết quả hồi quy logarit
                        y_fit = A + B * log(x);
                        y_dudoan = A + B * log(xi);
                        phuongtrinhhoiquy = sprintf('A: %.3f, B: %.3f', A, B);
                
                    otherwise
                        uialert(app.UIFigure, 'Phương pháp hồi quy không hợp lệ!', 'Lỗi');
                        return;
                end
                
                % Kết quả chương trình hồi quy
                app.EditFieldKetquachuongtrinh.Value = phuongtrinhhoiquy;
                
                % Hiển thị kết quả dự đoán
                app.EditFieldKetquadudoan.Value = y_dudoan;
                
                % Vẽ đồ thị
                plot(app.UIAxes2, x, y, 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'blue', 'DisplayName', 'Dữ liệu gốc');
                hold(app.UIAxes2, 'on');
                plot(app.UIAxes2, x, y_fit, 'r-', 'LineWidth', 1.5, 'DisplayName', 'Đường hồi quy');
                legend(app.UIAxes2, 'show');
                xlabel(app.UIAxes2, 'x');
                ylabel(app.UIAxes2, 'y');
                title(app.UIAxes2, 'Hồi quy dữ liệu');
                hold(app.UIAxes2, 'off');
                
                % Hồi quy hàm mũ (Exponential Regression)
                function [A, B] = plotHammu(x, y)
                    log_y = log(y);  % Chuyển đổi y sang logarit
                
                    % Hồi quy tuyến tính trên (x, log(y))
                    p = polyfit(x, log_y, 1);
                
                    % Tính toán các tham số A và B
                    A = exp(p(2));  % A = exp(intercept)
                    B = p(1);       % B = slope
                end
                
                % Hồi quy tuyến tính
                function [A, B] = plotTieptuyen(x, y)
                    % Hồi quy tuyến tính: y = A + Bx
                    n = length(x);
                    sumX = sum(x);
                    sumY = sum(y);
                    sumXY = sum(x .* y);
                    sumX2 = sum(x .^ 2);
                
                    % Tính hệ số B và A
                    B = (n * sumXY - sumX * sumY) / (n * sumX2 - sumX^2);
                    A = (sumY - B * sumX) / n;
                end
                
                % Hồi quy logarit (Logarithmic Regression)
                function [A, B] = plotLogarit(x, y)
                    % Hồi quy logarit: y = A + B * log(x)
                    logX = log(x);
                
                    % Tính toán các giá trị trung gian
                    n = length(x);
                    sumLogX = sum(logX);
                    sumY = sum(y);
                    sumLogX2 = sum(logX.^2);
                    sumLogXY = sum(logX .* y);
                
                    % Tính B và A
                    B = (n * sumLogXY - sumLogX * sumY) / (n * sumLogX2 - sumLogX^2);
                    A = (sumY - B * sumLogX) / n;
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
            app.UIAxes.PlotBoxAspectRatio = [1.59223300970874 1 1];
            app.UIAxes.Position = [339 157 442 302];

            % Create Noi_Suy_Tab
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

            % Create Hoi_Quy_Tab
            app.Hoi_Quy_Tab = uitab(app.TabGroup);
            app.Hoi_Quy_Tab.Title = 'Hồi Quy';

            % Create Button
            app.Button = uibutton(app.Hoi_Quy_Tab, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Position = [352 25 100 22];

            % Create KtqudonEditFieldLabel
            app.KtqudonEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.KtqudonEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqudonEditFieldLabel.Position = [112 88 95 22];
            app.KtqudonEditFieldLabel.Text = 'Kết quả dự đoán';

            % Create EditFieldKetquadudoan
            app.EditFieldKetquadudoan = uieditfield(app.Hoi_Quy_Tab, 'numeric');
            app.EditFieldKetquadudoan.Position = [222 88 100 22];

            % Create KtquchngtrnhhiquyEditFieldLabel
            app.KtquchngtrnhhiquyEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.KtquchngtrnhhiquyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquchngtrnhhiquyEditFieldLabel.Position = [433 88 161 22];
            app.KtquchngtrnhhiquyEditFieldLabel.Text = 'Kết quả chương trình hồi quy';

            % Create EditFieldKetquachuongtrinh
            app.EditFieldKetquachuongtrinh = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldKetquachuongtrinh.Position = [609 88 100 22];

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

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpdliuxEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel.Position = [41 407 83 22];
            app.NhpdliuxEditFieldLabel.Text = 'Nhập dữ liệu x';

            % Create EditFieldX
            app.EditFieldX = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldX.Position = [139 407 100 22];

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.Position = [41 349 83 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nhập dữ liệu y';

            % Create EditFieldY
            app.EditFieldY = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldY.Position = [139 349 100 22];

            % Create NhpgitrcndonEditFieldLabel
            app.NhpgitrcndonEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpgitrcndonEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcndonEditFieldLabel.Position = [41 231 138 22];
            app.NhpgitrcndonEditFieldLabel.Text = 'Nhập giá trị cần dự đoán';

            % Create EditFieldNhapgiatridudoan
            app.EditFieldNhapgiatridudoan = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldNhapgiatridudoan.Position = [194 231 100 22];

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