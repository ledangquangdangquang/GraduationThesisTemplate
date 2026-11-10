\NeedsTeXFormat{LaTeX2e}\ProvidesClass{thesis-config}[2024/11/26 Custom LaTeX Class]
\LoadClass[twoside]{article}            % Kế thừa lớp "article", in 2 mặt: lề trái/phải đổi theo trang chẵn/lẻ
%----- LOAD PACKAGE -----
\RequirePackage[utf8]{inputenc}         % UTF-8 cho input
\RequirePackage[T5]{fontenc}            % Mã hóa phông chữ cho Tiếng Việt
\RequirePackage{mathptmx}               % Time New Roman
\RequirePackage{listings}               % Thư viện chèn code
\RequirePackage{anyfontsize}            % Để dùng nhiều cỡ chữ
\RequirePackage{scrextend}
\RequirePackage{geometry}
\RequirePackage{graphicx}               % Thư viện chèn ảnh
\RequirePackage{float}                  % Set vị trí chèn ảnh
\RequirePackage{tikz}                   % add ảnh .svg thôi, tạo khung viền 
\RequirePackage{circuitikz}             % vẽ mạch điện 
\RequirePackage{siunitx}                % Để viết giá trị
\RequirePackage{indentfirst}            % thư viện thụt dòng 
\RequirePackage{helvet}                 % Font không chân (sans-serif)
\RequirePackage{titlesec}               % Thư viện để set up các kiểu chữ
\RequirePackage{stackengine}            % Gói để sử dụng gạch trên chữ
\RequirePackage{tabularx}               % Gói để căn vị trí cho bảng
\RequirePackage{caption}                % Gói để xóa dấu hai chấm
\RequirePackage{amsmath}                % Gói hỗ trợ xóa dấu ngoặc mặc định của phương trình (gói cho toán học)
\RequirePackage{amssymb}                % Gói hỗ trợ xóa dấu ngoặc mặc định của phương trình (gói cho toán học)
\RequirePackage{lipsum}                 % Gói tạo chữ linh tinh
\RequirePackage[unicode,hidelinks]{hyperref}      % Link có thể bấm nhưng không hiện màu/khung
% \RequirePackage[unicode]{hyperref}      % Link có thể bấm hiện màu/khung
\RequirePackage{enumitem}               % Để customize đề mục tự đếm
\RequirePackage{booktabs}               
\RequirePackage{multirow}               
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
%----- CONFIG PACKAGE -----
\KOMAoptions{fontsize=13pt}             % Đúng cách để đặt kích thước chữ với scrextend
\geometry{paperheight=29.7cm, paperwidth=21cm, right=2.5cm, left=3.5cm, top=2cm, bottom=2cm}
% Trang trắng do \cleardoublepage chèn vào thì không in số trang
\renewcommand{\cleardoublepage}{\clearpage\ifodd\c@page\else\hbox{}\thispagestyle{empty}\newpage\fi}
% \geometry{showframe}                  % Show margin
\AtBeginDocument{\usetikzlibrary{calc}} % Nạp thư viện calc của TikZ
\lstset{
    basicstyle=\ttfamily\fontsize{10}{12}\selectfont,
    frame=single,
    breaklines=true,
    columns=fullflexible,
    keepspaces=true,                     % Không mất khoảng trắng sau chữ có dấu (thay bằng literate bên dưới)
    literate=% Chữ tiếng Việt có dấu: listings không tự đọc được ký tự UTF-8 nhiều byte, nên thay bằng lệnh của bảng mã T5
    {á}{{\'a}}1 {Á}{{\'A}}1 {à}{{\`a}}1 {À}{{\`A}}1 {ả}{{\h a}}1 {Ả}{{\h A}}1 {ã}{{\~a}}1 {Ã}{{\~A}}1
    {ạ}{{\d a}}1 {Ạ}{{\d A}}1 {ă}{{\u a}}1 {Ă}{{\u A}}1 {ắ}{{\'\abreve}}1 {Ắ}{{\'\ABREVE}}1 {ằ}{{\`\abreve}}1 {Ằ}{{\`\ABREVE}}1
    {ẳ}{{\h\abreve}}1 {Ẳ}{{\h\ABREVE}}1 {ẵ}{{\~\abreve}}1 {Ẵ}{{\~\ABREVE}}1 {ặ}{{\d\abreve}}1 {Ặ}{{\d\ABREVE}}1 {â}{{\^a}}1 {Â}{{\^A}}1
    {ấ}{{\'\acircumflex}}1 {Ấ}{{\'\ACIRCUMFLEX}}1 {ầ}{{\`\acircumflex}}1 {Ầ}{{\`\ACIRCUMFLEX}}1 {ẩ}{{\h\acircumflex}}1 {Ẩ}{{\h\ACIRCUMFLEX}}1 {ẫ}{{\~\acircumflex}}1 {Ẫ}{{\~\ACIRCUMFLEX}}1
    {ậ}{{\d\acircumflex}}1 {Ậ}{{\d\ACIRCUMFLEX}}1 {é}{{\'e}}1 {É}{{\'E}}1 {è}{{\`e}}1 {È}{{\`E}}1 {ẻ}{{\h e}}1 {Ẻ}{{\h E}}1
    {ẽ}{{\~ e}}1 {Ẽ}{{\~ E}}1 {ẹ}{{\d e}}1 {Ẹ}{{\d E}}1 {ê}{{\^e}}1 {Ê}{{\^E}}1 {ế}{{\'\ecircumflex}}1 {Ế}{{\'\ECIRCUMFLEX}}1
    {ề}{{\`\ecircumflex}}1 {Ề}{{\`\ECIRCUMFLEX}}1 {ể}{{\h\ecircumflex}}1 {Ể}{{\h\ECIRCUMFLEX}}1 {ễ}{{\~\ecircumflex}}1 {Ễ}{{\~\ECIRCUMFLEX}}1 {ệ}{{\d\ecircumflex}}1 {Ệ}{{\d\ECIRCUMFLEX}}1
    {í}{{\'\i}}1 {Í}{{\'I}}1 {ì}{{\`\i}}1 {Ì}{{\`I}}1 {ỉ}{{\h i}}1 {Ỉ}{{\h I}}1 {ĩ}{{\~\i}}1 {Ĩ}{{\~I}}1
    {ị}{{\d i}}1 {Ị}{{\d I}}1 {ó}{{\'o}}1 {Ó}{{\'O}}1 {ò}{{\`o}}1 {Ò}{{\`O}}1 {ỏ}{{\h o}}1 {Ỏ}{{\h O}}1
    {õ}{{\~o}}1 {Õ}{{\~O}}1 {ọ}{{\d o}}1 {Ọ}{{\d O}}1 {ô}{{\^o}}1 {Ô}{{\^O}}1 {ố}{{\'\ocircumflex}}1 {Ố}{{\'\OCIRCUMFLEX}}1
    {ồ}{{\`\ocircumflex}}1 {Ồ}{{\`\OCIRCUMFLEX}}1 {ổ}{{\h\ocircumflex}}1 {Ổ}{{\h\OCIRCUMFLEX}}1 {ỗ}{{\~\ocircumflex}}1 {Ỗ}{{\~\OCIRCUMFLEX}}1 {ộ}{{\d\ocircumflex}}1 {Ộ}{{\d\OCIRCUMFLEX}}1
    {ơ}{{\ohorn}}1 {Ơ}{{\OHORN}}1 {ớ}{{\'\ohorn}}1 {Ớ}{{\'\OHORN}}1 {ờ}{{\`\ohorn}}1 {Ờ}{{\`\OHORN}}1 {ở}{{\h\ohorn}}1 {Ở}{{\h\OHORN}}1
    {ỡ}{{\~\ohorn}}1 {Ỡ}{{\~\OHORN}}1 {ợ}{{\d\ohorn}}1 {Ợ}{{\d\OHORN}}1 {ú}{{\'u}}1 {Ú}{{\'U}}1 {ù}{{\`u}}1 {Ù}{{\`U}}1
    {ủ}{{\h u}}1 {Ủ}{{\h U}}1 {ũ}{{\~u}}1 {Ũ}{{\~U}}1 {ụ}{{\d u}}1 {Ụ}{{\d U}}1 {ư}{{\uhorn}}1 {Ư}{{\UHORN}}1
    {ứ}{{\'\uhorn}}1 {Ứ}{{\'\UHORN}}1 {ừ}{{\`\uhorn}}1 {Ừ}{{\`\UHORN}}1 {ử}{{\h\uhorn}}1 {Ử}{{\h\UHORN}}1 {ữ}{{\~\uhorn}}1 {Ữ}{{\~\UHORN}}1
    {ự}{{\d\uhorn}}1 {Ự}{{\d\UHORN}}1 {ý}{{\'y}}1 {Ý}{{\'Y}}1 {ỳ}{{\`y}}1 {Ỳ}{{\`Y}}1 {ỷ}{{\h y}}1 {Ỷ}{{\h Y}}1
    {ỹ}{{\~y}}1 {Ỹ}{{\~Y}}1 {ỵ}{{\d y}}1 {Ỵ}{{\d Y}}1 {đ}{{\dj}}1 {Đ}{{\DJ}}1
}
\setlist[itemize,1]{leftmargin=4em, labelsep=0.5em, noitemsep, topsep=0pt}
\setlist[itemize,2]{leftmargin=2em, labelsep=0.5em, noitemsep, topsep=0pt, label=$\circ$}
\setlist[itemize,3]{leftmargin=2em, labelsep=0.5em, noitemsep, topsep=0pt, label=$\ast$}
%----- DEFINITIONS -----
\newtheorem{theorem}{Định lý}[section]
\newtheorem{defn}[theorem]{Định nghĩa}
\newtheorem{corollary}[theorem]{Hệ quả}
\newtheorem{lemma}[theorem]{Bổ đề}
\def\degreeyear#1{\gdef\@degreeyear{#1}}            % Định nghĩa năm tốt nghiệp
\def\degreemonth#1{\gdef\@degreemonth{#1}}          % Định nghĩa tháng tốt nghiệp
\def\degree#1{\gdef\@degree{#1}}                    % Định nghĩa tên đồ án 
\def\advisor#1{\gdef\@advisor{#1}}                  % Định nghĩa GVHD
\def\department#1{\gdef\@department{#1}}            % Định nghĩa bộ môn
\def\school#1{\gdef\@school{#1}}                    % Định nghĩa trường 
\def\university#1{\gdef\@university{#1}}            % Định nghĩa Đại học
\def\universitycity#1{\gdef\@universitycity{#1}}    % Định nghĩa Nơi học đại học
\def\authoremail#1{\gdef\@authoremail{#1}}          % Định nghĩa email
\def\specialization#1{\gdef\@specialization{#1}}    % Định nghĩa ngành học
\def\major#1{\gdef\@major{#1}}                      % Định nghĩa chuyên ngành
\def\members#1{\gdef\@members{#1}}                  % Thành viên nhóm (chỉ dùng cho \groupTitle), cách nhau bằng \\
\def\classcode#1{\gdef\@classcode{#1}}              % Mã lớp học (chỉ dùng cho \groupTitle)
%----- BÌA -----
\newcommand{\@coverhead}{ % Phần đầu chung của hai bìa
    \thispagestyle{empty} % Bỏ dấu trang
    \begin{center}
        \textbf{\fontsize{15pt}{0pt}\selectfont \MakeUppercase\@university\\}
        \vspace{-1.5ex}
        \begin{tikzpicture}
            \draw[thick] (0, 5cm) -- (3.79cm,5cm);
        \end{tikzpicture}
        \vspace{1em}
        \begin{figure}[H]
            \centering
            \includegraphics[width=2.43cm, height=3.94cm]{Images/Logo_Hust.png}
        \end{figure}
        \vspace{1.5cm}
        {\sffamily \fontsize{21pt}{0pt}\selectfont {\textbf{\MakeUppercase\@degree}}\\}
        \vspace{2em}
        {\sffamily \fontsize{17pt}{0pt}\selectfont {\textbf{\MakeUppercase\@title}}\\}
}
\newcommand{\@coverfoot}{ % Phần cuối chung của hai bìa
        \vfill
        \textbf{\MakeUppercase\@universitycity \ \ \@degreemonth/\@degreeyear}
    \end{center}
    \cleardoublepage
}
\renewcommand{\maketitle}{ % Define lại maketitle  (XỬ LÝ BÌA)
    \@coverhead
        \vspace{2em}
        \textbf{\fontsize{11pt}{0pt}\selectfont \@author\\}
        \vspace{1ex}
      
        {\fontsize{14pt}{0pt}\selectfont \href{mailto:\@authoremail}{\@authoremail}}\\
        \vspace{1em}
        \textbf{\fontsize{14pt}{0pt}\selectfont \@specialization\\}
        \vspace{1ex}
        \textbf{\fontsize{14pt}{0pt}\selectfont \@major \\}
        \vspace{5em}
        \begin{tabular}{  l  l  r }
            \textbf{Giảng viên hướng dẫn:}&\@advisor& \fontsize{10pt}{0pt}\selectfont \stackon{Chữ ký của GVHD}{\rule{4cm}{0.4pt}} \\ [3em] 
            \textbf{Bộ môn:} & \multicolumn{2}{l}{\@department}\\ [1ex] 
            \textbf{Trường:}&\multicolumn{2}{l}{\@school}\\
        \end{tabular}
    \@coverfoot
}
%---- BÌA CHO NHÓM -----
\newcommand{\groupTitle}{ % Dành cho báo cáo nhóm, báo cáo môn học
    \@coverhead
        \vspace{1em}
        \textbf{\fontsize{14pt}{0pt}\selectfont \@specialization\\}
        \vspace{1ex}
        \vspace{5em}
        \begin{tabular}{  l  l  r }
            \textbf{Sinh viên thực hiện:}&\multicolumn{2}{l}{\begin{tabular}[t]{@{}l@{}}\@members\end{tabular}}\\[1ex]
            \textbf{Giảng viên hướng dẫn:}&\@advisor  \\ [1ex]
            \textbf{Bộ môn:} & \multicolumn{2}{l}{\@department}\\ [1ex]
            \textbf{Mã lớp học:}&\multicolumn{2}{l}{\@classcode}\\ [1ex]
            \textbf{Trường:}&\multicolumn{2}{l}{\@school}\\
        \end{tabular}
    \@coverfoot
}
%----- XỬ LÝ ĐẦU CHƯƠNG -----
\newcommand{\chaptercustom}[2]{ % Setup chương tự động
    \setcounter{section}{\numexpr#1-1\relax}
    \refstepcounter{section} % Tăng (không chỉ đặt) số chương để mục con và định lý quay về 1
    \section*{\centering CHƯƠNG #1. #2}
    \addcontentsline{toc}{section}{\numberline{}CHƯƠNG #1. #2}
    \setcounter{figure}{0}
    \setcounter{table}{0}
    \setcounter{equation}{0}
}
% --- XỬ LÝ HÌNH ẢNH --- 
\newcommand{\figurecustom}[3]{% Setup hình ảnh
    \begin{figure}[H]
        \centering
        \includegraphics[width=#1\textwidth]{#2}
        \caption{#3}
        \label{#2}
    \end{figure}
}
%--- XỬ LÝ CON CHỮ ---
\renewcommand{\baselinestretch}{1.2} % Giãn dòng 1.2
\setlength{\parskip}{6pt} % Spacing after
\setlength{\parindent}{1cm} % Set thụt đầu dòng
\setlength{\emergencystretch}{3em} % Cho giãn dòng thêm thay vì để chữ tràn lề phải
\raggedbottom % twoside mặc định giãn khoảng trống cho đầy trang; tắt để không hở lớn quanh hình/bảng
%--- XỬ LÝ PHƯƠNG TRÌNH ---
\makeatletter
\renewcommand{\theequation}{\thesection.\arabic{equation}} % Số trơn để \ref không in kèm chữ "PT"
\def\tagform@#1{\maketag@@@{\textit{\fontsize{12pt}{0}\selectfont PT #1}}} % Nhãn "PT 3.1" cạnh phương trình, không có ngoặc
\makeatother
%--- XỬ LÝ MỤC LỤC ---
\renewcommand{\contentsname}{\centering MỤC LỤC} % Đổi tiêu đề và căn giữa
%--- XỬ LÝ BẢNG BIỂU ---
\renewcommand{\listtablename}{\centering DANH MỤC BẢNG BIỂU} % Đổi tiêu đề và căn giữa
\renewcommand{\tablename}{Bảng}
\renewcommand{\thetable}{\thesection.\arabic{table}} % Số trơn để \ref in cùng cỡ chữ với văn bản
\DeclareCaptionFont{size12}{\fontsize{12pt}{14pt}\selectfont}
\captionsetup[table]{labelsep = space, font = {size12, it}} % Chú thích bảng: nghiêng, 12pt
\newcolumntype{s}{>{\centering\arraybackslash\hsize=.7\hsize}X}
\newcolumntype{a}{>{\centering\arraybackslash\hsize=1.3\hsize}X}
%--- DANH MỤC HÌNH VẼ ---
\renewcommand{\listfigurename}{\centering DANH MỤC HÌNH VẼ} % Đổi tiêu đề và căn giữa
\renewcommand{\figurename}{Hình}
\renewcommand{\thefigure}{\thesection.\arabic{figure}} % Số trơn để \ref in cùng cỡ chữ với văn bản
\captionsetup[figure]{labelsep = space, font = {size12, it}} % Chú thích hình: nghiêng, 12pt
\floatname{algorithm}{Thuật toán}
%--- XỬ LÝ TÀI LIỆU THAM KHẢO ---
\renewcommand{\refname}{\centering TÀI LIỆU THAM KHẢO}
%--- XỬ LÝ ĐỀ MỤC ---
\setcounter{secnumdepth}{4} % Khai báo là có 4 heading
\titlespacing*{\section}{0pt}{0pt}{30pt} % Heading 1
\titleformat*{\section}{\fontsize{16pt}{0pt}\selectfont \bfseries}
\titlespacing*{\subsection}{0pt}{10pt}{0pt} % Heading 2
\titleformat*{\subsection}{\fontsize{14pt}{0pt}\selectfont \bfseries}
\titlespacing*{\subsubsection}{0pt}{10pt}{0pt} % Heading 3
\titleformat*{\subsubsection}{\fontsize{13pt}{0pt}\selectfont \bfseries \itshape}
\titlespacing*{\paragraph}{0pt}{10pt}{0pt} % Heading 4
\titleformat*{\paragraph}{\fontsize{13pt}{0pt}\selectfont \itshape}
\endinput
