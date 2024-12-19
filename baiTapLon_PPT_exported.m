classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        TabGroup                   matlab.ui.container.TabGroup
        Tim_Nghiem_Tab             matlab.ui.container.Tab
        NhpphngtrnhEditFieldLabel  matlab.ui.control.Label
        inputEquation              matlab.ui.control.EditField
        NhpkhongphnlynghimaLabel   matlab.ui.control.Label
        inputSeparationDistance_a  matlab.ui.control.EditField
        NhpsaischophpLabel         matlab.ui.control.Label
        inputAllowableError        matlab.ui.control.EditField
        ChnphngphptmLabel          matlab.ui.control.Label
        choseOption                matlab.ui.control.DropDown
        NhpkhongphnlynghimbEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_b  matlab.ui.control.EditField
        KtqunghimtmcLabel          matlab.ui.control.Label
        result                     matlab.ui.control.TextArea
        SlnlptmcLabel              matlab.ui.control.Label
        numberLoop                 matlab.ui.control.TextArea
        caculateEvent              matlab.ui.control.Button
        UIAxes                     matlab.ui.control.UIAxes
        Noi_Suy_Tab                matlab.ui.container.Tab
        Hoi_Quy_Tab                matlab.ui.container.Tab
        Dao_Ham_Tab                matlab.ui.container.Tab
        Tich_Phan_Tab              matlab.ui.container.Tab
        Introduce_Tab              matlab.ui.container.Tab
        EditFieldLabel             matlab.ui.control.Label
        Test_Field                 matlab.ui.control.EditField
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
        
        function [c, n] = bisectionMethod(app, fx, a,b, saiso ) 
            fa = feval(fx, a);
            fb = feval(fx, b);
            if(fa * fb) > 0
                fprintf("Không có nghiệm trong khoảng phân ly trên");
            end
            for n = 1:1:10000
                c = (a+b)/2
                fc = feval(fx, c);
                e = (a-b);
                caseMUL = fa * fc;
                if caseMUL < 0
                    b = c;
                else
                    a = c;
                end
                if caseMUL == 0
                    e = 0;
                end
                if  e < saiso
                    break;  
                end
            end
            %x1 là nghiệm trả về, n là số lần vòng lặp
            
        end
        
        
        
        %function sử dụng phương pháp lặp để tìm nghiệm
        function [x1, n] = repeatMethod(app, fx, fp, a, b, saiso)
            x0 = (a+b)/2;
            x1 = fp(x0);
            n = 1;
            while abs(x1 - x0) > saiso 
                x0 = x1;
                x1 = fp(x0);
                n = n + 1;
            end
          %x1 là nghiệm trả về, n là số lần vòng lặp
        end
        
        
        
        %function sử dụng phương pháp tiếp tuyến (Newton) để tìm nghiệm
        function [x1, n] = newtonMethod(app, fx, a, b, saiso)
            syms x;
            df = matlabFunciton(diff(fx,x)); %tính đạo hàm của fx tại x và gán và df
            x0 = a+b/2;
            x1 = x0 - fx(x0) / df(x0);
            n = 0;
            while abs(x1 - x0) > saiso
                x0 = x1;
                x1 = x0 - fx(x0) / df(x0);
                n = n +1;
            end
            
            %x1 là nghiệm trả về, n là số lần vòng lặp
            %đẩy sai số ra sau
        end
    end
    
    
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: choseOption
        function choseOptionValueChanged(app, event)
          
           fx = app.inputEquation.Value;
           saiso = app.inputAllowableError.Value;
           a = app.inputSeparationDistance_a.Value;
           b = app.inputSeparationDistance_b.Value;
           fx_temp = @(x)(fx);
           fp = matlabFunction(fx_temp);
           
                          
          
            
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
            app.NhpphngtrnhEditFieldLabel.Position = [54 441 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nhập phương trình';

            % Create inputEquation
            app.inputEquation = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputEquation.Position = [184 441 113 22];

            % Create NhpkhongphnlynghimaLabel
            app.NhpkhongphnlynghimaLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpkhongphnlynghimaLabel.HorizontalAlignment = 'center';
            app.NhpkhongphnlynghimaLabel.Position = [6 407 176 22];
            app.NhpkhongphnlynghimaLabel.Text = 'Nhập khoảng phân ly nghiệm(a)';

            % Create inputSeparationDistance_a
            app.inputSeparationDistance_a = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputSeparationDistance_a.HorizontalAlignment = 'center';
            app.inputSeparationDistance_a.Position = [184 407 113 22];

            % Create NhpsaischophpLabel
            app.NhpsaischophpLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpsaischophpLabel.HorizontalAlignment = 'center';
            app.NhpsaischophpLabel.Position = [45 333 122 22];
            app.NhpsaischophpLabel.Text = 'Nhập sai số cho phép';

            % Create inputAllowableError
            app.inputAllowableError = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputAllowableError.Position = [184 333 113 22];

            % Create ChnphngphptmLabel
            app.ChnphngphptmLabel = uilabel(app.Tim_Nghiem_Tab);
            app.ChnphngphptmLabel.HorizontalAlignment = 'center';
            app.ChnphngphptmLabel.Position = [44 297 130 22];
            app.ChnphngphptmLabel.Text = 'Chọn phương pháp tìm';

            % Create choseOption
            app.choseOption = uidropdown(app.Tim_Nghiem_Tab);
            app.choseOption.Items = {'Chia đôi', 'Lặp', 'Newton(Tiếp tuyến)'};
            app.choseOption.ValueChangedFcn = createCallbackFcn(app, @choseOptionValueChanged, true);
            app.choseOption.Position = [183 297 113 22];
            app.choseOption.Value = 'Chia đôi';

            % Create NhpkhongphnlynghimbEditFieldLabel
            app.NhpkhongphnlynghimbEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpkhongphnlynghimbEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpkhongphnlynghimbEditFieldLabel.Position = [6 371 176 22];
            app.NhpkhongphnlynghimbEditFieldLabel.Text = 'Nhập khoảng phân ly nghiệm(b)';

            % Create inputSeparationDistance_b
            app.inputSeparationDistance_b = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputSeparationDistance_b.HorizontalAlignment = 'center';
            app.inputSeparationDistance_b.Position = [184 371 113 22];

            % Create KtqunghimtmcLabel
            app.KtqunghimtmcLabel = uilabel(app.Tim_Nghiem_Tab);
            app.KtqunghimtmcLabel.HorizontalAlignment = 'right';
            app.KtqunghimtmcLabel.Position = [6 132 141 22];
            app.KtqunghimtmcLabel.Text = 'Kết quả nghiệm tìm được';

            % Create result
            app.result = uitextarea(app.Tim_Nghiem_Tab);
            app.result.Position = [162 96 150 60];

            % Create SlnlptmcLabel
            app.SlnlptmcLabel = uilabel(app.Tim_Nghiem_Tab);
            app.SlnlptmcLabel.HorizontalAlignment = 'right';
            app.SlnlptmcLabel.Position = [333 132 111 22];
            app.SlnlptmcLabel.Text = 'Số lần lặp tìm được';

            % Create numberLoop
            app.numberLoop = uitextarea(app.Tim_Nghiem_Tab);
            app.numberLoop.Position = [459 96 150 60];

            % Create caculateEvent
            app.caculateEvent = uibutton(app.Tim_Nghiem_Tab, 'push');
            app.caculateEvent.Position = [120 222 139 22];
            app.caculateEvent.Text = 'Vẽ tín hiệu và tính toán';

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tim_Nghiem_Tab);
            title(app.UIAxes, 'Đồ thị hàm số  của phương trình')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [321 167 528 308];

            % Create Noi_Suy_Tab
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

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