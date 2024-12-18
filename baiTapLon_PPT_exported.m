classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        TabGroup                   matlab.ui.container.TabGroup
        Tim_Nghiem_Tab             matlab.ui.container.Tab
        NhpphngtrnhEditFieldLabel  matlab.ui.control.Label
        inputEquation              matlab.ui.control.EditField
        ChnphngphptmLabel          matlab.ui.control.Label
        choseOption                matlab.ui.control.DropDown
        caculateEvent              matlab.ui.control.Button
        NhpkhongphnlyngimaEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_a  matlab.ui.control.NumericEditField
        NhpkhongphnlynghimbEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_b  matlab.ui.control.NumericEditField
        NhpsaisEditFieldLabel      matlab.ui.control.Label
        inputAllowableError        matlab.ui.control.NumericEditField
        NghimcaphngphptrnLabel     matlab.ui.control.Label
        resultMethod               matlab.ui.control.NumericEditField
        SlnlpcaphngphptrnEditFieldLabel  matlab.ui.control.Label
        resultLoop                 matlab.ui.control.NumericEditField
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
            if(fa .* fb) > 0
                fprintf("Không có nghiệm trong khoảng phân ly trên");
            end
            for n = 1:1:10000
                c = (a+b)/2
                fc = feval(fx, c);
                e = (a-b);
                caseMUL = fa .* fc;
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

        % Button pushed function: caculateEvent
        function caculateEventButtonPushed(app, event)
           fxi = app.inputEquation.Value;
           fx = @(x)(fxi);
          
           saiso = app.inputAllowableError.Value;
           a = app.inputSeparationDistance_a.Value;
           b = app.inputSeparationDistance_b.Value;
           if app.choseOption.Value == 'Chia đôi'
               
               [c, n] = bisectionMethod(app, fx, a, b, saiso);
               app.resultMethod.Value = c;
               app.resultLoop.Value = n;
               plot(app.UIAxes, fx);
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
            app.inputEquation.Position = [183 441 113 22];

            % Create ChnphngphptmLabel
            app.ChnphngphptmLabel = uilabel(app.Tim_Nghiem_Tab);
            app.ChnphngphptmLabel.HorizontalAlignment = 'center';
            app.ChnphngphptmLabel.Position = [44 297 130 22];
            app.ChnphngphptmLabel.Text = 'Chọn phương pháp tìm';

            % Create choseOption
            app.choseOption = uidropdown(app.Tim_Nghiem_Tab);
            app.choseOption.Items = {'Chia đôi', 'Lặp', 'Newton(Tiếp tuyến)'};
            app.choseOption.Position = [183 297 113 22];
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

            % Create NghimcaphngphptrnLabel
            app.NghimcaphngphptrnLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NghimcaphngphptrnLabel.HorizontalAlignment = 'center';
            app.NghimcaphngphptrnLabel.Position = [27 111 170 22];
            app.NghimcaphngphptrnLabel.Text = 'Nghiệm của phương pháp trên';

            % Create resultMethod
            app.resultMethod = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.resultMethod.Position = [212 111 100 22];

            % Create SlnlpcaphngphptrnEditFieldLabel
            app.SlnlpcaphngphptrnEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.SlnlpcaphngphptrnEditFieldLabel.HorizontalAlignment = 'center';
            app.SlnlpcaphngphptrnEditFieldLabel.Position = [463 111 182 22];
            app.SlnlpcaphngphptrnEditFieldLabel.Text = 'Số lần lặp của phương pháp trên';

            % Create resultLoop
            app.resultLoop = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.resultLoop.Position = [660 111 100 22];

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tim_Nghiem_Tab);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [339 157 442 302];

            % Create Noi_Suy_Tab
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

            % Create Hoi_Quy_Tab
            app.Hoi_Quy_Tab = uitab(app.TabGroup);
            app.Hoi_Quy_Tab.Title = 'Hồi Quy';

            % Create Dao_Ham_Tab
            app.Dao_Ham_Tab = uitab(app.TabGroup);
            app.Dao_Ham_Tab.Title = 'Đạo Hàm';
            % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: KetQua
        function KetQuaButtonPushed(app, event)
            %x_input= app.NhapDuLieux.Value;
            %x_chuyendoi=strsplit(x_input);
            %x = str2double(x_chuyendoi); % Chuyển chuỗi nhập từ Area Text thành mảng số
            %y_input= app.NhapDuLieuy.Value;
            %y_chuyendoi=strsplit(y_input);
            %y = str2double(y_chuyendoi); % Chuyển chuỗi nhập từ Area Text thành mảng số
            % Đọc chuỗi nhập từ Area Text và chuyển đổi thành mảng số
            %x = eval('[',app.NhapDuLieux.Value,']'); % Chuyển đổi chuỗi nhập thành mảng
            %y = eval('[',app.NhapDuLieuy.Value,']'); % Chuyển đổi chuỗi nhập thành mảng
            x_input = app.NhapDuLieux.Value; % Nhập chuỗi từ Text Area
            y_input = app.NhapDuLieuy.Value; % Nhập chuỗi từ Text Area
            x = str2num(x_input); % Chuyển đổi chuỗi thành mảng
            y = str2num(y_input); % Chuyển đổi chuỗi thành mảng
            Ss = app.ChonSaiSo.Value; % Sai số yêu cầu (O(h) hoặc O(h^2))
            h = app.NhapBuoch.Value;
            Pp = app.PhuongPhapDaoHam.Value;
            gtdh = app.GiaTriCanTinhDaoHam.Value;
            input_ham = app.NhapHamSo.Value;
            daoham = str2func(['@(x)', input_ham]); % Chuyển chuỗi thành hàm số
            % Kiểm tra độ dài vector x và y
            if length(x) ~= length(y)
                error('Vector x và y phải có cùng độ dài');
            end

            dao_ham_xac_dinh= diff(daoham);
            gia_tri_dao_ham= dao_ham_xac_dinh(gtdh);
            disp('Đạo hàm chính xác');
            disp(gia_tri_dao_ham);

            % Sử dụng h được nhập nếu có, nếu không sử dụng h từ dữ liệu
            if (h <= 0)
                h_calc = x(2) - x(1);
                h = h_calc;
            end
            n = length(x);
            switch Ss
                case 'O(h)'
                    switch Pp
                        case 'tiến'
                            % Taylor Tiến sai số O(h): Không tính được giá trị cuối
                            for i = 1:n-1
                                daoham(i) = (y(i+1) - y(i)) / h;
                            end
                            disp('Đạo hàm gần đúng');
                            disp(daoham);
                        case 'lùi'
                            % Taylor Lùi sai số O(h): Không tính được giá trị đầu
                            for i = 2:n
                                daoham(i) = (y(i) - y(i-1)) / h;
                            end
                            disp('Đạo hàm gần đúng');
                            disp(daoham);
                        case 'trung tâm'
                            % Taylor Trung tâm sai số O(h): Không tính được giá trị đầu và cuối
                            for i = 2:n-1
                                daoham(i) = (y(i+1) - y(i-1)) / (2 * h);
                            end
                            disp('Đạo hàm gần đúng');
                            disp(daoham);
                        otherwise
                            error('Chọn sai hãy chọn lại "tiến", "lùi" hoặc "trung tâm".');
                    end
            
                case 'O(h^2)'
                    switch Pp
                        case 'tiến'
                            % Taylor Tiến sai số O(h^2): Không tính được 2 giá trị cuối
                            for i = 1:n-2
                                daoham(i) = (-3 * y(i) + 4 * y(i+1) - y(i+2)) / (2 * h);
                            end
                            disp('Đạo hàm gần đúng');
                            disp(daoham);
                        case 'lùi'
                            % Taylor Lùi sai số O(h^2): Không tính được 2 giá trị đầu
                            for i = 3:n
                                daoham(i) = (3 * y(i) - 4 * y(i-1) + y(i-2)) / (2 * h);
                            end
                            disp('Đạo hàm gần đúng');
                            disp(daoham);
                        case 'trung tâm'
                            % Taylor Trung tâm sai số O(h^2): Không tính được giá trị đầu và cuối
                            for i = 2:n-1
                                daoham(i) = (y(i+1) - y(i-1)) / (2 * h);
                            end
                            disp('Đạo hàm gần đúng');
                            disp(daoham);
                        otherwise
                            error('Chọn sai hãy chọn lại "tiến", "lùi" hoặc "trung tâm".');
                    end
            
                otherwise
                    error('Chọn sai hãy chọn lại "O(h)" hoặc "O(h^2)".');
            end
    
        end
    end

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
