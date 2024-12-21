classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
%<<<<<<< NguyenDucThung
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
%=======
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
        SlnlpcaphngphptrnlLabel    matlab.ui.control.Label
        resultLoop                 matlab.ui.control.NumericEditField
        NghimcaphngphptrnlLabel    matlab.ui.control.Label
        resultMethod               matlab.ui.control.NumericEditField
        UIAxes                     matlab.ui.control.UIAxes
        Noi_Suy_Tab                matlab.ui.container.Tab
        Hoi_Quy_Tab                matlab.ui.container.Tab
        Dao_Ham_Tab                matlab.ui.container.Tab
        Tich_Phan_Tab              matlab.ui.container.Tab
        Introduce_Tab              matlab.ui.container.Tab
        EditFieldLabel             matlab.ui.control.Label
        Test_Field                 matlab.ui.control.EditField
%>>>>>>> main
    end

    
    %this line trust comment in to test
    
%<<<<<<< NguyenDucThung

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
      
    
%=======
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
                
           
          
           
           
           
           
%>>>>>>> main
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
%<<<<<<< HEAD

%<<<<<<< NguyenDucThung
%=======
%=======
%<<<<<<< HEAD
%=======
%>>>>>>> refs/remotes/origin/main
           % Callbacks that handle component events
    methods (Access = private)

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
%<<<<<<< HEAD

%=======
    
%>>>>>>> d1c70a1133e296eaf1720dae8e74366443568071
%>>>>>>> refs/remotes/origin/main

%>>>>>>> main
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
%<<<<<<< NguyenDucThung
%end
%=======
%end
%>>>>>>> main
