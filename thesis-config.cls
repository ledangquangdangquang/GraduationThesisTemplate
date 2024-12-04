\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis-config}[2024/11/26 Custom LaTeX Class]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{article} % Kế thừa lớp "article"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nạp package cần thiết
\RequirePackage[utf8]{inputenc} % UTF-8 cho input
\RequirePackage[T5]{fontenc}    % Mã hóa phông chữ cho Tiếng Việt
\RequirePackage{mathptmx} % Time New Roman
\RequirePackage{scrextend}
\RequirePackage{geometry}
\RequirePackage{graphicx} % Thư viện chèn ảnh
\RequirePackage{float}% Set vị trí chèn ảnh
\RequirePackage{tikz} % add ảnh .svg thôi, tạo khung viền 
\RequirePackage{circuitikz} % vẽ mạch điện 
\RequirePackage{siunitx} % Để viết giá trị
\RequirePackage{indentfirst} % thư viện thụt dòng 
\RequirePackage{helvet}   % Font không chân (sans-serif)
\RequirePackage{titlesec} % Thư viện để set up các kiểu chữ
\RequirePackage{stackengine} % Gói để sử dụng gạch trên chữ
\RequirePackage{tabularx} % Gói để căn vị trí cho bảng
\RequirePackage{caption} % Gói để xóa dấu hai chấm
\RequirePackage{amsmath} % Gói hỗ trợ xóa dấu ngoặc mặc định của phương trình (gói cho toán học)
\RequirePackage{lipsum} % Gói tạo chữ linh tinh
\RequirePackage[unicode]{hyperref} % Để bấm mục lục
\RequirePackage{enumitem} % Để customize đề mục tự đếm
\RequirePackage{datetime} % Để bóc tách ngày tháng

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thiết lập mặc định cho package
\KOMAoptions{fontsize=13pt} % Đúng cách để đặt kích thước chữ với scrextend
\geometry{paperheight=29.7cm, paperwidth=21cm, right=2.5cm, left=3.5cm, top=2cm, bottom=2cm}
% \geometry{showframe} % Show margin
\AtBeginDocument{\usetikzlibrary{calc}} % Nạp thư viện calc của TikZ

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINITIONS
\newtheorem{theorem}{Định lý}[section]
\newtheorem{defn}[theorem]{Định nghĩa}
\newtheorem{corollary}[theorem]{Hệ quả}
\newtheorem{lemma}[theorem]{Bổ đề}
\def\degreeyear#1{\gdef\@degreeyear{#1}}  % Định nghĩa năm tốt nghiệp
\def\degreemonth#1{\gdef\@degreemonth{#1}} % Định nghĩa tháng tốt nghiệp
\def\degree#1{\gdef\@degree{#1}} % Định nghĩa tên đồ án (ĐỒ ÁN TỐT NGHIỆP)
\def\advisor#1{\gdef\@advisor{#1}} % Định nghĩa GVHD
\def\department#1{\gdef\@department{#1}} % Định nghĩa bộ môn
\def\school#1{\gdef\@school{#1}} % Định nghĩa trường (Điện - Điện tử)
\def\university#1{\gdef\@university{#1}} % Định nghĩa Đại học
\def\universitycity#1{\gdef\@universitycity{#1}} % Định nghĩa Nơi học đại học
\def\authoremail#1{\gdef\@authoremail{#1}} % Định nghĩa email
\def\specialization#1{\gdef\@specialization{#1}} % Định nghĩa ngành học
\def\major#1{\gdef\@major{#1}} % Định nghĩa chuyên ngành
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REDEFINITIONS
% XỬ LÝ BÌA
\renewcommand{\maketitle}{ % Defin lại maketitle
    \thispagestyle{empty} % Bỏ dấu trang

    \begin{center}
        % Tên trường     
        \textbf{\fontsize{15pt}{0pt}\selectfont \MakeUppercase\@university\\}

        % Vẽ đường thẳng 
        \vspace{-1.5ex}
        \begin{tikzpicture}
            \draw[thick] (0, 5cm) -- (3.79cm,5cm);
        \end{tikzpicture}
        
        % Chèn hình ảnh 
        \vspace{1em}
        \begin{figure}[H]
            \centering
            \includegraphics[width=2.43cm, height=3.94cm]{image/Logo_Hust.png}
        \end{figure}
        
        % Tên Đồ án
        \vspace{1.5cm}
        {\sffamily \fontsize{21pt}{0pt}\selectfont {\textbf{\MakeUppercase\@degree}}\\}
        \vspace{2em}
        {\sffamily \fontsize{17pt}{0pt}\selectfont {\textbf{\MakeUppercase\@title}}\\}
        % Tên 
        \vspace{2em}
        \textbf{\fontsize{11pt}{0pt}\selectfont \@author\\}
        \vspace{1ex}
        % \fontsize{14pt}{0pt}\selectfont \href{mailto:email.ten@sis.hust.edu.vn}{\@authoremail}}\\
        {\fontsize{14pt}{0pt}\selectfont \href{mailto:\@authoremail}{\@authoremail}}\\
        \vspace{1em}
        \textbf{\fontsize{14pt}{0pt}\selectfont \@specialization\\}
        \vspace{1ex}
        \textbf{\fontsize{14pt}{0pt}\selectfont Chuyên ngành \@major \\}

        % Bảng thông tin
        \vspace{5em}
        \begin{tabular}{  l  l  r }
            \textbf{Giảng viên hướng dẫn:}&\@advisor& \fontsize{10pt}{0pt}\selectfont \stackon{Chữ ký của GVHD}{\rule{4cm}{0.4pt}} \\ [3em] 
            \textbf{Bộ môn:} & \multicolumn{2}{l}{\@department}\\ [1ex] 
            \textbf{Trường:}&\multicolumn{2}{l}{\@school}\\
        \end{tabular}

        % Thời gian
        \vfill

        \textbf{\MakeUppercase\@universitycity, \@degreemonth/ \@degreeyear}
    \end{center}
    \cleardoublepage
}
% XỬ LÝ CON CHỮ
\renewcommand{\baselinestretch}{1.2} % Giãn dòng 1.2
\setlength{\parskip}{6pt} % Spacing after
\setlength{\parindent}{1cm} % Set thụt đầu dòng
% XỬ LÝ PHƯƠNG TRÌNH
\makeatletter
\renewcommand{\theequation}{\textit{\fontsize{12pt}{0}\selectfont PT \thesection.\arabic{equation}}} % thay đổi đánh số phương trình mặc định 
\def\tagform@#1{\maketag@@@{\textnormal{#1}}} % Xóa dấu ngoặc quanh số phương trình
\makeatother
% XỬ LÝ MỤC LỤC
\renewcommand{\contentsname}{\centering MỤC LỤC} % Đổi tiêu đề và căn giữa
% XỬ LÝ BẢNG BIỂU
\renewcommand{\listtablename}{\centering DANH MỤC BẢNG BIỂU} % Đổi tiêu đề và căn giữa
\renewcommand{\tablename}{\textit{\fontsize{12pt}{0}\selectfont Bảng}} % Đổi tiêu đề và căn giữa
\renewcommand{\thetable}{\textit{\fontsize{12pt}{0}\selectfont \thesection.\arabic{table}}} 
\captionsetup[table]{labelsep = space}
\newcolumntype{s}{>{\centering\arraybackslash\hsize=.7\hsize}X}
\newcolumntype{a}{>{\centering\arraybackslash\hsize=1.3\hsize}X}
% DANH MỤC HÌNH VẼ
\renewcommand{\listfigurename}{\centering DANH MỤC HÌNH VẼ} % Đổi tiêu đề và căn giữa
\renewcommand{\figurename}{\textit{\fontsize{12pt}{0}\selectfont Hình}} % Đổi tiêu đề và căn giữa
\renewcommand{\thefigure}{\textit{\fontsize{12pt}{0}\selectfont \thesection.\arabic{figure}}} 
\captionsetup[figure]{labelsep = space}
% XỬ LÝ TÀI LIỆU THAM KHẢO
\renewcommand{\refname}{\centering TÀI LIỆU THAM KHẢO}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% XỬ LÝ ĐỀ MỤC
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
