-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2018 at 11:03 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangchamcong`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `chucvu_Delete` (IN `idCV` VARCHAR(5))  BEGIN
	delete from chucvu where MaCV = idCV;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `chucvu_Insert` (IN `idmacv` VARCHAR(5), IN `tencv` VARCHAR(50))  begin
	insert into chucvu (MaCV,TenCV) values (idmacv ,tencv);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `chucvu_Select_All` ()  BEGIN
	select * from chucvu;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `chucvu_Update` (IN `idCV` VARCHAR(5), IN `TenCV` VARCHAR(5))  BEGIN
	update chucvu
    set MaCV = idCV,
		TenCV = TenCV
	Where MaCV = idCV;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Luong_Delete` (IN `idHSL` INT)  BEGIN
	delete from Luong where HeSoLuong =  idHSL;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Luong_Insert` (IN `idHSL` INT, IN `lcb` INT)  BEGIN
	insert into luong(HeSoLuong,LuongCB) values(idHSL,lcb);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Luong_Select_All` ()  BEGIN
	select * from Luong;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Luong_Select_ByID` (IN `idHSL` INT)  BEGIN
	select * from Luong where HeSoLuong =  idHSL;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Luong_Update` (IN `idHSL` INT, IN `lcb` INT)  BEGIN
	update luong
    set LuongCB = lcb 
    where HeSoLuong = idHSL;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NhanVien_Delete` (IN `idnv` VARCHAR(5))  BEGIN
	delete from nhanvien where nhanvien.MaNhanVien = idnv;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NhanVien_Insert` (IN `idnv` VARCHAR(5), IN `codepb` VARCHAR(5), IN `codecv` VARCHAR(5), IN `hsl` INT, IN `ten` VARCHAR(100), IN `gt` VARCHAR(5), IN `ns` DATE, IN `cmnd` VARCHAR(20), IN `sdt` VARCHAR(20), IN `ad` VARCHAR(255), IN `mail` VARCHAR(20), IN `nvl` DATE)  BEGIN
	Insert into nhanvien(MaNhanVien,MaPB,MaCV,HeSoLuong,TenNV,GioiTinh,NgaySinh,SoCM,DienThoai,DiaChi,Email,NgayVaoLam)
    values(idnv,codepb,codecv,hsl,ten,gt,ns,cmnd,sdt,ad,mail,nvl);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NhanVien_Select_All` ()  BEGIN
	select * from nhanvien;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NhanVien_Select_ByID` (IN `idnv` VARCHAR(5))  BEGIN
	select * from nhanvien where nhanvien.MaNhanVien = idnv;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NhanVien_Update` (IN `idnv` VARCHAR(5), IN `codepb` VARCHAR(5), IN `codecv` VARCHAR(5), IN `hsl` INT, IN `ten` VARCHAR(100), IN `gt` VARCHAR(5), IN `ns` DATE, IN `cmnd` VARCHAR(20), IN `sdt` VARCHAR(20), IN `ad` VARCHAR(255), IN `mail` VARCHAR(20), IN `nvl` DATE)  BEGIN
	UPDATE nhanvien
  SET MaPB = codepb,
      MaCV = codecv,
      HeSoLuong = hsl,
      TenNV = ten,
      GioiTinh = gt,
      NgaySinh = ns,
	  SoCM = cmnd,
      DienThoai = sdt,
	  DiaChi = ad,
      Email = mail,
      NgayVaoLam = nvl
  WHERE MaNhanVien = idnv;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `phongban_Delete` (IN `idPB` VARCHAR(5))  BEGIN
	delete from phongban where MaPB = idPB;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `phongban_Insert` (IN `idPB` VARCHAR(5), IN `tenPB` VARCHAR(5))  BEGIN
	insert into phongban (MaPB,TenPB) values (idPB ,tenPB);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `phongban_Select_All` ()  BEGIN
	select * from phongban;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `phongban_Select_ByID` (IN `idPB` VARCHAR(5))  BEGIN
	select * from phongban where MaPB = idPB;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `phongban_Update` (IN `idPB` VARCHAR(5), IN `tenPB` VARCHAR(5))  BEGIN
	update phongban
    set TenPB = tenPB
	Where MaPB = idPB;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `taikhoan_check` (IN `username` VARCHAR(50), IN `pass` VARCHAR(50))  BEGIN
	SELECT * FROM taikhoan WHERE taikhoan.TenDangNhap = "username" and taikhoan.MatKhau = "pass";
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `chamcong`
--

CREATE TABLE `chamcong` (
  `MaNhanVien` varchar(5) NOT NULL,
  `Ngay` date NOT NULL,
  `TinhTrang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `MaCV` varchar(5) NOT NULL,
  `TenCV` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`MaCV`, `TenCV`) VALUES
('CV01', 'Giám Đốc'),
('CV02', 'Phó Giám Đốc'),
('CV03', 'Trưởng Phòng'),
('CV04', 'Phó Phòng'),
('CV05', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `luong`
--

CREATE TABLE `luong` (
  `HeSoLuong` int(11) NOT NULL,
  `LuongCB` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luong`
--

INSERT INTO `luong` (`HeSoLuong`, `LuongCB`) VALUES
(1, 3500000),
(2, 3700000),
(3, 3800000),
(4, 4000000),
(5, 4500000),
(6, 5000000),
(7, 7000000),
(8, 10000000),
(9, 12000000),
(10, 15000000);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(5) NOT NULL,
  `MaPB` varchar(5) DEFAULT NULL,
  `MaCV` varchar(5) DEFAULT NULL,
  `HeSoLuong` int(11) DEFAULT NULL,
  `TenNV` varchar(100) NOT NULL,
  `GioiTinh` varchar(5) NOT NULL,
  `NgaySinh` date NOT NULL,
  `NgayVaoLam` date NOT NULL,
  `SoCM` varchar(20) NOT NULL,
  `DienThoai` varchar(20) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `MaPB`, `MaCV`, `HeSoLuong`, `TenNV`, `GioiTinh`, `NgaySinh`, `NgayVaoLam`, `SoCM`, `DienThoai`, `DiaChi`, `Email`) VALUES
('NV01', 'PB01', 'CV01', 10, 'Duy Linh', 'Nam', '1985-09-02', '0000-00-00', '1195156161', '0933328663', 'Thành Phố HCM', '@gmail.com'),
('NV02', 'PB02', 'CV02', 9, 'Trần Thanh Hiền', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Thành Phố HCM', '@gmail.com'),
('NV03', 'PB03', 'CV03', 8, 'Trương Minh Sang', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Thành Phố HCM', '@gmail.com'),
('NV04', 'PB04', 'CV04', 8, 'Nguyễn Thị Lệ Thu', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Thành Phố HCM', '@gmail.com'),
('NV05', 'PB05', 'CV05', 8, 'Trần Minh Siêu', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Thành Phố HCM', '@gmail.com'),
('NV06', 'PB03', 'CV05', 7, 'Trần Ngọc Tuyết', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV07', 'PB05', 'CV05', 7, 'Nguyễn Hữu Minh', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV08', 'PB03', 'CV05', 6, 'Huỳnh Thị Yến Lê', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV09', 'PB03', 'CV05', 6, 'Nguyễn Thị Kim Thoa', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV10', 'PB03', 'CV05', 6, 'Nguyễn Thị Bích Hằng', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV11', 'PB03', 'CV05', 6, 'Hồ Mạnh Tiến', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV12', 'PB03', 'CV05', 6, 'Nguyễn Tăng Quốc', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV13', 'PB04', 'CV05', 6, 'Lê Thị Tịnh', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV14', 'PB04', 'CV05', 6, 'Bùi Thị Sương', 'Nữ', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV15', 'PB05', 'CV05', 6, 'Bùi Văn Long', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV16', 'PB05', 'CV05', 6, 'Đỗ Hữu Tiến', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com'),
('NV17', 'PB05', 'CV05', 6, 'Phạm Văn Mạnh', 'Nam', '1985-09-02', '0000-00-00', '88888888', '1638345699', 'Biên Hòa, Đồng nai', '@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `MaPB` varchar(5) NOT NULL,
  `TenPB` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`MaPB`, `TenPB`) VALUES
('PB01', 'Phòng Giám Đốc'),
('PB02', 'Phòng Phó Giám Đốc'),
('PB03', 'Phòng Kinh Doanh'),
('PB04', 'Phòng Kế Toán'),
('PB05', 'Phòng Kỹ Thuật'),
('PB06', 'Phòng ban');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaNhanVien` varchar(5) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `TenQuyenHan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaNhanVien`, `TenDangNhap`, `MatKhau`, `TenQuyenHan`) VALUES
('NV01', 'admin', 'admin', 'Super Admin'),
('NV02', 'duylinh', '123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chamcong`
--
ALTER TABLE `chamcong`
  ADD KEY `fk_ChamCong_NhanVien_MaNhanVien` (`MaNhanVien`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`MaCV`);

--
-- Indexes for table `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`HeSoLuong`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`),
  ADD KEY `fk_NhanVien_PhongBan_MaPB` (`MaPB`),
  ADD KEY `fk_NhanVien_ChucVu_MaCV` (`MaCV`),
  ADD KEY `fk_NhanVien_Luong_HeSoLuong` (`HeSoLuong`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`MaPB`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TenDangNhap`),
  ADD KEY `fk_TaiKhoan_NhanVien_MaNhanVien` (`MaNhanVien`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chamcong`
--
ALTER TABLE `chamcong`
  ADD CONSTRAINT `fk_ChamCong_NhanVien_MaNhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_NhanVien_ChucVu_MaCV` FOREIGN KEY (`MaCV`) REFERENCES `chucvu` (`MaCV`),
  ADD CONSTRAINT `fk_NhanVien_Luong_HeSoLuong` FOREIGN KEY (`HeSoLuong`) REFERENCES `luong` (`HeSoLuong`),
  ADD CONSTRAINT `fk_NhanVien_PhongBan_MaPB` FOREIGN KEY (`MaPB`) REFERENCES `phongban` (`MaPB`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_TaiKhoan_NhanVien_MaNhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
