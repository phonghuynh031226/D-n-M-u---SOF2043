# 💻 Dự Án Mẫu - SOF2043

## 👨‍🎓 Thông Tin Sinh Viên
- **Họ tên:** Huỳnh Thanh Phong
- **Codename:** phonghuynh
- **MSSV:** PS44477  
- **Lớp:** SD20301  
- **Giảng viên hướng dẫn:** Huỳnh Khắc Duy

---

## 📝 Giới Thiệu Dự Án
**Tên dự án:** Ứng Dụng Quản Lý Bán Hàng (Desktop)  
Dự án được phát triển nhằm áp dụng kiến thức môn **SOF2043 – Java Desktop (Java Swing)**, sử dụng giao diện đồ họa Swing kết hợp với JDBC để thao tác dữ liệu từ cơ sở dữ liệu SQL Sever.

---

## ⚙️ Công Nghệ Sử Dụng
| Công nghệ       | Mô tả |
|------------------|------|
| Java Swing       | Xây dựng giao diện người dùng (UI) |
| JDBC             | Kết nối và thao tác với SQL Sever |
| SQL Sever            | Lưu trữ dữ liệu |
| Maven (tùy chọn) | Quản lý thư viện và cấu trúc dự án |
| MVC Pattern      | Mô hình kiến trúc phần mềm rõ ràng |

---

## 🔧 Tính Năng Chính
- ✅ Đăng nhập, đổi mật khẩu
- ✅ Quản lý sản phẩm (Thêm, sửa, xóa, tìm kiếm)
- ✅ Bán hàng, lịch sử, doanh thu
- ✅ Giao diện Quản lý và Nhân viên
- ✅ Giao diện thân thiện với người dùng (sử dụng JTable, JComboBox, JDateChooser...)

---

## 🖼️ Giao Diện Minh Họa
| Trang | Hình ảnh |
|------|-----------|
| Giao diện chính | ![](screenshots/main.png) |
| Quản lý sản phẩm | ![](screenshots/product.png) |
| Hóa đơn | ![](screenshots/invoice.png) |

---

## 📁 Cấu Trúc Thư Mục
Project/
├── src/
│ ├── dao/
│ ├── model/
│ ├── view/
│ ├── controller/
│ └── utils/
├── lib/
│ └── mysql-connector-java.jar
├── database/
│ └── polycafe.sql
└── README.md

---

## 🛠️ Hướng Dẫn Cài Đặt & Chạy
### Bước 1: Chuẩn Bị Cơ Sở Dữ Liệu
- Tạo database: `banhang`
- Import file `database/polycafe.sql` vào SQL Sever

### Bước 2: Cấu Hình `DBConnection.java`
```java
private static final String URL = "jdbc:mysql://localhost:3306/banhang";
private static final String USER = "root";
private static final String PASSWORD = "your_password";
```


### Bước 3: Chạy Ứng Dụng
Mở file Main.java và nhấn Run

Yêu cầu: Java 8+ và MySQL đã cài đặt

✅ Đánh Giá Cá Nhân
Trong quá trình làm đồ án, em đã học được cách xây dựng ứng dụng desktop hoàn chỉnh bằng Java Swing, cách chia lớp theo mô hình MVC, xử lý sự kiện trong giao diện, và thao tác với CSDL bằng JDBC. Em cảm thấy tự tin hơn trong việc xây dựng ứng dụng thực tế.

📌 Ghi Chú
Dự án này là bản mẫu cho môn học, sinh viên có thể tùy biến theo đề tài riêng.

Vui lòng không sử dụng cho mục đích thương mại nếu chưa được phép.

📜 Giấy Phép
Dự án được phát triển cho mục đích học tập tại FPT Polytechnic.


---

### 🔄 Bạn có thể tùy biến:
- Tên dự án (VD: Quản Lý Sinh Viên, Quản Lý Thư Viện...)
- Tính năng cụ thể của đề tài bạn
- Ảnh chụp màn hình thực tế

---
