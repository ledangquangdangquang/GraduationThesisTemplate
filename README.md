# 🎓 Mẫu Đồ Án Tốt Nghiệp HUST

Đây là mẫu luận văn tốt nghiệp được thiết kế dành cho sinh viên Đại học Bách Khoa Hà Nội (HUST), hỗ trợ biên soạn tài liệu bằng LaTeX với cấu trúc rõ ràng và khả năng tự động hóa cao.

## 📁 Cấu Trúc Dự Án

```
GraduationThesisTemplate/
├── MoDau/                  # Chương Mở đầu
├── NoiDung/                # Các chương nội dung chính
├── KetThuc/                # Chương Kết luận và phụ lục
├── Images/                 # Thư mục chứa hình ảnh minh họa
├── main.tex                # Tệp LaTeX chính để biên dịch
├── AutoGenNextChapter.py   # Script Python hỗ trợ tự động hóa
├── thesis-config.cls       # Tệp định dạng lớp LaTeX tùy chỉnh
├── main.pdf                # Tệp PDF mẫu đã biên dịch
└── README.md               # Tệp hướng dẫn sử dụng
```



## ⚙️ Cách Hoạt Động

### 1. Biên Soạn Trên Máy Tính Cá Nhân

**Yêu cầu cài đặt:**

* [Visual Studio Code](https://code.visualstudio.com/) với tiện ích **LaTeX Workshop**
* [MiKTeX](https://miktex.org/)
* [Strawberry Perl](https://strawberryperl.com/)

**Các bước thực hiện:**

1. Cài đặt **latexmk** thông qua MiKTeX Console và cập nhật hệ thống.
2. Mở terminal và chạy lệnh sau để biên dịch:

   ```bash
   latexmk -pdf main.tex
   ```



### 2. Sử Dụng Trên Overleaf

1. Tải tệp `GraduationThesisSample.zip` từ release.
2. Đăng nhập vào [Overleaf](https://www.overleaf.com/) và tạo một dự án mới.
3. Tải lên toàn bộ nội dung của tệp ZIP vào dự án Overleaf.

### 3. Tự Động Tạo Chương Mới

* Sử dụng `AutoGenNextChapter.exe` để tự động tạo tệp chương mới với cấu trúc chuẩn.
* Script sẽ cập nhật `main.tex` để bao gồm chương mới một cách tự động, giúp duy trì cấu trúc tài liệu nhất quán.

## 🧩 Tùy Biến và Mở Rộng

* Tệp `thesis-config.cls` chứa các định dạng và cấu hình tùy chỉnh cho luận văn, bao gồm font chữ, khoảng cách dòng, và định dạng tiêu đề.
* Người dùng có thể chỉnh sửa các tệp trong thư mục `MoDau/`, `NoiDung/`, và `KetThuc/` để thêm nội dung phù hợp với đề tài của mình.

## 📄 Tài Liệu Mẫu

* Tệp `main.pdf` là phiên bản mẫu đã được biên dịch, cung cấp cái nhìn tổng quan về định dạng và cấu trúc của luận văn.

## 📬 Liên Hệ

* Để góp ý, vui lòng liên hệ qua [GitHub Issues](https://github.com/Quanghusst/GraduationThesisTemplate/issues).