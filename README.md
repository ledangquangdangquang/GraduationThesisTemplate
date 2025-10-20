<h1 align = "center">Mẫu Đồ Án Tốt Nghiệp HUST</h1>
<p align="center">
  <img src="Images/Logo_Hust.png" alt="Logo Hust" width="107"/>
</p>

Đây là mẫu luận văn tốt nghiệp được thiết kế dành cho sinh viên Đại học Bách Khoa Hà Nội (HUST). Mẫu sử dụng LaTeX để đảm bảo tài liệu được trình bày chuyên nghiệp, đồng thời cung cấp các công cụ tự động hóa giúp quá trình biên soạn trở nên dễ dàng và hiệu quả hơn.

## Tính Năng Nổi Bật

- **Định dạng chuẩn HUST**: Cấu hình sẵn lề, font chữ, cỡ chữ, giãn dòng theo quy định.
- **Lệnh tùy chỉnh tiện lợi**: Cung cấp các lệnh ngắn gọn để tạo chương, chèn hình ảnh, giúp nội dung nhất quán.
- **Tự động hóa**: Script Python giúp tự động tạo file chương mới và cập nhật vào file `main.tex`.
- **Hỗ trợ bìa linh hoạt**: Cung cấp mẫu bìa cho cả đồ án cá nhân và báo cáo nhóm.
- **Cấu trúc rõ ràng**: Dự án được chia thành các thư mục riêng cho phần mở đầu, nội dung, và kết luận, giúp dễ dàng quản lý.

## Cấu Trúc Dự Án

```
GraduationThesisTemplate/
├── MoDau/                  # Chương Mở đầu
├── NoiDung/                # Các chương nội dung chính
├── KetThuc/                # Chương Kết luận và phụ lục
├── Images/                 # Thư mục chứa hình ảnh minh họa
├── main.tex                # Tệp LaTeX chính để biên dịch
├── AutoGenNextChapter.exe  # Script tự động tạo chương mới
├── thesis-config.cls       # Tệp định dạng và chứa các lệnh tùy chỉnh
├── main.pdf                # Tệp PDF mẫu đã biên dịch
└── README.md               # Tệp hướng dẫn sử dụng
```

## Bắt Đầu Nhanh

### 1. Cài Đặt Môi Trường (Trên Máy Tính Cá Nhân)

**Phần mềm yêu cầu:**

1.  **[Visual Studio Code](https://code.visualstudio.com/)**: Trình soạn thảo code.
    -   Cài đặt tiện ích **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** để hỗ trợ biên dịch LaTeX.
2.  **[MiKTeX](https://miktex.org/download)**: Bộ phân phối LaTeX cho Windows.
3.  **[Strawberry Perl](https://strawberryperl.com/)**: Cần thiết để `latexmk` (công cụ biên dịch) hoạt động.

**Các bước cài đặt:**

1.  Cài đặt lần lượt các phần mềm trên.
2.  Mở **MiKTeX Console**, vào mục **Updates** và cập nhật tất cả các gói lên phiên bản mới nhất.
3.  Mở dự án bằng VS Code. VS Code sẽ tự động nhận diện đây là một dự án LaTeX thông qua tiện ích LaTeX Workshop.

### 2. Biên Dịch Dự Án

-   **Cách 1: Dùng VS Code (Khuyên dùng)**
    1.  Mở file `main.tex`.
    2.  Nhấn tổ hợp phím `Ctrl+Alt+B` hoặc click vào biểu tượng ✅ **Build LaTeX project** ở thanh công cụ bên trái để biên dịch.
    3.  Nhấn `Ctrl+Alt+V` để xem file PDF kết quả ngay trong VS Code.

-   **Cách 2: Dùng Dòng Lệnh**
    Mở terminal trong thư mục gốc của dự án và chạy lệnh:
    ```bash
    latexmk -pdf main.tex
    ```

### 3. Sử Dụng Trên Overleaf

1.  Nén toàn bộ thư mục dự án thành một file `.zip`.
2.  Đăng nhập vào [Overleaf](https://www.overleaf.com/), chọn **New Project** -> **Upload Project**.
3.  Tải file `.zip` vừa tạo lên.

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

-   **Chèn hình ảnh**:
    ```latex
    \figurecustom{<tỷ lệ rộng>}{<đường dẫn file>}{<chú thích>}
    % Ví dụ: \figurecustom{0.8}{Images/Logo_Hust.png}{Logo Đại học Bách Khoa Hà Nội}
    % Tham chiếu hình ảnh 
    % \ref{Images/Logo_Hust.png}
    ```
    Trong đó, `tỷ lệ rộng` là số từ 0 đến 1, tương ứng với chiều rộng của ảnh so với chiều rộng của trang.

-   **Sử dụng bìa báo cáo nhóm**:
    Nếu làm báo cáo nhóm, hãy thay thế lệnh `\maketitle` trong `main.tex` bằng lệnh `\groupTitle`.
    ```latex
    % \maketitle % Bìa cho đồ án cá nhân
    \groupTitle % Bìa cho báo cáo nhóm
    ```
    *Lưu ý: Bạn cần vào file `thesis-config.cls` để chỉnh sửa thông tin thành viên nhóm trong lệnh `\groupTitle`.*

### 3. Tự Động Tạo Chương Mới

Để tiết kiệm thời gian, bạn có thể chạy script `AutoGenNextChapter.exe` để tự động:
1.  Tạo một file `.tex` mới trong thư mục `NoiDung/` với cấu trúc sẵn có.
2.  Tự động thêm lệnh `\input{...}` cho chương mới vào file `main.tex`.

Chạy script bằng lệnh (cmd hoặc powershell):
```bash
.\AutoGenNextChapter.exe
```

## Tài Liệu Mẫu

Tệp `main.pdf` là phiên bản mẫu đã được biên dịch, cung cấp cái nhìn tổng quan về định dạng và cấu trúc của luận văn sau khi hoàn thiện.

## Liên Hệ

Nếu có bất kỳ câu hỏi hoặc góp ý nào, vui lòng tạo một [Issue](https://github.com/Quanghusst/GraduationThesisTemplate/issues).