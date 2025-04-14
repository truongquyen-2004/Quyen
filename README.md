# Quyen
# baitap4
# bai tap 4: (sql server)
- yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

- các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình
   gõ text mô tả cho ảnh đó

- Gợi ý:
  sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)
  # Đây là hình ảnh tạo các bảng
  # Bảng Giáo Viên
  ![Screenshot 2025-04-14 171624](https://github.com/user-attachments/assets/eca3e5ad-aa53-4f7c-868a-2b0ab7537fb9)
  # Bảng Null của giáo viên
  ![Screenshot 2025-04-14 171611](https://github.com/user-attachments/assets/7ffe56b2-6bb2-4da6-a092-ceae497f17e3)
  # Bảng Lớp
  ![Screenshot 2025-04-14 171711](https://github.com/user-attachments/assets/1a1b4e5a-d586-41cf-aa8e-69656ebf5bf0)
  # Bảng Null của Lớp
  ![Screenshot 2025-04-14 171718](https://github.com/user-attachments/assets/fc8c3f8d-f77b-4d4c-950f-56af565f31d4)
  # Bảng Môn học
   ![Screenshot 2025-04-14 171658](https://github.com/user-attachments/assets/f9839a56-5099-4ba2-a046-d84a49026e34)
  # Bảng Null của Môn học
  ![Screenshot 2025-04-14 171641](https://github.com/user-attachments/assets/58d2a49c-2063-42e0-985f-909eb1fce37c)
  # Bảng TKB
  ![Screenshot 2025-04-14 171600](https://github.com/user-attachments/assets/739209ad-1c08-4f72-9d68-daea2325a05a)
   # Bảng Null của TKB
  ![Screenshot 2025-04-14 171546](https://github.com/user-attachments/assets/0a396fc9-6bd6-4a99-9583-b049250d0b8d)
  ## Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
  ## trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.
  ![Screenshot 2025-04-14 175309](https://github.com/user-attachments/assets/1405e309-7050-422a-872b-c46516937dfd)

  ![Screenshot 2025-04-14 175321](https://github.com/user-attachments/assets/61e7417c-cb39-43a2-a46a-2b35f8e6f547)

