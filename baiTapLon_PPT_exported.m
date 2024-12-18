classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure        matlab.ui.Figure
        TabGroup        matlab.ui.container.TabGroup
        Tim_Nghiem_Tab  matlab.ui.container.Tab
        Noi_Suy_Tab     matlab.ui.container.Tab
        Hoi_Quy_Tab     matlab.ui.container.Tab
        Dao_Ham_Tab     matlab.ui.container.Tab
        Tich_Phan_Tab   matlab.ui.container.Tab
        Introduce_Tab   matlab.ui.container.Tab
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
            
            %Vỹ sẽ làm ở tab này
            
            app.Tim_Nghiem_Tab = uitab(app.TabGroup);
            app.Tim_Nghiem_Tab.Title = 'Nghiệm';

            % Create Noi_Suy_Tab
            
            %Vỹ sẽ làm ở tab này
            
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

            % Create Hoi_Quy_Tab
            
            %Tiến sẽ hồi quy chuyển kiếp ở tab này
            
            app.Hoi_Quy_Tab = uitab(app.TabGroup);
            app.Hoi_Quy_Tab.Title = 'Hồi Quy';

            % Create Dao_Ham_Tab
            
            %Thành sẽ làm ở Tab Đạo hàm
            
            app.Dao_Ham_Tab = uitab(app.TabGroup);
            app.Dao_Ham_Tab.Title = 'Đạo Hàm';

            % Create Tich_Phan_Tab      

            %Thuận sẽ làm ở tab Tích Phân
            
            app.Tich_Phan_Tab = uitab(app.TabGroup);
            app.Tich_Phan_Tab.Title = 'Tích Phân';
            
  
                % Properties that correspond to app components
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        Toolbar                 matlab.ui.container.Toolbar
        PushTool                matlab.ui.container.toolbar.PushTool
        ChnphngphpButtonGroup   matlab.ui.container.ButtonGroup
        Simpson38Button         matlab.ui.control.RadioButton
        Simpson13Button         matlab.ui.control.RadioButton
        HnhthangButton          matlab.ui.control.RadioButton
        bLabel                  matlab.ui.control.Label
        aLabel                  matlab.ui.control.Label
        a                       matlab.ui.control.EditField
        b                       matlab.ui.control.EditField
        NhpcnEditFieldLabel     matlab.ui.control.Label
        KtquButton              matlab.ui.control.Button
        N                       matlab.ui.control.EditField
        NhpNEditFieldLabel      matlab.ui.control.Label
        NhphmsEditField         matlab.ui.control.EditField
        NhphmsEditFieldLabel    matlab.ui.control.Label
        HocLabel                matlab.ui.control.Label
        NhpdliuyEditField       matlab.ui.control.EditField
        NhpdliuyEditFieldLabel  matlab.ui.control.Label
        NhpdliuxEditField       matlab.ui.control.EditField
        NhpdliuxEditFieldLabel  matlab.ui.control.Label
        ContextMenu             matlab.ui.container.ContextMenu
        Menu                    matlab.ui.container.Menu
        Menu2                   matlab.ui.container.Menu
    end

    % Callbacks that handle component event

        % Button pushed function: KtquButton
        function KtquButtonPushed(app, event)
       
        end


        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create Toolbar
            app.Toolbar = uitoolbar(app.UIFigure);

            % Create PushTool
            app.PushTool = uipushtool(app.Toolbar);

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.UIFigure);
            app.NhpdliuxEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel.FontName = 'Times New Roman';
            app.NhpdliuxEditFieldLabel.FontSize = 14;
            app.NhpdliuxEditFieldLabel.FontWeight = 'bold';
            app.NhpdliuxEditFieldLabel.Position = [39 393 94 22];
            app.NhpdliuxEditFieldLabel.Text = 'Nhập dữ liệu x';

            % Create NhpdliuxEditField
            app.NhpdliuxEditField = uieditfield(app.UIFigure, 'text');
            app.NhpdliuxEditField.HorizontalAlignment = 'center';
            app.NhpdliuxEditField.Position = [148 393 100 22];

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.UIFigure);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.FontName = 'Times New Roman';
            app.NhpdliuyEditFieldLabel.FontSize = 14;
            app.NhpdliuyEditFieldLabel.FontWeight = 'bold';
            app.NhpdliuyEditFieldLabel.Position = [39 315 94 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nhập dữ liệu y';

            % Create NhpdliuyEditField
            app.NhpdliuyEditField = uieditfield(app.UIFigure, 'text');
            app.NhpdliuyEditField.Position = [148 315 100 22];

            % Create HocLabel
            app.HocLabel = uilabel(app.UIFigure);
            app.HocLabel.FontName = 'Times New Roman';
            app.HocLabel.FontSize = 14;
            app.HocLabel.FontWeight = 'bold';
            app.HocLabel.Position = [76 269 36 22];
            app.HocLabel.Text = 'Hoặc';

            % Create NhphmsEditFieldLabel
            app.NhphmsEditFieldLabel = uilabel(app.UIFigure);
            app.NhphmsEditFieldLabel.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel.FontName = 'Times New Roman';
            app.NhphmsEditFieldLabel.FontSize = 14;
            app.NhphmsEditFieldLabel.FontWeight = 'bold';
            app.NhphmsEditFieldLabel.Position = [47 216 84 22];
            app.NhphmsEditFieldLabel.Text = 'Nhập hàm số';

            % Create NhphmsEditField
            app.NhphmsEditField = uieditfield(app.UIFigure, 'text');
            app.NhphmsEditField.HorizontalAlignment = 'center';
            app.NhphmsEditField.Position = [57 181 189 22];

            % Create NhpNEditFieldLabel
            app.NhpNEditFieldLabel = uilabel(app.UIFigure);
            app.NhpNEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpNEditFieldLabel.FontName = 'Times New Roman';
            app.NhpNEditFieldLabel.FontSize = 14;
            app.NhpNEditFieldLabel.FontWeight = 'bold';
            app.NhpNEditFieldLabel.Position = [408 216 51 22];
            app.NhpNEditFieldLabel.Text = 'Nhập N';

            % Create N
            app.N = uieditfield(app.UIFigure, 'text');
            app.N.HorizontalAlignment = 'center';
            app.N.Position = [474 216 100 22];

            % Create KtquButton
            app.KtquButton = uibutton(app.UIFigure, 'push');
            app.KtquButton.ButtonPushedFcn = createCallbackFcn(app, @KtquButtonPushed, true);
            app.KtquButton.FontName = 'Times New Roman';
            app.KtquButton.FontSize = 14;
            app.KtquButton.FontWeight = 'bold';
            app.KtquButton.Position = [202 71 238 26];
            app.KtquButton.Text = 'Kết quả';

            % Create NhpcnEditFieldLabel
            app.NhpcnEditFieldLabel = uilabel(app.UIFigure);
            app.NhpcnEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpcnEditFieldLabel.FontName = 'Times New Roman';
            app.NhpcnEditFieldLabel.FontSize = 14;
            app.NhpcnEditFieldLabel.FontWeight = 'bold';
            app.NhpcnEditFieldLabel.Position = [402 303 63 22];
            app.NhpcnEditFieldLabel.Text = 'Nhập cận';

            % Create b
            app.b = uieditfield(app.UIFigure, 'text');
            app.b.Position = [587 299 31 31];

            % Create a
            app.a = uieditfield(app.UIFigure, 'text');
            app.a.HorizontalAlignment = 'center';
            app.a.Position = [508 299 32 31];

            % Create aLabel
            app.aLabel = uilabel(app.UIFigure);
            app.aLabel.HorizontalAlignment = 'center';
            app.aLabel.FontSize = 14;
            app.aLabel.FontWeight = 'bold';
            app.aLabel.Position = [478 303 25 22];
            app.aLabel.Text = 'a';

            % Create bLabel
            app.bLabel = uilabel(app.UIFigure);
            app.bLabel.HorizontalAlignment = 'center';
            app.bLabel.FontSize = 14;
            app.bLabel.FontWeight = 'bold';
            app.bLabel.Position = [563 303 25 22];
            app.bLabel.Text = 'b';

            % Create ChnphngphpButtonGroup
            app.ChnphngphpButtonGroup = uibuttongroup(app.UIFigure);
            app.ChnphngphpButtonGroup.BorderType = 'none';
            app.ChnphngphpButtonGroup.TitlePosition = 'centertop';
            app.ChnphngphpButtonGroup.Title = 'Chọn phương pháp ';
            app.ChnphngphpButtonGroup.Position = [408 344 172 119];

            % Create HnhthangButton
            app.HnhthangButton = uiradiobutton(app.ChnphngphpButtonGroup);
            app.HnhthangButton.Text = 'Hình thang';
            app.HnhthangButton.FontName = 'Times New Roman';
            app.HnhthangButton.FontSize = 14;
            app.HnhthangButton.FontWeight = 'bold';
            app.HnhthangButton.Position = [12 54 90 22];
            app.HnhthangButton.Value = true;

            % Create Simpson13Button
            app.Simpson13Button = uiradiobutton(app.ChnphngphpButtonGroup);
            app.Simpson13Button.Text = 'Simpson 1/3';
            app.Simpson13Button.FontName = 'Times New Roman';
            app.Simpson13Button.FontSize = 14;
            app.Simpson13Button.FontWeight = 'bold';
            app.Simpson13Button.Position = [12 33 95 22];

            % Create Simpson38Button
            app.Simpson38Button = uiradiobutton(app.ChnphngphpButtonGroup);
            app.Simpson38Button.Text = 'Simpson 3/8';
            app.Simpson38Button.FontName = 'Times New Roman';
            app.Simpson38Button.FontSize = 14;
            app.Simpson38Button.FontWeight = 'bold';
            app.Simpson38Button.Position = [12 11 95 22];
        end        



            % Create Introduce_Tab
            
            %Nhường Tâm slot cuối
            
            app.Introduce_Tab = uitab(app.TabGroup);
            app.Introduce_Tab.Title = 'Giới Thiệu Nhóm';

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

%created by Nguyen The Vy