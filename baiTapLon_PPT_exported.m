classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                 matlab.ui.Figure
        TabGroup                 matlab.ui.container.TabGroup
        Tim_Nghiem_Tab           matlab.ui.container.Tab
        Noi_Suy_Tab              matlab.ui.container.Tab
        Hoi_Quy_Tab              matlab.ui.container.Tab
        Dao_Ham_Tab              matlab.ui.container.Tab
        Tich_Phan_Tab            matlab.ui.container.Tab
        ChnPhngPhpDropDown       matlab.ui.control.DropDown
        ChnPhngPhpDropDownLabel  matlab.ui.control.Label
        NhphmsEditField          matlab.ui.control.EditField
        NhphmsEditFieldLabel     matlab.ui.control.Label
        EditField2_5             matlab.ui.control.NumericEditField
        EditField2_4             matlab.ui.control.NumericEditField
        NhpNEditField            matlab.ui.control.NumericEditField
        NhpNEditFieldLabel       matlab.ui.control.Label
        KtquButton               matlab.ui.control.Button
        Label_3                  matlab.ui.control.Label
        Label_2                  matlab.ui.control.Label
        Label                    matlab.ui.control.Label
        NhpcnLabel               matlab.ui.control.Label
        HocLabel                 matlab.ui.control.Label
        NhpdliuyEditField        matlab.ui.control.EditField
        NhpdliuyEditFieldLabel   matlab.ui.control.Label
        NhpdliuxEditField        matlab.ui.control.EditField
        NhpdliuxEditFieldLabel   matlab.ui.control.Label
        Introduce_Tab            matlab.ui.container.Tab
        Test_Field               matlab.ui.control.EditField
        EditFieldLabel           matlab.ui.control.Label
    end

    
    %this line trust comment in to test
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: KtquButton
        function KtquButtonPushed(app, event)
  %///////////// khai báo 
            y_simpson38=0;
            N=0;
            y=0;
 %///////////////input 
            try
                fx= str2func(['@(x)', app.NhphmsEditField.Value]); % Hàm số
            catch
                uialert(app.UIFigure, 'Hàm số không hợp lệ!', 'Lỗi'); % Bảng thông báo lỗi
                return;
            end

        
            a = app.EditField2_4.Value;
            b = app.EditField2_5.Value;
            N = app.NhpNEditField.Value;
          
   
%///////////////pp hình thang

       function y = TichPhanHinhThang(fx, a, b, N)
            h = (b - a) / N; % Độ dài mỗi đoạn con
            x = a:h:b; % Chia đoạn [a, b] thành N đoạn
            y = fx(x(1)) / 2; % Giá trị đầu tiên của hình thang
            for i = 2:length(x) - 1
                y = y + fx(x(i)); % Cộng các giá trị ở giữa
            end
            y = y + fx(x(end)) / 2; % Giá trị cuối cùng của hình thang
            y = y * h; % Nhân với độ dài
       end 
%/////////////// pp simpson 1/3
       function y = TichPhanSimpson13(fx, a, b, N)
           if mod(N, 2) ~= 0
                uialert(app.UIFigure, 'N phải là số chẵn!', 'Cảnh báo','Icon','warning'); % Hiển thị thông báo lỗi
                return;
           end
            h = (b - a) / N; % Độ rộng mỗi đoạn
            x = a:h:b;       % Các điểm chia trên đoạn [a, b]
            y_values = fx(x); % Giá trị của hàm số tại các điểm chia
            
            % Công thức Simpson 1/3
            y = h / 3 * (y_values(1) +4 * sum(y_values(2:2:end-1)) +2 * sum(y_values(3:2:end-2)) +y_values(end));
       end
 %///////////// pp simpson 3/8
       function y = TichPhanSimpson38(fx, a, b, N)
           if mod(N, 3) ~= 0
                uialert(app.UIFigure, 'N phải là bội số của 3!', 'Cảnh báo','Icon','warning'); % Hiển thị thông báo lỗi
                return;
           end
          
            h = (b - a) / N; % Độ rộng mỗi đoạn
            x = a:h:b;       % Các điểm chia trên đoạn [a, b]
            y_values = fx(x); % Giá trị của hàm số tại các điểm chia
            
            % Công thức Simpson 3/8
            y = ((3*h) / 8) * (y_values(1) +4 * sum(y_values(2:2:end-1)) +2 * sum(y_values(3:2:end-2)) +y_values(end));
       end
  %/////// drop down select
       Value = app.ChnPhngPhpDropDown.Value;
    if strcmp(Value, 'Hình Thang')
        y_hinhthang = TichPhanHinhThang(fx, a, b, N);
        result = y_hinhthang;
    elseif strcmp(Value, 'Simpson 1/3')
        y_simpson13 = TichPhanSimpson13(fx, a, b, N);
        result = y_simpson13;
    else
        y_simpson38 = TichPhanSimpson38(fx, a, b, N);
        result = y_simpson38;
    end
   
     uialert(app.UIFigure, sprintf('Tích phân gần đúng: %s\n', mat2str(result)), 'Kết quả', 'Icon', 'success');
      
    
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

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.Tich_Phan_Tab);
            app.NhpdliuxEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel.FontName = 'Times New Roman';
            app.NhpdliuxEditFieldLabel.FontSize = 14;
            app.NhpdliuxEditFieldLabel.FontWeight = 'bold';
            app.NhpdliuxEditFieldLabel.Position = [34 411 94 22];
            app.NhpdliuxEditFieldLabel.Text = 'Nhập dữ liệu x';

            % Create NhpdliuxEditField
            app.NhpdliuxEditField = uieditfield(app.Tich_Phan_Tab, 'text');
            app.NhpdliuxEditField.HorizontalAlignment = 'center';
            app.NhpdliuxEditField.Position = [143 411 100 22];

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.Tich_Phan_Tab);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.FontName = 'Times New Roman';
            app.NhpdliuyEditFieldLabel.FontSize = 14;
            app.NhpdliuyEditFieldLabel.FontWeight = 'bold';
            app.NhpdliuyEditFieldLabel.Position = [34 342 94 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nhập dữ liệu y';

            % Create NhpdliuyEditField
            app.NhpdliuyEditField = uieditfield(app.Tich_Phan_Tab, 'text');
            app.NhpdliuyEditField.HorizontalAlignment = 'center';
            app.NhpdliuyEditField.Position = [143 342 100 22];

            % Create HocLabel
            app.HocLabel = uilabel(app.Tich_Phan_Tab);
            app.HocLabel.FontName = 'Times New Roman';
            app.HocLabel.FontSize = 14;
            app.HocLabel.FontWeight = 'bold';
            app.HocLabel.Position = [74 281 36 22];
            app.HocLabel.Text = 'Hoặc';

            % Create NhpcnLabel
            app.NhpcnLabel = uilabel(app.Tich_Phan_Tab);
            app.NhpcnLabel.FontName = 'Times New Roman';
            app.NhpcnLabel.FontSize = 14;
            app.NhpcnLabel.FontWeight = 'bold';
            app.NhpcnLabel.Position = [455 275 74 42];
            app.NhpcnLabel.Text = 'Nhập cận ';

            % Create Label
            app.Label = uilabel(app.Tich_Phan_Tab);
            app.Label.FontSize = 20;
            app.Label.FontWeight = 'bold';
            app.Label.Position = [549 275 35 43];
            app.Label.Text = '[';

            % Create Label_2
            app.Label_2 = uilabel(app.Tich_Phan_Tab);
            app.Label_2.FontSize = 20;
            app.Label_2.FontWeight = 'bold';
            app.Label_2.Position = [648 275 35 43];
            app.Label_2.Text = ']';

            % Create Label_3
            app.Label_3 = uilabel(app.Tich_Phan_Tab);
            app.Label_3.FontSize = 22;
            app.Label_3.FontWeight = 'bold';
            app.Label_3.Position = [600 282 17 28];
            app.Label_3.Text = ';';

            % Create KtquButton
            app.KtquButton = uibutton(app.Tich_Phan_Tab, 'push');
            app.KtquButton.ButtonPushedFcn = createCallbackFcn(app, @KtquButtonPushed, true);
            app.KtquButton.FontName = 'Times New Roman';
            app.KtquButton.FontSize = 14;
            app.KtquButton.FontWeight = 'bold';
            app.KtquButton.Position = [299 104 207 42];
            app.KtquButton.Text = 'Kết quả';

            % Create NhpNEditFieldLabel
            app.NhpNEditFieldLabel = uilabel(app.Tich_Phan_Tab);
            app.NhpNEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpNEditFieldLabel.FontName = 'Times New Roman';
            app.NhpNEditFieldLabel.FontSize = 14;
            app.NhpNEditFieldLabel.FontWeight = 'bold';
            app.NhpNEditFieldLabel.Position = [455 207 51 22];
            app.NhpNEditFieldLabel.Text = 'Nhập N';

            % Create NhpNEditField
            app.NhpNEditField = uieditfield(app.Tich_Phan_Tab, 'numeric');
            app.NhpNEditField.HorizontalAlignment = 'center';
            app.NhpNEditField.Position = [521 198 142 40];

            % Create EditField2_4
            app.EditField2_4 = uieditfield(app.Tich_Phan_Tab, 'numeric');
            app.EditField2_4.HorizontalAlignment = 'center';
            app.EditField2_4.Position = [560 283 29 30];

            % Create EditField2_5
            app.EditField2_5 = uieditfield(app.Tich_Phan_Tab, 'numeric');
            app.EditField2_5.HorizontalAlignment = 'center';
            app.EditField2_5.Position = [616 283 29 30];

            % Create NhphmsEditFieldLabel
            app.NhphmsEditFieldLabel = uilabel(app.Tich_Phan_Tab);
            app.NhphmsEditFieldLabel.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel.FontName = 'Times New Roman';
            app.NhphmsEditFieldLabel.FontSize = 14;
            app.NhphmsEditFieldLabel.FontWeight = 'bold';
            app.NhphmsEditFieldLabel.Position = [34 207 84 22];
            app.NhphmsEditFieldLabel.Text = 'Nhập hàm số';

            % Create NhphmsEditField
            app.NhphmsEditField = uieditfield(app.Tich_Phan_Tab, 'text');
            app.NhphmsEditField.HorizontalAlignment = 'center';
            app.NhphmsEditField.Position = [127 202 118 36];

            % Create ChnPhngPhpDropDownLabel
            app.ChnPhngPhpDropDownLabel = uilabel(app.Tich_Phan_Tab);
            app.ChnPhngPhpDropDownLabel.HorizontalAlignment = 'center';
            app.ChnPhngPhpDropDownLabel.FontName = 'Times New Roman';
            app.ChnPhngPhpDropDownLabel.FontSize = 14;
            app.ChnPhngPhpDropDownLabel.FontWeight = 'bold';
            app.ChnPhngPhpDropDownLabel.Position = [450 411 123 22];
            app.ChnPhngPhpDropDownLabel.Text = 'Chọn Phương Pháp';

            % Create ChnPhngPhpDropDown
            app.ChnPhngPhpDropDown = uidropdown(app.Tich_Phan_Tab);
            app.ChnPhngPhpDropDown.Items = {'Hình Thang', 'Simpson 1/3', 'Simpson 3/8'};
            app.ChnPhngPhpDropDown.Position = [583 411 100 22];
            app.ChnPhngPhpDropDown.Value = 'Simpson 1/3';

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