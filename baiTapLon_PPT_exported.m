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