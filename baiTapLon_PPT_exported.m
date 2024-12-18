classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        TabGroup                   matlab.ui.container.TabGroup
        Tim_Nghiem_Tab             matlab.ui.container.Tab
        NhpphngtrnhEditFieldLabel  matlab.ui.control.Label
        inputEquation              matlab.ui.control.EditField
        NhpkhongphnlynghimEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance    matlab.ui.control.EditField
        NhpsaischophpLabel         matlab.ui.control.Label
        inputAllowableError        matlab.ui.control.EditField
        ChnphngphptmLabel          matlab.ui.control.Label
        choseOption                matlab.ui.control.DropDown
        KtqunghimEditFieldLabel    matlab.ui.control.Label
        result                     matlab.ui.control.NumericEditField
        SlnlpEditFieldLabel        matlab.ui.control.Label
        result_Iterations          matlab.ui.control.NumericEditField
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
            app.NhpphngtrnhEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpphngtrnhEditFieldLabel.Position = [47 441 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nhập phương trình';

            % Create inputEquation
            app.inputEquation = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputEquation.Position = [177 441 113 22];

            % Create NhpkhongphnlynghimEditFieldLabel
            app.NhpkhongphnlynghimEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpkhongphnlynghimEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpkhongphnlynghimEditFieldLabel.Position = [0 407 162 22];
            app.NhpkhongphnlynghimEditFieldLabel.Text = 'Nhập khoảng phân ly nghiệm';

            % Create inputSeparationDistance
            app.inputSeparationDistance = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputSeparationDistance.Position = [177 407 113 22];

            % Create NhpsaischophpLabel
            app.NhpsaischophpLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpsaischophpLabel.HorizontalAlignment = 'right';
            app.NhpsaischophpLabel.Position = [38 362 122 22];
            app.NhpsaischophpLabel.Text = 'Nhập sai số cho phép';

            % Create inputAllowableError
            app.inputAllowableError = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputAllowableError.Position = [177 362 113 22];

            % Create ChnphngphptmLabel
            app.ChnphngphptmLabel = uilabel(app.Tim_Nghiem_Tab);
            app.ChnphngphptmLabel.HorizontalAlignment = 'right';
            app.ChnphngphptmLabel.Position = [38 318 130 22];
            app.ChnphngphptmLabel.Text = 'Chọn phương pháp tìm';

            % Create choseOption
            app.choseOption = uidropdown(app.Tim_Nghiem_Tab);
            app.choseOption.Items = {'Chia đôi', 'Lặp', 'Newton(Tiếp tuyến)'};
            app.choseOption.Position = [177 318 113 22];
            app.choseOption.Value = 'Chia đôi';

            % Create KtqunghimEditFieldLabel
            app.KtqunghimEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.KtqunghimEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqunghimEditFieldLabel.Position = [102 103 90 22];
            app.KtqunghimEditFieldLabel.Text = 'Kết quả nghiệm';

            % Create result
            app.result = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.result.Position = [207 103 100 22];

            % Create SlnlpEditFieldLabel
            app.SlnlpEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.SlnlpEditFieldLabel.HorizontalAlignment = 'right';
            app.SlnlpEditFieldLabel.Position = [636 103 59 22];
            app.SlnlpEditFieldLabel.Text = 'Số lần lặp';

            % Create result_Iterations
            app.result_Iterations = uieditfield(app.Tim_Nghiem_Tab, 'numeric');
            app.result_Iterations.Position = [710 103 100 22];

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