-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 12, 2023 lúc 11:39 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopkinhmat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `LuongMua` int(11) NOT NULL,
  `Gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `Ngay` date NOT NULL,
  `MaKH` int(11) NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDH`, `Ngay`, `MaKH`, `TongTien`) VALUES
(2, '2023-08-12', 2, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`MaLoai`, `TenLoai`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kid');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` int(11) NOT NULL,
  `Email` tinytext NOT NULL,
  `Matkhau` tinytext NOT NULL,
  `isAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `Email`, `Matkhau`, `isAdmin`) VALUES
(1, 'nguyenddqui@gmail.com', '0931368945qui', 1),
(2, 'qui@gmail.com', '123456789', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` tinytext NOT NULL,
  `MotaSP` tinytext NOT NULL,
  `GiaSP` double NOT NULL,
  `HinhSP` varchar(200) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MotaSP`, `GiaSP`, `HinhSP`, `SoLuong`, `MaLoai`) VALUES
(1, 'Hexa Classic', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 20, 'assets/images/men-01.webp', 10, 1),
(2, 'Hexa Menly', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 25, 'assets/images/men-02.webp', 15, 1),
(3, 'Hexa Pink', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 30, 'assets/images/men-03.webp', 5, 1),
(4, 'Hexa Spring', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 15, 'assets/images/women-01.webp', 9, 2),
(5, 'Hexa Love', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 19, 'assets/images/women-02.webp', 10, 2),
(6, 'Hexa Loli', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 12, 'assets/images/women-03.webp', 11, 2),
(7, 'Hexa School', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 10, 'assets/images/kid-01.webp', 12, 3),
(8, 'Hexa Classic', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 12, 'assets/images/kid-02.webp', 13, 3),
(9, 'Hexa Color', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 14, 'assets/images/kid-03.webp', 21, 3),
(11, 'Hexa Bassic', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 30, 'assets/images/men-04.webp', 11, 1),
(12, 'Hexa Lily', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 35, 'assets/images/women-04.webp', 8, 2),
(15, 'Hexa Cute', 'The glasses are stylish, lightweight, and comfortable. They have a sleek design with a durable frame. The lenses are clear and provide excellent vision. These glasses are perfect for everyday wear and are suitable for both men and women.', 12, 'assets/images/kid-04.webp', 0, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `nguoidung` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisp` (`MaLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
