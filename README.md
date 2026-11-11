<h1 align = "center">Mẫu Đồ Án Tốt Nghiệp HUST</h1>
<p align="center">
  <img src="Images/Logo_Hust.png" alt="Logo Hust" width="107"/>
</p>

Đây là mẫu luận văn tốt nghiệp được thiết kế dành cho sinh viên Đại học Bách Khoa Hà Nội (HUST). Mẫu sử dụng LaTeX để đảm bảo tài liệu được trình bày chuyên nghiệp, đồng thời cung cấp các công cụ tự động hóa giúp quá trình biên soạn trở nên dễ dàng và hiệu quả hơn.

## Tính Năng Nổi Bật

- **Định dạng chuẩn HUST**: Cấu hình sẵn lề, font chữ, cỡ chữ, giãn dòng theo quy định.
- **Lệnh tùy chỉnh tiện lợi**: Cung cấp các lệnh ngắn gọn để tạo chương, chèn hình ảnh, giúp nội dung nhất quán.
- **Tự động hóa**: Chương trình viết bằng Rust (`AutoGenNextChapter.exe`, chạy trên Windows) giúp tự động tạo file chương mới và cập nhật vào file `main.tex`.
- **Hỗ trợ bìa linh hoạt**: Cung cấp mẫu bìa cho cả đồ án cá nhân và báo cáo nhóm.
- **Phiếu in sẵn**: Phiếu nhiệm vụ và hai phiếu đánh giá (cán bộ hướng dẫn, cán bộ phản biện) theo mẫu của Trường Điện – Điện tử.
- **In hai mặt**: Lề đóng gáy luôn nằm đúng phía; mặc định không tự chèn trang trắng.
- **Đánh số tự động**: Hình, bảng, phương trình, định lý được đánh số theo chương và tự quay về 1 ở chương mới.
- **Mã nguồn có dấu**: Khối `lstlisting` nhận tiếng Việt có dấu.
- **Tài liệu hướng dẫn đi kèm**: `main.pdf` giải thích từng tính năng kèm ví dụ ngay trên trang.
- **Cấu trúc rõ ràng**: Dự án được chia thành các thư mục riêng cho phần mở đầu, nội dung, và kết luận, giúp dễ dàng quản lý.

## Cấu Trúc Dự Án

```
GraduationThesisTemplate/
├── MoDau/                  # Chương Mở đầu
├── NoiDung/                # Các chương nội dung chính
├── KetThuc/                # Chương Kết luận và phụ lục
├── Images/                 # Thư mục chứa hình ảnh minh họa
├── main.tex                # Tệp LaTeX chính để biên dịch
├── AutoGenNextChapter.exe  # Chương trình (Rust, Windows) tự động tạo chương mới
├── thesis-config.cls       # Tệp định dạng và chứa các lệnh tùy chỉnh
├── main.pdf                # Tệp PDF mẫu đã biên dịch, kiêm tài liệu hướng dẫn
└── README.md               # Tệp hướng dẫn sử dụng
```

## Bắt Đầu Nhanh

### 1. Cài Đặt Môi Trường (Trên Máy Tính Cá Nhân)

#### Windows

**Phần mềm yêu cầu:**

1.  **[Visual Studio Code](https://code.visualstudio.com/)**: Trình soạn thảo code.
    -   Cài đặt tiện ích **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** để hỗ trợ biên dịch LaTeX.
2.  **[MiKTeX](https://miktex.org/download)**: Bộ phân phối LaTeX cho Windows.
3.  **[Strawberry Perl](https://strawberryperl.com/)**: Cần thiết để `latexmk` (công cụ biên dịch) hoạt động.

**Các bước cài đặt:**

1.  Cài đặt lần lượt các phần mềm trên.
2.  Mở **MiKTeX Console**, vào mục **Updates** và cập nhật tất cả các gói lên phiên bản mới nhất.
3.  Mở dự án bằng VS Code. VS Code sẽ tự động nhận diện đây là một dự án LaTeX thông qua tiện ích LaTeX Workshop.

#### Ubuntu / Debian

Cài `latexmk` và các gói TeX Live mà mẫu cần bằng một lệnh:

```bash
sudo apt install latexmk texlive-latex-extra texlive-lang-other texlive-science texlive-pictures texlive-publishers texlive-fonts-recommended
```

| Gói | Dùng cho |
| --- | --- |
| `latexmk` | Công cụ biên dịch |
| `texlive-latex-extra` | titlesec, stackengine, enumitem, multirow, lipsum, anyfontsize... |
| `texlive-lang-other` | vntex: font và bảng mã tiếng Việt (T5) |
| `texlive-science` | siunitx, algorithm, algpseudocode |
| `texlive-pictures` | tikz, circuitikz |
| `texlive-publishers` | Kiểu trích dẫn IEEEtran |
| `texlive-fonts-recommended` | Font Times và Helvetica |

Sau đó biên dịch bằng dòng lệnh (xem mục 2), hoặc dùng VS Code với tiện ích LaTeX Workshop như trên Windows. Không cần cài Perl riêng vì Ubuntu đã có sẵn.

### 2. Biên Dịch Dự Án

-   **Cách 1: Dùng VS Code (Khuyên dùng)**
    1.  Mở file `main.tex`.
    2.  Nhấn tổ hợp phím `Ctrl+Alt+B` hoặc click vào biểu tượng ✓ **Build LaTeX project** ở góc cuối bên trái để biên dịch.
    3.  Nhấn `Ctrl+Alt+V` để xem file PDF kết quả ngay trong VS Code.

-   **Cách 2: Dùng Dòng Lệnh**
    Mở terminal trong thư mục gốc của dự án và chạy lệnh:
    ```bash
    latexmk -pdf main.tex
    ```

### 3. Sử Dụng Trên Overleaf

1.  Tải file `GraduationThesisTemplate.zip` ở trang [Releases](https://github.com/ledangquangdangquang/GraduationThesisTemplate/releases/latest) (hoặc tự nén toàn bộ thư mục dự án thành một file `.zip`).
2.  Đăng nhập vào [Overleaf](https://www.overleaf.com/), chọn **New Project** -> **Upload Project**.
3.  Tải file `.zip` lên.

## Hướng Dẫn Sử Dụng

### 1. Cấu Hình Thông Tin Đồ Án

Mở file `main.tex` và chỉnh sửa các thông tin cơ bản trong phần `----- PERSONAL INFORMATION -----` bằng các lệnh tương ứng:

```latex
\author{Tên của bạn}
\title{Tên đề tài đồ án}
\degree{Đồ án tốt nghiệp}
\advisor{Tên giảng viên hướng dẫn}
% ... và các thông tin khác
```

### 2. Sử Dụng Các Lệnh Tùy Chỉnh

File `thesis-config.cls` đã định nghĩa sẵn một số lệnh để giúp bạn soạn thảo nhanh hơn:

-   **Tạo chương mới**:
    ```latex
    \chaptercustom{<số thứ tự>}{<Tên chương>}
    % Ví dụ: \chaptercustom{1}{TỔNG QUAN VỀ ĐỀ TÀI}
    ```
    Lệnh này tự đưa chương vào mục lục và đặt lại số mục, hình, bảng, phương trình, định lý về 1. Không cần viết thêm `\setcounter{section}{...}`.

-   **Chèn hình ảnh**:
    ```latex
    \figurecustom{<tỷ lệ rộng>}{<đường dẫn file>}{<chú thích>}
    % Ví dụ: \figurecustom{0.8}{Images/Logo_Hust.png}{Logo Đại học Bách Khoa Hà Nội}
    % Tham chiếu hình ảnh 
    % \ref{Images/Logo_Hust.png}
    ```
    Trong đó, `tỷ lệ rộng` là số từ 0 đến 1, tương ứng với chiều rộng của ảnh so với chiều rộng của trang.

-   **Chú thích hình và bảng**:
    Kiểu chữ của chú thích (nghiêng, cỡ 12pt) đã được định dạng sẵn, chỉ cần viết:
    ```latex
    \caption{Kết quả thí nghiệm}
    ```

-   **Sử dụng bìa báo cáo nhóm**:
    File `MoDau/Bia.tex` gọi `\maketitle` hai lần (bìa chính và bìa lót). Nếu làm báo cáo nhóm, hãy thay cả hai dòng đó bằng một dòng `\groupTitle`.
    ```latex
    % \maketitle % Bìa chính cho đồ án cá nhân
    % \maketitle % Bìa lót cho đồ án cá nhân
    \groupTitle % Bìa cho báo cáo nhóm
    ```
    *Lưu ý: Khai báo thành viên nhóm và mã lớp trong `main.tex`:*
    ```latex
    \members{Nguyễn Văn A 2022xxxx \\ Nguyễn Văn B 2022xxxx}
    \classcode{123456}
    ```

### 3. Phiếu Nhiệm Vụ, Phiếu Đánh Giá Và In Một Mặt

-   **Bỏ trang không cần**: Phiếu nhiệm vụ và phiếu đánh giá được in trống để giảng viên điền tay. Nếu không cần trang nào, thêm dấu `%` trước dòng `\input` tương ứng trong `main.tex`:
    ```latex
    % \input{MoDau/PhieuDanhGiaCanBoPhanBien}
    ```

-   **Trang trắng khi in hai mặt**: Mặc định mẫu không tự chèn trang trắng, các trang nối tiếp nhau. Chỗ nào muốn bắt đầu ở mặt trước của tờ giấy thì thêm `\cleardoublepage` ngay trước chỗ đó. Nếu muốn mỗi trang ở phần mở đầu (bìa, phiếu, lời cảm ơn, mục lục) và Chương 1 tự bắt đầu ở mặt trước của tờ giấy, thêm tùy chọn `blank` ở dòng đầu của `main.tex`:
    ```latex
    \documentclass[blank]{thesis-config}
    ```
    Khi đánh số lại trang, dùng `\thesispagenumbering{...}` (như trong `main.tex`) thay cho `\pagenumbering{...}` để lề gáy vẫn nằm đúng bên.

-   **In một mặt**: Mẫu mặc định in hai mặt (lề gáy đổi bên theo trang chẵn/lẻ). Nếu in một mặt, sửa dòng `\LoadClass` của `thesis-config.cls` thành:
    ```latex
    \LoadClass{article}
    ```

### 4. Tự Động Tạo Chương Mới

Để tiết kiệm thời gian, bạn có thể chạy chương trình `AutoGenNextChapter.exe` (viết bằng Rust, chỉ chạy trên Windows) để tự động:
1.  Tạo một file `.tex` mới trong thư mục `NoiDung/` với cấu trúc sẵn có.
2.  Tự động thêm lệnh `\input{...}` cho chương mới vào file `main.tex`.

Chạy chương trình bằng lệnh (cmd hoặc powershell):
```bash
.\AutoGenNextChapter.exe
```

## Tài Liệu Mẫu

Tệp `main.pdf` là phiên bản mẫu đã được biên dịch, đồng thời là tài liệu hướng dẫn: Chương 1 tóm tắt quy định trình bày đồ án, Chương 2–5 giải thích từng tính năng của mẫu (khai báo thông tin, bìa, tạo chương, hình, bảng, phương trình, mạch điện, thuật toán, mã nguồn, trích dẫn) kèm ví dụ ngay trên trang.

## Liên Hệ

Nếu có bất kỳ câu hỏi hoặc góp ý nào, vui lòng tạo một [Issue](https://github.com/ledangquangdangquang/GraduationThesisTemplate/issues).