classdef baiTapLon_PPT_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        TabGroup                       matlab.ui.container.TabGroup
        Tim_Nghiem_Tab                 matlab.ui.container.Tab
<<<<<<< HEAD
        NhpphngtrnhEditFieldLabel      matlab.ui.control.Label
        inputEquation                  matlab.ui.control.EditField
        ChnphngphptmLabel              matlab.ui.control.Label
        choseOption                    matlab.ui.control.DropDown
        caculateEvent                  matlab.ui.control.Button
        NhpkhongphnlyngimaEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_a      matlab.ui.control.NumericEditField
        NhpkhongphnlynghimbEditFieldLabel  matlab.ui.control.Label
        inputSeparationDistance_b      matlab.ui.control.NumericEditField
        NhpsaisEditFieldLabel          matlab.ui.control.Label
        inputAllowableError            matlab.ui.control.NumericEditField
        SlnlpcaphngphptrnlLabel        matlab.ui.control.Label
        resultLoop                     matlab.ui.control.NumericEditField
        NghimcaphngphptrnlLabel        matlab.ui.control.Label
        resultMethod                   matlab.ui.control.NumericEditField
        NhphmlpEditFieldLabel          matlab.ui.control.Label
        inputIterativeFunction         matlab.ui.control.EditField
        UIAxes                         matlab.ui.control.UIAxes
        Noi_Suy_Tab                    matlab.ui.container.Tab
        PhngphpnisuyDropDownLabel      matlab.ui.control.Label
        choseOptionInterpolation       matlab.ui.control.DropDown
        KtqunisuytrnlEditFieldLabel    matlab.ui.control.Label
        restultInterpolation           matlab.ui.control.NumericEditField
        Button                         matlab.ui.control.Button
        NhpgitrxEditFieldLabel         matlab.ui.control.Label
        InputArangeX                   matlab.ui.control.EditField
        NhpgitryEditFieldLabel         matlab.ui.control.Label
        InputArangeY                   matlab.ui.control.EditField
        NhpgitrcnnisuyLabel            matlab.ui.control.Label
        InputValueToInterpolated       matlab.ui.control.EditField
        KtquathcnisuycaphngphptrnlEditFieldLabel  matlab.ui.control.Label
        resultPolynomial               matlab.ui.control.EditField
        UIAxesInterpolation            matlab.ui.control.UIAxes
        Hoi_Quy_Tab                    matlab.ui.container.Tab
        VtnhiuvtnhtonktquButton        matlab.ui.control.Button
        KtqudonEditFieldLabel          matlab.ui.control.Label
        EditFieldKetquadudoan          matlab.ui.control.NumericEditField
        KtquchngtrnhhiquyEditFieldLabel  matlab.ui.control.Label
        EditFieldKetquachuongtrinh     matlab.ui.control.EditField
        PhngphpDropDownLabel           matlab.ui.control.Label
        PhngphpDropDown                matlab.ui.control.DropDown
        NhpdliuxEditFieldLabel_3       matlab.ui.control.Label
        EditFieldX                     matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_3       matlab.ui.control.Label
        EditFieldY                     matlab.ui.control.EditField
        NhpgitrcndonEditFieldLabel     matlab.ui.control.Label
        EditFieldNhapgiatridudoan      matlab.ui.control.EditField
        UIAxes2                        matlab.ui.control.UIAxes
        Dao_Ham_Tab                    matlab.ui.container.Tab
        KetQua                         matlab.ui.control.Button
        NhpbchEditFieldLabel           matlab.ui.control.Label
        NhapBuoch                      matlab.ui.control.NumericEditField
        NhpgitrcntnhohmEditFieldLabel  matlab.ui.control.Label
        GiaTriCanTinhDaoHam            matlab.ui.control.NumericEditField
        NhphmsEditFieldLabel           matlab.ui.control.Label
        NhapHamSo                      matlab.ui.control.EditField
        NhpdliuxEditFieldLabel         matlab.ui.control.Label
        NhapDuLieux                    matlab.ui.control.EditField
        NhpdliuyEditFieldLabel         matlab.ui.control.Label
        NhapDuLieuy                    matlab.ui.control.EditField
        ChnsaisOhhocOh2DropDownLabel   matlab.ui.control.Label
        ChonSaiSo                      matlab.ui.control.DropDown
        PhngphpohmDropDownLabel        matlab.ui.control.Label
        PhuongPhapDaoHam               matlab.ui.control.DropDown
        Tich_Phan_Tab                  matlab.ui.container.Tab
        HocLabel                       matlab.ui.control.Label
        NhpcnLabel                     matlab.ui.control.Label
        Label                          matlab.ui.control.Label
        Label_2                        matlab.ui.control.Label
        Label_3                        matlab.ui.control.Label
        KtquButton                     matlab.ui.control.Button
        EditField2                     matlab.ui.control.NumericEditField
        EditField2_2                   matlab.ui.control.NumericEditField
        NhpdliuxEditFieldLabel_2       matlab.ui.control.Label
        NhpdliuxEditField              matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_2       matlab.ui.control.Label
        NhpdliuyEditField              matlab.ui.control.EditField
        NhpNEditFieldLabel             matlab.ui.control.Label
        NhpNEditField                  matlab.ui.control.NumericEditField
        NhphmsEditFieldLabel_2         matlab.ui.control.Label
        NhphmsEditField                matlab.ui.control.EditField
        ChnPhngPhpDropDownLabel        matlab.ui.control.Label
        ChnPhngPhpDropDown             matlab.ui.control.DropDown
        Introduce_Tab                  matlab.ui.container.Tab
        Image                          matlab.ui.control.Image
        AVy                            matlab.ui.control.Image
        ThuanImage                     matlab.ui.control.Image
        ThanhImage                     matlab.ui.control.Image
        TamImage                       matlab.ui.control.Image
        TienImage                      matlab.ui.control.Image
        NguynThV22200186Button         matlab.ui.control.Button
        NguyncThun22200158Button       matlab.ui.control.Button
        NguynVNhtThnh22200145Button    matlab.ui.control.Button
        LngTm22200140Button            matlab.ui.control.Button
        VThnhTin22200162Button         matlab.ui.control.Button
        GIITHIUNHMLabel                matlab.ui.control.Label
        Label_4                        matlab.ui.control.Label
        Button_2                       matlab.ui.control.Button
        NguynThV_22200186Panel         matlab.ui.container.Panel
        XButton                        matlab.ui.control.Button
        CngvicLabel                    matlab.ui.control.Label
        NghincuvthitkTabNghimTabNiSuyLabel  matlab.ui.control.Label
        imtnhgiLabel                   matlab.ui.control.Label
        Label_5                        matlab.ui.control.Label
        VThnhTin_22200162Panel         matlab.ui.container.Panel
        XButton_5                      matlab.ui.control.Button
        CngvicLabel_5                  matlab.ui.control.Label
        NghincuvthitkTabHiQuyLabel     matlab.ui.control.Label
        imtnhgiLabel_5                 matlab.ui.control.Label
        Label_9                        matlab.ui.control.Label
        NguynVNhtThnh_22200145Panel    matlab.ui.container.Panel
        XButton_3                      matlab.ui.control.Button
        CngvicLabel_2                  matlab.ui.control.Label
        NghincuvthitkTabohmLabel       matlab.ui.control.Label
        imtnhgiLabel_2                 matlab.ui.control.Label
        Label_6                        matlab.ui.control.Label
        NguyncThun_22200158Panel       matlab.ui.container.Panel
        XButton_2                      matlab.ui.control.Button
        imtnhgiLabel_3                 matlab.ui.control.Label
        NghincuvthitkTabTchPhnLabel_2  matlab.ui.control.Label
        CngvicLabel_3                  matlab.ui.control.Label
        Label_7                        matlab.ui.control.Label
        LngTm_22200140Panel            matlab.ui.container.Panel
        XButton_4                      matlab.ui.control.Button
        CngvicLabel_4                  matlab.ui.control.Label
        NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel  matlab.ui.control.Label
        imtnhgiLabel_4                 matlab.ui.control.Label
        Label_8                        matlab.ui.control.Label
=======
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
        EditFieldNhapgiatridudoan      matlab.ui.control.EditField
        NhpgitrcndonEditFieldLabel     matlab.ui.control.Label
        EditFieldY                     matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_3       matlab.ui.control.Label
        EditFieldX                     matlab.ui.control.EditField
        NhpdliuxEditFieldLabel_3       matlab.ui.control.Label
        PhngphpDropDown                matlab.ui.control.DropDown
        PhngphpDropDownLabel           matlab.ui.control.Label
        EditFieldKetquachuongtrinh     matlab.ui.control.EditField
        KtquchngtrnhhiquyEditFieldLabel  matlab.ui.control.Label
        EditFieldKetquadudoan          matlab.ui.control.NumericEditField
        KtqudonEditFieldLabel          matlab.ui.control.Label
        Button_3                       matlab.ui.control.Button
        UIAxes2                        matlab.ui.control.UIAxes
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
        LngTm_22200140Panel            matlab.ui.container.Panel
        Label_8                        matlab.ui.control.Label
        imtnhgiLabel_4                 matlab.ui.control.Label
        NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel  matlab.ui.control.Label
        CngvicLabel_4                  matlab.ui.control.Label
        XButton_4                      matlab.ui.control.Button
        NguyncThun_22200158Panel       matlab.ui.container.Panel
        Label_7                        matlab.ui.control.Label
        CngvicLabel_3                  matlab.ui.control.Label
        NghincuvthitkTabTchPhnLabel_2  matlab.ui.control.Label
        imtnhgiLabel_3                 matlab.ui.control.Label
        XButton_2                      matlab.ui.control.Button
        NguynVNhtThnh_22200145Panel    matlab.ui.container.Panel
        Label_6                        matlab.ui.control.Label
        imtnhgiLabel_2                 matlab.ui.control.Label
        NghincuvthitkTabohmLabel       matlab.ui.control.Label
        CngvicLabel_2                  matlab.ui.control.Label
        XButton_3                      matlab.ui.control.Button
        VThnhTin_22200162Panel         matlab.ui.container.Panel
        Label_9                        matlab.ui.control.Label
        imtnhgiLabel_5                 matlab.ui.control.Label
        NghincuvthitkTabHiQuyLabel     matlab.ui.control.Label
        CngvicLabel_5                  matlab.ui.control.Label
        XButton_5                      matlab.ui.control.Button
        NguynThV_22200186Panel         matlab.ui.container.Panel
        Label_5                        matlab.ui.control.Label
        imtnhgiLabel                   matlab.ui.control.Label
        NghincuvthitkTabNghimTabNiSuyLabel  matlab.ui.control.Label
        CngvicLabel                    matlab.ui.control.Label
        XButton                        matlab.ui.control.Button
        Button_2                       matlab.ui.control.Button
        Label_4                        matlab.ui.control.Label
        GIITHIUNHMLabel                matlab.ui.control.Label
        VThnhTin22200162Button         matlab.ui.control.Button
        LngTm22200140Button            matlab.ui.control.Button
        NguynVNhtThnh22200145Button    matlab.ui.control.Button
        NguyncThun22200158Button       matlab.ui.control.Button
        NguynThV22200186Button         matlab.ui.control.Button
        TienImage                      matlab.ui.control.Image
        TamImage                       matlab.ui.control.Image
        ThanhImage                     matlab.ui.control.Image
        ThuanImage                     matlab.ui.control.Image
        AVy                            matlab.ui.control.Image
        Image                          matlab.ui.control.Image
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
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
        function [x1, n, x_plot, y] = repeatMethod(app, fp, a, b, saiso)
            x0 = (a+b)/2;
            %x1  = subs(fp, x, x0)
            x1 = fp(x0);
            n = 0;
            while abs(x1 - x0) > saiso 
                x0 = x1;
               % x1 = subs(fp, x, x0);
                x1 = fp(x0);
                n = n+1;
            end
            x_plot = a: 0.1 : b;
            y = fp(x_plot);
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
           
           fpi = app.inputIterativeFunction.Value;
           fp = str2func(['@(x)', fpi]);
           
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
         
             
               %Vẽ đồ thị
               plot(app.UIAxes,x,y, 'black');
               grid(app.UIAxes, 'on');
            
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
               xlim(app.UIAxes, [a, b]);
               ylim(app.UIAxes, [a, b]);
               
               
               case 'Lặp'
               %đẩy các giá trị output ở hàm tính toán nghiệm lặp sau
               %đó đưa nó vào các value text
               [x1, n, x_plot, y] = repeatMethod(app, fp, a,b,saiso);
            
               app.resultLoop.Value= double(n);
               app.resultMethod.Value = double(x1);
               %Vẽ đồ thị
               grid(app.UIAxes, 'on');
     
               plot(app.UIAxes, x_plot, y, 'black');
            
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
               xlim(app.UIAxes, [a, b]);
               ylim(app.UIAxes, [a, b]);
              
               
               case 'Newton(Tiếp tuyến)'
               %đẩy các giá trị output ở hàm tính toán nghiệm chia đôi sau
               %đó đưa nó vào các value text
               [x1, n,x_plot, y] = newtonMethod(app, fx, a, b, saiso);
               
               app.resultLoop.Value = double(n);
               app.resultMethod.Value = double(x1);
               
               %Vẽ đồ thị
                        
               plot(app.UIAxes, x_plot, y,'black');              
               grid(app.UIAxes, 'on');
               legend(app.UIAxes,'Nét đồ thị của biểu thức');
               xlim(app.UIAxes, [a, b]);
               ylim(app.UIAxes, [a, b]);
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
    
        end

        % Image clicked function: AVy
        function AVyImageClicked(app, event)
            app.NguynThV_22200186Panel.Visible = 'on'; % Hiển thị Panel của Vỹ
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận 
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Button pushed function: XButton
        function XButtonPushed(app, event)
            app.NguynThV_22200186Panel.Visible = 'off'; % Tắt Panel của Vỹ
        end

<<<<<<< HEAD
        % Callback function: NguynThV_22200186Panel
=======
        % Button down function: NguynThV_22200186Panel
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
        function NguynThV_22200186PanelButtonDown(app, event)
            
        end

        % Button pushed function: XButton_2
        function XButton_2Pushed(app, event)
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận   
        end

        % Button pushed function: NguynThV22200186Button
        function NguynThV22200186ButtonPushed(app, event)
            app.NguynThV_22200186Panel.Visible = 'on'; % Hiển thị Panel của Vỹ
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận 
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Image clicked function: ThuanImage
        function ThuanImageClicked(app, event)
            app.NguyncThun_22200158Panel.Visible = 'on'; % Hiển thị Panel của Thuận 
            app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Button pushed function: NguyncThun22200158Button
        function NguyncThun22200158ButtonPushed(app, event)
            app.NguyncThun_22200158Panel.Visible = 'on'; % Hiển thị Panel của Thuận  
            app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        
        end

        % Image clicked function: ThanhImage
        function ThanhImageClicked(app, event)
            app.NguynVNhtThnh_22200145Panel.Visible = 'on'; % Hiển thị Panel của Thành
            app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Button pushed function: NguynVNhtThnh22200145Button
        function NguynVNhtThnh22200145ButtonPushed(app, event)
               app.NguynVNhtThnh_22200145Panel.Visible = 'on'; % Hiển thị Panel của Thành 
               app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
                app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận
                app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
                app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Button pushed function: XButton_3
        function XButton_3Pushed(app, event)
                        app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
        end

        % Image clicked function: TamImage
        function TamImageClicked(app, event)
               app.LngTm_22200140Panel.Visible = 'on'; % Hiển thị Panel của Tâm
               app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
                app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận
                app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
                app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
        end

        % Button pushed function: LngTm22200140Button
        function LngTm22200140ButtonPushed(app, event)
            app.LngTm_22200140Panel.Visible = 'on'; % Hiển thị Panel của Tâm
            app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
        end

        % Button pushed function: XButton_4
        function XButton_4Pushed(app, event)
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Image clicked function: TienImage
        function TienImageClicked(app, event)
            app.VThnhTin_22200162Panel.Visible = 'on'; % Hiển thị Panel của Tiến
            app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Button pushed function: VThnhTin22200162Button
        function VThnhTin22200162ButtonPushed(app, event)
            app.VThnhTin_22200162Panel.Visible = 'on'; % Hiển thị Panel của Tiến
            app.NguynThV_22200186Panel.Visible = 'off'; % Hiển thị Panel của Vỹ
            app.NguyncThun_22200158Panel.Visible = 'off'; % Tắt Panel của Thuận
            app.NguynVNhtThnh_22200145Panel.Visible = 'off'; % Tắt panel của Thành
            app.LngTm_22200140Panel.Visible = 'off'; % Tắt Panel của Tâm
        end

        % Button pushed function: XButton_5
        function XButton_5Pushed(app, event)
            app.VThnhTin_22200162Panel.Visible = 'off'; % Close Panel của Tiến
        end

        % Button pushed function: Button_2
        function Button_2Pushed(app, event)
            url = 'https://github.com/vynt2401/baiTapLon_THPPT';
        web(url, '-browser');  % Mở URL trong trình duyệt
        end

<<<<<<< HEAD
        % Button pushed function: VtnhiuvtnhtonktquButton
        function VtnhiuvtnhtonktquButtonPushed(app, event)
=======
        % Button pushed function: Button_3
        function Button_3Pushed(app, event)
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
      
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

<<<<<<< HEAD
=======
            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
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

<<<<<<< HEAD
=======
            % Create UIAxes
            app.UIAxes = uiaxes(app.Tim_Nghiem_Tab);
            title(app.UIAxes, 'Đồ thị ')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [339 157 498 337];

>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            % Create NhpphngtrnhEditFieldLabel
            app.NhpphngtrnhEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhpphngtrnhEditFieldLabel.HorizontalAlignment = 'center';
            app.NhpphngtrnhEditFieldLabel.Position = [53 441 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nhập phương trình';

            % Create inputEquation
            app.inputEquation = uieditfield(app.Tim_Nghiem_Tab, 'text');
<<<<<<< HEAD
            app.inputEquation.HorizontalAlignment = 'center';
=======
            app.inputEquation.HorizontalAlignment = 'right';
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            app.inputEquation.Position = [184 441 109 22];

            % Create ChnphngphptmLabel
            app.ChnphngphptmLabel = uilabel(app.Tim_Nghiem_Tab);
            app.ChnphngphptmLabel.HorizontalAlignment = 'center';
<<<<<<< HEAD
            app.ChnphngphptmLabel.Position = [40 253 130 22];
=======
            app.ChnphngphptmLabel.Position = [41 297 130 22];
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            app.ChnphngphptmLabel.Text = 'Chọn phương pháp tìm';

            % Create choseOption
            app.choseOption = uidropdown(app.Tim_Nghiem_Tab);
            app.choseOption.Items = {'Chia đôi', 'Lặp', 'Newton(Tiếp tuyến)'};
<<<<<<< HEAD
            app.choseOption.Position = [179 253 113 22];
=======
            app.choseOption.Position = [180 297 113 22];
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            app.choseOption.Value = 'Chia đôi';

            % Create caculateEvent
            app.caculateEvent = uibutton(app.Tim_Nghiem_Tab, 'push');
            app.caculateEvent.ButtonPushedFcn = createCallbackFcn(app, @caculateEventButtonPushed, true);
<<<<<<< HEAD
            app.caculateEvent.Position = [129 198 139 22];
=======
            app.caculateEvent.Position = [120 222 139 22];
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
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

<<<<<<< HEAD
            % Create NhphmlpEditFieldLabel
            app.NhphmlpEditFieldLabel = uilabel(app.Tim_Nghiem_Tab);
            app.NhphmlpEditFieldLabel.HorizontalAlignment = 'center';
            app.NhphmlpEditFieldLabel.Position = [95 293 83 22];
            app.NhphmlpEditFieldLabel.Text = 'Nhập hàm lặp ';

            % Create inputIterativeFunction
            app.inputIterativeFunction = uieditfield(app.Tim_Nghiem_Tab, 'text');
            app.inputIterativeFunction.HorizontalAlignment = 'center';
            app.inputIterativeFunction.Position = [184 293 109 22];

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tim_Nghiem_Tab);
            title(app.UIAxes, 'Đồ thị ')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [339 157 498 337];

=======
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            % Create Noi_Suy_Tab
            app.Noi_Suy_Tab = uitab(app.TabGroup);
            app.Noi_Suy_Tab.Title = 'Nội Suy';

<<<<<<< HEAD
=======
            % Create UIAxesInterpolation
            app.UIAxesInterpolation = uiaxes(app.Noi_Suy_Tab);
            title(app.UIAxesInterpolation, 'Đồ thị')
            xlabel(app.UIAxesInterpolation, 'X')
            ylabel(app.UIAxesInterpolation, 'Y')
            zlabel(app.UIAxesInterpolation, 'Z')
            app.UIAxesInterpolation.Position = [322 152 515 342];

>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
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

<<<<<<< HEAD
            % Create UIAxesInterpolation
            app.UIAxesInterpolation = uiaxes(app.Noi_Suy_Tab);
            title(app.UIAxesInterpolation, 'Đồ thị')
            xlabel(app.UIAxesInterpolation, 'X')
            ylabel(app.UIAxesInterpolation, 'Y')
            zlabel(app.UIAxesInterpolation, 'Z')
            app.UIAxesInterpolation.Position = [322 152 515 342];

=======
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            % Create Hoi_Quy_Tab
            app.Hoi_Quy_Tab = uitab(app.TabGroup);
            app.Hoi_Quy_Tab.Title = 'Hồi Quy';

<<<<<<< HEAD
            % Create VtnhiuvtnhtonktquButton
            app.VtnhiuvtnhtonktquButton = uibutton(app.Hoi_Quy_Tab, 'push');
            app.VtnhiuvtnhtonktquButton.ButtonPushedFcn = createCallbackFcn(app, @VtnhiuvtnhtonktquButtonPushed, true);
            app.VtnhiuvtnhtonktquButton.Position = [323 26 182 22];
            app.VtnhiuvtnhtonktquButton.Text = 'Vẽ tín hiệu và tính toán kết quả';
=======
            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.Hoi_Quy_Tab);
            title(app.UIAxes2, 'Đồ thị mô hình hồi quy')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.PlotBoxAspectRatio = [1.66095890410959 1 1];
            app.UIAxes2.Position = [375 175 436 289];

            % Create Button_3
            app.Button_3 = uibutton(app.Hoi_Quy_Tab, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.Button_3.Position = [364 26 100 22];
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create KtqudonEditFieldLabel
            app.KtqudonEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.KtqudonEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqudonEditFieldLabel.Position = [124 89 95 22];
            app.KtqudonEditFieldLabel.Text = 'Kết quả dự đoán';

            % Create EditFieldKetquadudoan
            app.EditFieldKetquadudoan = uieditfield(app.Hoi_Quy_Tab, 'numeric');
            app.EditFieldKetquadudoan.Position = [234 89 100 22];

            % Create KtquchngtrnhhiquyEditFieldLabel
            app.KtquchngtrnhhiquyEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.KtquchngtrnhhiquyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquchngtrnhhiquyEditFieldLabel.Position = [445 89 161 22];
            app.KtquchngtrnhhiquyEditFieldLabel.Text = 'Kết quả chương trình hồi quy';

            % Create EditFieldKetquachuongtrinh
            app.EditFieldKetquachuongtrinh = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldKetquachuongtrinh.Position = [621 89 100 22];

            % Create PhngphpDropDownLabel
            app.PhngphpDropDownLabel = uilabel(app.Hoi_Quy_Tab);
            app.PhngphpDropDownLabel.HorizontalAlignment = 'right';
            app.PhngphpDropDownLabel.Position = [53 298 79 22];
            app.PhngphpDropDownLabel.Text = 'Phương pháp';

            % Create PhngphpDropDown
            app.PhngphpDropDown = uidropdown(app.Hoi_Quy_Tab);
<<<<<<< HEAD
            app.PhngphpDropDown.Items = {'Tiếp tuyến', 'Hàm mũ', 'Logarit'};
=======
            app.PhngphpDropDown.Items = {'Tiếp tuyến', 'Hàm mũ', 'Logarit', 'Option 4'};
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            app.PhngphpDropDown.Position = [147 298 100 22];
            app.PhngphpDropDown.Value = 'Hàm mũ';

            % Create NhpdliuxEditFieldLabel_3
            app.NhpdliuxEditFieldLabel_3 = uilabel(app.Hoi_Quy_Tab);
            app.NhpdliuxEditFieldLabel_3.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel_3.Position = [53 408 83 22];
            app.NhpdliuxEditFieldLabel_3.Text = 'Nhập dữ liệu x';

            % Create EditFieldX
            app.EditFieldX = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldX.Position = [151 408 100 22];

            % Create NhpdliuyEditFieldLabel_3
            app.NhpdliuyEditFieldLabel_3 = uilabel(app.Hoi_Quy_Tab);
            app.NhpdliuyEditFieldLabel_3.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel_3.Position = [53 350 83 22];
            app.NhpdliuyEditFieldLabel_3.Text = 'Nhập dữ liệu y';

            % Create EditFieldY
            app.EditFieldY = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldY.Position = [151 350 100 22];

            % Create NhpgitrcndonEditFieldLabel
            app.NhpgitrcndonEditFieldLabel = uilabel(app.Hoi_Quy_Tab);
            app.NhpgitrcndonEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcndonEditFieldLabel.Position = [53 232 138 22];
            app.NhpgitrcndonEditFieldLabel.Text = 'Nhập giá trị cần dự đoán';

            % Create EditFieldNhapgiatridudoan
            app.EditFieldNhapgiatridudoan = uieditfield(app.Hoi_Quy_Tab, 'text');
            app.EditFieldNhapgiatridudoan.Position = [206 232 100 22];

<<<<<<< HEAD
            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.Hoi_Quy_Tab);
            title(app.UIAxes2, 'Đồ thị mô hình hồi quy')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.PlotBoxAspectRatio = [1.66095890410959 1 1];
            app.UIAxes2.Position = [375 175 436 289];

=======
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
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

            % Create Image
            app.Image = uiimage(app.Introduce_Tab);
            app.Image.ScaleMethod = 'fill';
            app.Image.Position = [0 152 850 356];
<<<<<<< HEAD
            app.Image.ImageSource = 'C:\baiTapLon_THPPT\Pics\Team5.png';
=======
            app.Image.ImageSource = fullfile(pathToMLAPP, 'Pics', 'Team5.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create AVy
            app.AVy = uiimage(app.Introduce_Tab);
            app.AVy.ImageClickedFcn = createCallbackFcn(app, @AVyImageClicked, true);
            app.AVy.Position = [-38 14 234 213];
<<<<<<< HEAD
            app.AVy.ImageSource = 'C:\baiTapLon_THPPT\Pics\NTV.png';
=======
            app.AVy.ImageSource = fullfile(pathToMLAPP, 'Pics', 'NTV.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create ThuanImage
            app.ThuanImage = uiimage(app.Introduce_Tab);
            app.ThuanImage.ImageClickedFcn = createCallbackFcn(app, @ThuanImageClicked, true);
            app.ThuanImage.Position = [145 23 188 204];
<<<<<<< HEAD
            app.ThuanImage.ImageSource = 'C:\baiTapLon_THPPT\Pics\NDT.png';
=======
            app.ThuanImage.ImageSource = fullfile(pathToMLAPP, 'Pics', 'NDT.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create ThanhImage
            app.ThanhImage = uiimage(app.Introduce_Tab);
            app.ThanhImage.ImageClickedFcn = createCallbackFcn(app, @ThanhImageClicked, true);
            app.ThanhImage.Position = [289 63 240 160];
<<<<<<< HEAD
            app.ThanhImage.ImageSource = 'C:\baiTapLon_THPPT\Pics\NTT.png';
=======
            app.ThanhImage.ImageSource = fullfile(pathToMLAPP, 'Pics', 'NTT.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create TamImage
            app.TamImage = uiimage(app.Introduce_Tab);
            app.TamImage.ImageClickedFcn = createCallbackFcn(app, @TamImageClicked, true);
            app.TamImage.Position = [502 58 161 161];
<<<<<<< HEAD
            app.TamImage.ImageSource = 'C:\baiTapLon_THPPT\Pics\Tam.png';
=======
            app.TamImage.ImageSource = fullfile(pathToMLAPP, 'Pics', 'Tam.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create TienImage
            app.TienImage = uiimage(app.Introduce_Tab);
            app.TienImage.ImageClickedFcn = createCallbackFcn(app, @TienImageClicked, true);
            app.TienImage.Position = [672 56 165 165];
<<<<<<< HEAD
            app.TienImage.ImageSource = 'C:\baiTapLon_THPPT\Pics\Tien.png';
=======
            app.TienImage.ImageSource = fullfile(pathToMLAPP, 'Pics', 'Tien.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79

            % Create NguynThV22200186Button
            app.NguynThV22200186Button = uibutton(app.Introduce_Tab, 'push');
            app.NguynThV22200186Button.ButtonPushedFcn = createCallbackFcn(app, @NguynThV22200186ButtonPushed, true);
            app.NguynThV22200186Button.FontName = 'Times New Roman';
            app.NguynThV22200186Button.FontSize = 15;
            app.NguynThV22200186Button.FontWeight = 'bold';
            app.NguynThV22200186Button.Position = [21 13 115 44];
            app.NguynThV22200186Button.Text = {'Nguyễn Thế Vỹ'; '22200186'};

            % Create NguyncThun22200158Button
            app.NguyncThun22200158Button = uibutton(app.Introduce_Tab, 'push');
            app.NguyncThun22200158Button.ButtonPushedFcn = createCallbackFcn(app, @NguyncThun22200158ButtonPushed, true);
            app.NguyncThun22200158Button.FontName = 'Times New Roman';
            app.NguyncThun22200158Button.FontSize = 15;
            app.NguyncThun22200158Button.FontWeight = 'bold';
            app.NguyncThun22200158Button.Position = [161 13 141 44];
            app.NguyncThun22200158Button.Text = {'Nguyễn Đức Thuận'; '22200158'};

            % Create NguynVNhtThnh22200145Button
            app.NguynVNhtThnh22200145Button = uibutton(app.Introduce_Tab, 'push');
            app.NguynVNhtThnh22200145Button.ButtonPushedFcn = createCallbackFcn(app, @NguynVNhtThnh22200145ButtonPushed, true);
            app.NguynVNhtThnh22200145Button.FontName = 'Times New Roman';
            app.NguynVNhtThnh22200145Button.FontSize = 15;
            app.NguynVNhtThnh22200145Button.FontWeight = 'bold';
            app.NguynVNhtThnh22200145Button.Position = [325 13 168 44];
            app.NguynVNhtThnh22200145Button.Text = {'Nguyễn Vũ Nhật Thành'; '22200145'};

            % Create LngTm22200140Button
            app.LngTm22200140Button = uibutton(app.Introduce_Tab, 'push');
            app.LngTm22200140Button.ButtonPushedFcn = createCallbackFcn(app, @LngTm22200140ButtonPushed, true);
            app.LngTm22200140Button.FontName = 'Times New Roman';
            app.LngTm22200140Button.FontSize = 15;
            app.LngTm22200140Button.FontWeight = 'bold';
            app.LngTm22200140Button.Position = [533 13 104 44];
            app.LngTm22200140Button.Text = {'Lê Đăng Tâm'; '22200140'};

            % Create VThnhTin22200162Button
            app.VThnhTin22200162Button = uibutton(app.Introduce_Tab, 'push');
            app.VThnhTin22200162Button.ButtonPushedFcn = createCallbackFcn(app, @VThnhTin22200162ButtonPushed, true);
            app.VThnhTin22200162Button.FontName = 'Times New Roman';
            app.VThnhTin22200162Button.FontSize = 15;
            app.VThnhTin22200162Button.FontWeight = 'bold';
            app.VThnhTin22200162Button.Position = [699 13 112 44];
            app.VThnhTin22200162Button.Text = {'Võ Thành Tiến'; '22200162'};

            % Create GIITHIUNHMLabel
            app.GIITHIUNHMLabel = uilabel(app.Introduce_Tab);
            app.GIITHIUNHMLabel.HorizontalAlignment = 'center';
            app.GIITHIUNHMLabel.FontName = 'Times New Roman';
            app.GIITHIUNHMLabel.FontSize = 50;
            app.GIITHIUNHMLabel.FontWeight = 'bold';
            app.GIITHIUNHMLabel.FontColor = [1 1 1];
            app.GIITHIUNHMLabel.Position = [133 269 584 123];
            app.GIITHIUNHMLabel.Text = {'GIỚI THIỆU NHÓM'; '----------------------------------'};

            % Create Label_4
            app.Label_4 = uilabel(app.Introduce_Tab);
            app.Label_4.FontName = 'Times New Roman';
            app.Label_4.FontSize = 50;
            app.Label_4.FontColor = [1 1 1];
            app.Label_4.Position = [296 252 258 67];
            app.Label_4.Text = '---------------';

            % Create Button_2
            app.Button_2 = uibutton(app.Introduce_Tab, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_2Pushed, true);
<<<<<<< HEAD
            app.Button_2.Icon = 'C:\baiTapLon_THPPT\Pics\gitpic.png';
=======
            app.Button_2.Icon = fullfile(pathToMLAPP, 'Pics', 'gitpic.png');
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            app.Button_2.IconAlignment = 'center';
            app.Button_2.Position = [771 436 53 58];
            app.Button_2.Text = '';

            % Create NguynThV_22200186Panel
            app.NguynThV_22200186Panel = uipanel(app.Introduce_Tab);
            app.NguynThV_22200186Panel.ForegroundColor = [0 0 1];
            app.NguynThV_22200186Panel.Title = 'Nguyễn Thế Vỹ_22200186';
            app.NguynThV_22200186Panel.Visible = 'off';
            app.NguynThV_22200186Panel.BackgroundColor = [1 1 1];
<<<<<<< HEAD
=======
            app.NguynThV_22200186Panel.ButtonDownFcn = createCallbackFcn(app, @NguynThV_22200186PanelButtonDown, true);
>>>>>>> 339fe2b885a1e424a9e7945140cf593fb6260d79
            app.NguynThV_22200186Panel.FontName = 'Times New Roman';
            app.NguynThV_22200186Panel.FontAngle = 'italic';
            app.NguynThV_22200186Panel.FontWeight = 'bold';
            app.NguynThV_22200186Panel.FontSize = 20;
            app.NguynThV_22200186Panel.Position = [195 234 462 243];

            % Create XButton
            app.XButton = uibutton(app.NguynThV_22200186Panel, 'push');
            app.XButton.ButtonPushedFcn = createCallbackFcn(app, @XButtonPushed, true);
            app.XButton.BackgroundColor = [1 0 0];
            app.XButton.FontName = 'Calibri Light';
            app.XButton.FontSize = 15;
            app.XButton.FontWeight = 'bold';
            app.XButton.FontColor = [1 0 0];
            app.XButton.Position = [425 215 33 28];
            app.XButton.Text = 'X';

            % Create CngvicLabel
            app.CngvicLabel = uilabel(app.NguynThV_22200186Panel);
            app.CngvicLabel.FontName = 'Times New Roman';
            app.CngvicLabel.FontSize = 20;
            app.CngvicLabel.FontWeight = 'bold';
            app.CngvicLabel.Position = [11 172 96 26];
            app.CngvicLabel.Text = 'Công việc:';

            % Create NghincuvthitkTabNghimTabNiSuyLabel
            app.NghincuvthitkTabNghimTabNiSuyLabel = uilabel(app.NguynThV_22200186Panel);
            app.NghincuvthitkTabNghimTabNiSuyLabel.FontName = 'Times New Roman';
            app.NghincuvthitkTabNghimTabNiSuyLabel.FontSize = 16;
            app.NghincuvthitkTabNghimTabNiSuyLabel.Position = [82 138 336 22];
            app.NghincuvthitkTabNghimTabNiSuyLabel.Text = 'Nghiên cứu và thiết kế Tab Nghiệm + Tab Nội Suy';

            % Create imtnhgiLabel
            app.imtnhgiLabel = uilabel(app.NguynThV_22200186Panel);
            app.imtnhgiLabel.FontName = 'Times New Roman';
            app.imtnhgiLabel.FontSize = 20;
            app.imtnhgiLabel.FontWeight = 'bold';
            app.imtnhgiLabel.Position = [11 98 160 26];
            app.imtnhgiLabel.Text = 'Điểm tự đánh giá:';

            % Create Label_5
            app.Label_5 = uilabel(app.NguynThV_22200186Panel);
            app.Label_5.FontName = 'Times New Roman';
            app.Label_5.FontSize = 22;
            app.Label_5.FontWeight = 'bold';
            app.Label_5.FontColor = [1 0 0];
            app.Label_5.Position = [211 46 30 44];
            app.Label_5.Text = '9.8';

            % Create VThnhTin_22200162Panel
            app.VThnhTin_22200162Panel = uipanel(app.Introduce_Tab);
            app.VThnhTin_22200162Panel.ForegroundColor = [0 0 1];
            app.VThnhTin_22200162Panel.Title = 'Võ Thành Tiến_22200162';
            app.VThnhTin_22200162Panel.Visible = 'off';
            app.VThnhTin_22200162Panel.FontName = 'Times New Roman';
            app.VThnhTin_22200162Panel.FontAngle = 'italic';
            app.VThnhTin_22200162Panel.FontWeight = 'bold';
            app.VThnhTin_22200162Panel.FontSize = 20;
            app.VThnhTin_22200162Panel.Position = [195 234 462 243];

            % Create XButton_5
            app.XButton_5 = uibutton(app.VThnhTin_22200162Panel, 'push');
            app.XButton_5.ButtonPushedFcn = createCallbackFcn(app, @XButton_5Pushed, true);
            app.XButton_5.BackgroundColor = [1 0 0];
            app.XButton_5.FontName = 'Calibri Light';
            app.XButton_5.FontSize = 15;
            app.XButton_5.FontWeight = 'bold';
            app.XButton_5.FontColor = [1 0 0];
            app.XButton_5.Position = [433 212 30 31];
            app.XButton_5.Text = 'X';

            % Create CngvicLabel_5
            app.CngvicLabel_5 = uilabel(app.VThnhTin_22200162Panel);
            app.CngvicLabel_5.FontName = 'Times New Roman';
            app.CngvicLabel_5.FontSize = 20;
            app.CngvicLabel_5.FontWeight = 'bold';
            app.CngvicLabel_5.Position = [30 177 96 26];
            app.CngvicLabel_5.Text = 'Công việc:';

            % Create NghincuvthitkTabHiQuyLabel
            app.NghincuvthitkTabHiQuyLabel = uilabel(app.VThnhTin_22200162Panel);
            app.NghincuvthitkTabHiQuyLabel.HorizontalAlignment = 'center';
            app.NghincuvthitkTabHiQuyLabel.FontName = 'Times New Roman';
            app.NghincuvthitkTabHiQuyLabel.FontSize = 16;
            app.NghincuvthitkTabHiQuyLabel.Position = [106 143 240 22];
            app.NghincuvthitkTabHiQuyLabel.Text = 'Nghiên cứu và thiết kế Tab Hồi Quy';

            % Create imtnhgiLabel_5
            app.imtnhgiLabel_5 = uilabel(app.VThnhTin_22200162Panel);
            app.imtnhgiLabel_5.FontName = 'Times New Roman';
            app.imtnhgiLabel_5.FontSize = 20;
            app.imtnhgiLabel_5.FontWeight = 'bold';
            app.imtnhgiLabel_5.Position = [30 103 160 26];
            app.imtnhgiLabel_5.Text = 'Điểm tự đánh giá:';

            % Create Label_9
            app.Label_9 = uilabel(app.VThnhTin_22200162Panel);
            app.Label_9.FontName = 'Times New Roman';
            app.Label_9.FontSize = 20;
            app.Label_9.FontWeight = 'bold';
            app.Label_9.FontColor = [1 0 0];
            app.Label_9.Position = [200 70 30 26];
            app.Label_9.Text = '9.2';

            % Create NguynVNhtThnh_22200145Panel
            app.NguynVNhtThnh_22200145Panel = uipanel(app.Introduce_Tab);
            app.NguynVNhtThnh_22200145Panel.ForegroundColor = [0 0 1];
            app.NguynVNhtThnh_22200145Panel.Title = 'Nguyễn Vũ Nhật Thành_22200145';
            app.NguynVNhtThnh_22200145Panel.Visible = 'off';
            app.NguynVNhtThnh_22200145Panel.FontName = 'Times New Roman';
            app.NguynVNhtThnh_22200145Panel.FontAngle = 'italic';
            app.NguynVNhtThnh_22200145Panel.FontWeight = 'bold';
            app.NguynVNhtThnh_22200145Panel.FontSize = 20;
            app.NguynVNhtThnh_22200145Panel.Position = [194 234 461 243];

            % Create XButton_3
            app.XButton_3 = uibutton(app.NguynVNhtThnh_22200145Panel, 'push');
            app.XButton_3.ButtonPushedFcn = createCallbackFcn(app, @XButton_3Pushed, true);
            app.XButton_3.BackgroundColor = [1 0 0];
            app.XButton_3.FontName = 'Calibri Light';
            app.XButton_3.FontSize = 15;
            app.XButton_3.FontWeight = 'bold';
            app.XButton_3.FontColor = [1 0 0];
            app.XButton_3.Position = [433 212 27 31];
            app.XButton_3.Text = 'X';

            % Create CngvicLabel_2
            app.CngvicLabel_2 = uilabel(app.NguynVNhtThnh_22200145Panel);
            app.CngvicLabel_2.FontName = 'Times New Roman';
            app.CngvicLabel_2.FontSize = 20;
            app.CngvicLabel_2.FontWeight = 'bold';
            app.CngvicLabel_2.Position = [6 169 96 26];
            app.CngvicLabel_2.Text = 'Công việc:';

            % Create NghincuvthitkTabohmLabel
            app.NghincuvthitkTabohmLabel = uilabel(app.NguynVNhtThnh_22200145Panel);
            app.NghincuvthitkTabohmLabel.HorizontalAlignment = 'center';
            app.NghincuvthitkTabohmLabel.FontName = 'Times New Roman';
            app.NghincuvthitkTabohmLabel.FontSize = 16;
            app.NghincuvthitkTabohmLabel.Position = [81 135 242 22];
            app.NghincuvthitkTabohmLabel.Text = 'Nghiên cứu và thiết kế Tab Đạo hàm';

            % Create imtnhgiLabel_2
            app.imtnhgiLabel_2 = uilabel(app.NguynVNhtThnh_22200145Panel);
            app.imtnhgiLabel_2.FontName = 'Times New Roman';
            app.imtnhgiLabel_2.FontSize = 20;
            app.imtnhgiLabel_2.FontWeight = 'bold';
            app.imtnhgiLabel_2.Position = [6 95 160 26];
            app.imtnhgiLabel_2.Text = 'Điểm tự đánh giá:';

            % Create Label_6
            app.Label_6 = uilabel(app.NguynVNhtThnh_22200145Panel);
            app.Label_6.FontName = 'Times New Roman';
            app.Label_6.FontSize = 22;
            app.Label_6.FontColor = [1 0 0];
            app.Label_6.Position = [207 50 33 29];
            app.Label_6.Text = '9.5';

            % Create NguyncThun_22200158Panel
            app.NguyncThun_22200158Panel = uipanel(app.Introduce_Tab);
            app.NguyncThun_22200158Panel.ForegroundColor = [0 0 1];
            app.NguyncThun_22200158Panel.Title = 'Nguyễn Đức Thuận_22200158';
            app.NguyncThun_22200158Panel.Visible = 'off';
            app.NguyncThun_22200158Panel.FontName = 'Times New Roman';
            app.NguyncThun_22200158Panel.FontAngle = 'italic';
            app.NguyncThun_22200158Panel.FontWeight = 'bold';
            app.NguyncThun_22200158Panel.FontSize = 20;
            app.NguyncThun_22200158Panel.Position = [194 234 462 243];

            % Create XButton_2
            app.XButton_2 = uibutton(app.NguyncThun_22200158Panel, 'push');
            app.XButton_2.ButtonPushedFcn = createCallbackFcn(app, @XButton_2Pushed, true);
            app.XButton_2.BackgroundColor = [1 0 0];
            app.XButton_2.FontName = 'Calibri Light';
            app.XButton_2.FontSize = 15;
            app.XButton_2.FontWeight = 'bold';
            app.XButton_2.FontColor = [1 0 0];
            app.XButton_2.Position = [434 212 27 31];
            app.XButton_2.Text = 'X';

            % Create imtnhgiLabel_3
            app.imtnhgiLabel_3 = uilabel(app.NguyncThun_22200158Panel);
            app.imtnhgiLabel_3.FontName = 'Times New Roman';
            app.imtnhgiLabel_3.FontSize = 20;
            app.imtnhgiLabel_3.FontWeight = 'bold';
            app.imtnhgiLabel_3.Position = [17 95 160 26];
            app.imtnhgiLabel_3.Text = 'Điểm tự đánh giá:';

            % Create NghincuvthitkTabTchPhnLabel_2
            app.NghincuvthitkTabTchPhnLabel_2 = uilabel(app.NguyncThun_22200158Panel);
            app.NghincuvthitkTabTchPhnLabel_2.HorizontalAlignment = 'center';
            app.NghincuvthitkTabTchPhnLabel_2.FontName = 'Times New Roman';
            app.NghincuvthitkTabTchPhnLabel_2.FontSize = 16;
            app.NghincuvthitkTabTchPhnLabel_2.Position = [88 135 250 22];
            app.NghincuvthitkTabTchPhnLabel_2.Text = 'Nghiên cứu và thiết kế Tab Tích Phân';

            % Create CngvicLabel_3
            app.CngvicLabel_3 = uilabel(app.NguyncThun_22200158Panel);
            app.CngvicLabel_3.FontName = 'Times New Roman';
            app.CngvicLabel_3.FontSize = 20;
            app.CngvicLabel_3.FontWeight = 'bold';
            app.CngvicLabel_3.Position = [17 169 96 26];
            app.CngvicLabel_3.Text = 'Công việc:';

            % Create Label_7
            app.Label_7 = uilabel(app.NguyncThun_22200158Panel);
            app.Label_7.FontName = 'Times New Roman';
            app.Label_7.FontSize = 22;
            app.Label_7.FontWeight = 'bold';
            app.Label_7.FontColor = [1 0 0];
            app.Label_7.Position = [207 56 33 29];
            app.Label_7.Text = '9.6';

            % Create LngTm_22200140Panel
            app.LngTm_22200140Panel = uipanel(app.Introduce_Tab);
            app.LngTm_22200140Panel.ForegroundColor = [0 0 1];
            app.LngTm_22200140Panel.Title = 'Lê Đăng Tâm_22200140';
            app.LngTm_22200140Panel.Visible = 'off';
            app.LngTm_22200140Panel.FontName = 'Times New Roman';
            app.LngTm_22200140Panel.FontAngle = 'italic';
            app.LngTm_22200140Panel.FontWeight = 'bold';
            app.LngTm_22200140Panel.FontSize = 20;
            app.LngTm_22200140Panel.Position = [195 234 462 243];

            % Create XButton_4
            app.XButton_4 = uibutton(app.LngTm_22200140Panel, 'push');
            app.XButton_4.ButtonPushedFcn = createCallbackFcn(app, @XButton_4Pushed, true);
            app.XButton_4.BackgroundColor = [1 0 0];
            app.XButton_4.FontName = 'Calibri Light';
            app.XButton_4.FontSize = 15;
            app.XButton_4.FontWeight = 'bold';
            app.XButton_4.FontColor = [1 0 0];
            app.XButton_4.Position = [433 211 29 32];
            app.XButton_4.Text = 'X';

            % Create CngvicLabel_4
            app.CngvicLabel_4 = uilabel(app.LngTm_22200140Panel);
            app.CngvicLabel_4.FontName = 'Times New Roman';
            app.CngvicLabel_4.FontSize = 20;
            app.CngvicLabel_4.FontWeight = 'bold';
            app.CngvicLabel_4.Position = [9 170 96 26];
            app.CngvicLabel_4.Text = 'Công việc:';

            % Create NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel
            app.NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel = uilabel(app.LngTm_22200140Panel);
            app.NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel.FontName = 'Times New Roman';
            app.NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel.FontSize = 16;
            app.NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel.Position = [60 126 301 39];
            app.NghincuvthitkTabGiithiunhmTnghpnidungvlmbocoLabel.Text = {'- Nghiên cứu và thiết kế Tab Giới thiệu nhóm'; '- Tổng hợp nội dung và làm báo cáo'};

            % Create imtnhgiLabel_4
            app.imtnhgiLabel_4 = uilabel(app.LngTm_22200140Panel);
            app.imtnhgiLabel_4.FontName = 'Times New Roman';
            app.imtnhgiLabel_4.FontSize = 20;
            app.imtnhgiLabel_4.FontWeight = 'bold';
            app.imtnhgiLabel_4.Position = [9 96 160 26];
            app.imtnhgiLabel_4.Text = 'Điểm tự đánh giá:';

            % Create Label_8
            app.Label_8 = uilabel(app.LngTm_22200140Panel);
            app.Label_8.HorizontalAlignment = 'center';
            app.Label_8.FontName = 'Times New Roman';
            app.Label_8.FontSize = 22;
            app.Label_8.FontWeight = 'bold';
            app.Label_8.FontColor = [1 0 0];
            app.Label_8.Position = [200 48 25 29];
            app.Label_8.Text = '9';

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