import os

# Đường dẫn thư mục chứa các chương
directory = './NoiDung/'  # Thư mục chứa các file LaTeX
main_tex_file = 'main.tex'  # Đường dẫn đến file chính

# Kiểm tra thư mục NoiDung có tồn tại không, nếu không thì tạo
if not os.path.exists(directory):
    os.makedirs(directory)

# Kiểm tra các file đã tồn tại trong thư mục và tìm chương cao nhất
existing_files = [f for f in os.listdir(directory) if f.startswith('Chuong') and f.endswith('.tex')]
existing_chapters = []

# Lọc số chương trong các file đã tồn tại
for file in existing_files:
    # Lấy số chương từ tên file (giả sử tên file có định dạng 'ChuongX.tex')
    chapter_number_str = file[6:-4]  # Cắt 'Chuong' ở đầu và '.tex' ở cuối
    try:
        chapter_number = int(chapter_number_str)  # Chuyển đổi thành số nguyên
        existing_chapters.append(chapter_number)
    except ValueError:
        pass  # Nếu không phải là số hợp lệ thì bỏ qua

# Tìm số chương tiếp theo
next_chapter = max(existing_chapters) + 1 if existing_chapters else 1

# Tạo nội dung LaTeX cho chương tiếp theo
chapter_title = f"CHỦ ĐỀ CỦA CHƯƠNG {next_chapter}"

latex_content = f"""\\chaptercustom{{{next_chapter}}}{{{chapter_title}}}
\\setcounter{{section}}{{{next_chapter}}}
\\setcounter{{subsection}}{{0}}
\\setcounter{{figure}}{{0}}
\\setcounter{{table}}{{0}}


\\cleardoublepage
"""


# Tạo tên file mới trong thư mục NoiDung
new_file = f'{directory}Chuong{next_chapter}.tex'

# Ghi nội dung vào file mới
with open(new_file, 'w', encoding='utf-8') as file:
    file.write(latex_content)

print(f'Đã tạo file {new_file} với nội dung chương {next_chapter}.')

# Lấy tất cả các chương đã có và tạo các dòng \input{...} tương ứng
input_lines = []
for chapter in range(1, next_chapter + 1):
    input_lines.append(f"    \\input{{{directory}Chuong{chapter}}}\n")

# Mở file main.tex để chỉnh sửa
with open(main_tex_file, 'r', encoding='utf-8') as file:
    main_tex_content = file.readlines()

# Tìm vị trí của dòng '% NỘI DUNG' và '% KẾT THÚC'
start_index = None
end_index = None

for i, line in enumerate(main_tex_content):
    if '% NỘI DUNG' in line:
        start_index = i
    elif '% KẾT THÚC' in line:
        end_index = i

# Nếu tìm thấy cả 2 dòng, xóa phần giữa chúng và thêm các chương vào
if start_index is not None and end_index is not None:
    # Cắt nội dung giữa hai dòng
    main_tex_content = main_tex_content[:start_index + 1] + input_lines + main_tex_content[end_index:]

    # Ghi lại nội dung vào main.tex
    with open(main_tex_file, 'w', encoding='utf-8') as file:
        file.writelines(main_tex_content)

    print(f'Đã thêm tất cả các chương vào giữa "% NỘI DUNG" và "% KẾT THÚC".')
else:
    print('Không tìm thấy dòng "% NỘI DUNG" hoặc "% KẾT THÚC" trong file main.tex.')
