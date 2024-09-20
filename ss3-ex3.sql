create database ss3_ex3;
use ss3_ex3;

CREATE TABLE phieuxuat (
    soPx INT AUTO_INCREMENT PRIMARY KEY,
    ngayxuat DATETIME
);

CREATE TABLE phieunhap (
    soPn INT AUTO_INCREMENT PRIMARY KEY,
    ngaynhap DATETIME
);

CREATE TABLE vattu (
    mavt INT AUTO_INCREMENT PRIMARY KEY,
    tenvt VARCHAR(255)
);

CREATE TABLE phieuxuatchitiet (
    sopx INT, 
    FOREIGN KEY (sopx) REFERENCES phieuxuat (sopx),
    mavt INT,
    FOREIGN KEY (mavt) REFERENCES vattu (mavt),
    dongiaxuat DOUBLE,
    soluongxuat INT
);

CREATE TABLE phieunhapchitiet (
    sopn INT,
    FOREIGN KEY (sopn) REFERENCES phieunhap (sopn),
    mavt INT,
    FOREIGN KEY (mavt) REFERENCES vattu (mavt),
    dongianhap DOUBLE,
    soluongnhap INT
);

CREATE TABLE nhacungcap (
    mancc INT AUTO_INCREMENT PRIMARY KEY,
    tenncc VARCHAR(255),
    diachi VARCHAR(255),
    sodienthoai VARCHAR(11)
);

CREATE TABLE dondathang (
    soDH INT AUTO_INCREMENT PRIMARY KEY,
    maNCC INT,
    FOREIGN KEY (mancc) REFERENCES nhacungcap (mancc),
    ngaydh DATETIME
);

CREATE TABLE chitietdonhang (
    mavt INT,
    sodonhang INT,
    PRIMARY KEY (mavt , sodonhang),
    FOREIGN KEY (mavt)
        REFERENCES vattu (mavt),
    FOREIGN KEY (sodonhang)
        REFERENCES dondathang (soDH)
);

-- Thêm dữ liệu vào bảng PhieuXuat
INSERT INTO PhieuXuat ( ngayXuat) VALUES
  ( '2023-01-15'),
  ('2023-02-20'),
  ( '2023-03-05'),
  ( '2023-04-12'),
  ( '2023-05-18'),
  ( '2023-06-22'),
  ( '2023-07-01'),
  ( '2023-08-08'),
  ('2023-09-14'),
  ( '2023-10-25');

 drop table PhieuXuat;
-- Thêm dữ liệu vào bảng PhieuNhap
INSERT INTO PhieuNhap (soPn, ngayNhap) VALUES
  (1, '2023-02-01'),
  (2, '2023-03-10'),
  (3, '2023-04-18'),
  (4, '2023-05-25'),
  (5, '2023-06-30'),
  (6, '2023-07-12'),
  (7, '2023-08-20'),
  (8, '2023-09-05'),
  (9, '2023-10-12'),
  (10, '2023-11-18');
  
  select * from phieunhap;
-- Thêm dữ liệu vào bảng PhieuXuatChiTiet
INSERT INTO PhieuXuatChiTiet (soPx, maVT, donGiaXuat, soLuongXuat) VALUES
  (1, 1, 50000, 10),
  (1, 1, 75000, 5),
  (2, 3, 80000, 8),
  (2, 4, 60000, 12),
  (3, 5, 45000, 15),
  (3, 6, 90000, 6),
  (4, 7, 70000, 9),
  (4, 8, 55000, 11),
  (5, 9, 65000, 7),
  (5, 10, 85000, 8);
 drop table PhieuXuatChiTiet;
 
INSERT INTO vattu (maVT, tenVT) VALUES
  (1, 'Sản phẩm A'),
  (2, 'Sản phẩm B'),
  (3, 'Sản phẩm C'),
  (4, 'Sản phẩm D'),
  (5, 'Sản phẩm E'),
  (6, 'Sản phẩm F'),
  (7, 'Sản phẩm G'),
  (8, 'Sản phẩm H'),
  (9, 'Sản phẩm I'),
  (10, 'Sản phẩm J');

-- Thêm dữ liệu vào bảng PhieuNhapChiTiet
INSERT INTO PhieuNhapChiTiet (soPn, maVT, donGiaNhap, soLuongNhap) VALUES
  (1, 1, 45000, 12),
  (1, 2, 70000, 7),
  (2, 3, 75000, 10),
  (2, 4, 55000, 14),
  (3, 5, 40000, 18),
  (3, 6, 85000, 8),
  (4, 7, 65000, 11),
  (4, 8, 50000, 13),
  (5, 9, 60000, 9),
  (5, 10, 80000, 10);

-- Thêm dữ liệu vào bảng ChiTietDonDatHang
INSERT INTO ChiTietDonDatHang (soDH, maVT) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 6),
  (4, 7),
  (4, 8),
  (5, 9),
  (5, 10);

-- Thêm dữ liệu vào bảng DonDatHang
INSERT INTO DonDatHang (soDH) VALUES
  (1),
  (2),
  (3),
  (4),
  (5);

-- Thêm dữ liệu vào bảng NhaCungCap
INSERT INTO NhaCungCap (maNCC, tenNCC, diaChi, soDienThoai) VALUES
  (1, 'Công ty A', '123 Đường ABC, Quận XYZ', '0123456789'),
  (2, 'Công ty B', '456 Đường DEF, Quận PQR', '0987654321'),
  (3, 'Công ty C', '789 Đường GHI, Quận MNO', '0456789123'),
  (4, 'Công ty D', '321 Đường JKL, Quận STU', '0789456123'),
  (5, 'Công ty E', '654 Đường MNO, Quận VWX', '0123789456');
  
  select * from nhacungcap;
  select * from phieuxuat;
  select * from phieuxuatchitiet;
  select * from phieunhap;
  select * from phieunhapchitiet;
  select * from vattu;
  select * from dondathang;
  select * from chitietdondathang;
  








