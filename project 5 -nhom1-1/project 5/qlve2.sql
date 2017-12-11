-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2017 at 05:29 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlve2`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiettaixe`
--

CREATE TABLE `chitiettaixe` (
  `id` int(11) NOT NULL,
  `VitriTX` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitiettaixe`
--

INSERT INTO `chitiettaixe` (`id`, `VitriTX`) VALUES
(1, 'Tài Xế'),
(2, 'Phụ Xe'),
(3, 'Lơ Xe');

-- --------------------------------------------------------

--
-- Table structure for table `chuyenxe`
--

CREATE TABLE `chuyenxe` (
  `id` int(11) NOT NULL,
  `Giodi` time NOT NULL,
  `Gioden` time NOT NULL,
  `Diemdi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Diemden` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Giave` int(11) NOT NULL,
  `Chotrong` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_lotrinh` int(11) NOT NULL,
  `id_taixe` int(11) NOT NULL,
  `id_xe` int(11) NOT NULL,
  `id_vexe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuyenxe`
--

INSERT INTO `chuyenxe` (`id`, `Giodi`, `Gioden`, `Diemdi`, `Diemden`, `Giave`, `Chotrong`, `id_lotrinh`, `id_taixe`, `id_xe`, `id_vexe`) VALUES
(1, '04:00:00', '21:00:00', 'Hồ Chí Minh', 'Đà Nẵng', 200000, '19', 1, 1, 1, 1),
(2, '03:00:00', '20:00:00', 'Hồ Chí Minh', 'Hà Nội', 350000, '26', 2, 2, 2, 2),
(21, '18:00:00', '05:00:00', 'Gia Lai', 'Hồ Chí Minh', 240000, '20', 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `danhsachghe`
--

CREATE TABLE `danhsachghe` (
  `id` int(11) NOT NULL,
  `ten_ghe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(20) NOT NULL,
  `TenHanhKhach` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` int(20) NOT NULL,
  `Email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Soluong` int(2) NOT NULL,
  `Diemdi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Giodi` time NOT NULL,
  `Ngaydi` date NOT NULL,
  `Diemden` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gioden` time NOT NULL,
  `Ngayden` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Giave` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `TenHanhKhach`, `Phone`, `Email`, `Soluong`, `Diemdi`, `Giodi`, `Ngaydi`, `Diemden`, `Gioden`, `Ngayden`, `Giave`) VALUES
(42, 'Nguyễn Anh Tuấn', 1679028648, 'anhtuan321996@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(43, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(44, 'Nguyễn Anh Tuấn', 1679028648, 'anhtuan321996@gmail.com', 1, 'Gia Lai', '18:00:00', '2017-12-04', 'Hồ Chí Minh', '05:00:00', '2017-12-06', 240000),
(45, 'Nguyễn Anh Tuấn', 1679028648, 'anhtuan321996@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(46, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Gia Lai', '18:00:00', '2017-12-04', 'Hồ Chí Minh', '05:00:00', '2017-12-06', 240000),
(47, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen96@gmail.com', 1, 'Hồ Chí Minh', '03:00:00', '2017-11-30', 'Hà Nội', '20:00:00', '2017-12-02', 350000),
(48, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen96@gmail.com', 1, 'Gia Lai', '18:00:00', '2017-12-04', 'Hồ Chí Minh', '05:00:00', '2017-12-06', 240000),
(49, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(50, 'zip', 113, 'zip24t@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(51, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '03:00:00', '2017-11-30', 'Hà Nội', '20:00:00', '2017-12-02', 350000),
(52, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(53, 'zip', 113, 'zip24t@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(54, 'zip', 113, 'zip24t@gmail.com', 1, 'Hồ Chí Minh', '03:00:00', '2017-11-30', 'Hà Nội', '20:00:00', '2017-12-02', 350000),
(55, 'zip', 113, 'zip24t@gmail.com', 1, 'Hồ Chí Minh', '03:00:00', '2017-11-30', 'Hà Nội', '20:00:00', '2017-12-02', 350000),
(56, 'zip', 113, 'zip24t@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(57, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(58, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '03:00:00', '2017-11-30', 'Hà Nội', '20:00:00', '2017-12-02', 350000),
(59, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000),
(60, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen96@gmail.com', 1, 'Hồ Chí Minh', '04:00:00', '2017-11-30', 'Đà Nẵng', '21:00:00', '2017-12-01', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `lotrinh`
--

CREATE TABLE `lotrinh` (
  `id` int(11) NOT NULL,
  `Diemdi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Diemden` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngaydi` date NOT NULL,
  `Ngayve` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lotrinh`
--

INSERT INTO `lotrinh` (`id`, `Diemdi`, `Diemden`, `Ngaydi`, `Ngayve`) VALUES
(1, 'Hồ Chí Minh', 'Đà Nẵng', '2017-11-30', '2017-12-01'),
(2, 'Hồ Chí Minh', 'Hà Nội', '2017-11-30', '2017-12-02'),
(3, 'Gia Lai', 'Hồ Chí Minh', '2017-12-04', '2017-12-06'),
(4, 'An Giang', 'Bắc Giang', '2017-12-07', '2017-12-10'),
(7, 'An Giang', 'Đắk Lắk', '2017-12-07', '2017-12-08'),
(9, 'Bình Phước', 'An Giang', '2017-12-07', '2017-12-10'),
(10, 'Đắk Lắk', 'Đắk Nông', '2017-12-06', '2017-12-07'),
(11, 'Cà Mau', 'Bình Dương', '2017-12-05', '2017-12-06'),
(12, 'Bình Định', 'Hồ Chí Minh', '2017-12-06', '2017-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `taixe`
--

CREATE TABLE `taixe` (
  `id` int(11) NOT NULL,
  `TenTX` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` int(11) NOT NULL,
  `id_PLTX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taixe`
--

INSERT INTO `taixe` (`id`, `TenTX`, `SDT`, `id_PLTX`) VALUES
(1, 'Nguyễn Anh Tuấn', 90317894, 1),
(2, 'Nguyễn Văn Cừ', 906332231, 2),
(3, 'Nguyễn Tri Phương', 1657002257, 3),
(7, 'Trần Văn Be', 12312312, 3),
(10, 'Uyển Uyển', 909987666, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` int(11) NOT NULL,
  `Username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `TenTV` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Diachi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `Username`, `Password`, `level`, `TenTV`, `Phone`, `Email`, `Diachi`) VALUES
(1, 'admin', '1234', 0, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen21296@gmail.com', 'Thôn 3- Chư Á- Pleiku- Gia Lai'),
(2, 'Member', '12345', 1, 'Trần Thành Viên', 909977888, 'thanhvien@gmail.com', 'Cao Lổ- Quận 8'),
(9, 'anhtuan321996@gmail.com', 'abcd', 1, 'Nguyễn Anh Tuấn', 1679028648, 'anhtuan321996@gmail.com', '180 Cao Lỗ, Phường 4, Quận 8, Tp Hồ Chí Minh'),
(10, 'duyenit.nguyen96@gmail.com', 'zxcv', 1, 'Nguyễn Thị Kỳ Duyên', 1657002257, 'duyenit.nguyen96@gmail.com', '180 Cao Lỗ, Phường 4, Quận 8, Tp Hồ Chí Minh'),
(17, 'khachang', '202cb962ac59075b964b07152d234b70', 1, 'khachang', 123123, 'khachang', 'khachang');

-- --------------------------------------------------------

--
-- Table structure for table `vexe`
--

CREATE TABLE `vexe` (
  `id` int(11) NOT NULL,
  `GiaveLB` int(11) NOT NULL,
  `Giodi` time NOT NULL,
  `Ngaydi` date NOT NULL,
  `Soghe` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_thanhvien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vexe`
--

INSERT INTO `vexe` (`id`, `GiaveLB`, `Giodi`, `Ngaydi`, `Soghe`, `id_thanhvien`) VALUES
(1, 200000, '04:00:00', '2017-11-30', '8', 1),
(2, 350000, '03:00:00', '2017-11-30', '16', 1),
(3, 240000, '18:00:00', '2017-12-02', '32', 2);

-- --------------------------------------------------------

--
-- Table structure for table `xe`
--

CREATE TABLE `xe` (
  `id` int(11) NOT NULL,
  `Tenxe` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Soxe` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Soluongghe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xe`
--

INSERT INTO `xe` (`id`, `Tenxe`, `Soxe`, `Soluongghe`) VALUES
(1, 'Limo', '59D2-303.59', 32),
(2, 'BMW', '59D2-303.58', 32),
(3, 'Việt Tân Phát', '59M1-123.45', 42),
(4, 'Phương Trang', '59M4-234.56', 42),
(5, 'Phượng Hoàng', '59M3 123.89', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiettaixe`
--
ALTER TABLE `chitiettaixe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuyenxe`
--
ALTER TABLE `chuyenxe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lotrinh` (`id_lotrinh`),
  ADD KEY `id_taixe` (`id_taixe`),
  ADD KEY `id_xe` (`id_xe`),
  ADD KEY `id_vexe` (`id_vexe`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotrinh`
--
ALTER TABLE `lotrinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taixe`
--
ALTER TABLE `taixe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_PLTX` (`id_PLTX`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vexe`
--
ALTER TABLE `vexe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_thanhvien` (`id_thanhvien`);

--
-- Indexes for table `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiettaixe`
--
ALTER TABLE `chitiettaixe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chuyenxe`
--
ALTER TABLE `chuyenxe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `lotrinh`
--
ALTER TABLE `lotrinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `taixe`
--
ALTER TABLE `taixe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `vexe`
--
ALTER TABLE `vexe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `xe`
--
ALTER TABLE `xe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chuyenxe`
--
ALTER TABLE `chuyenxe`
  ADD CONSTRAINT `chuyenxe_ibfk_1` FOREIGN KEY (`id_lotrinh`) REFERENCES `lotrinh` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chuyenxe_ibfk_2` FOREIGN KEY (`id_taixe`) REFERENCES `taixe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chuyenxe_ibfk_3` FOREIGN KEY (`id_xe`) REFERENCES `xe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chuyenxe_ibfk_4` FOREIGN KEY (`id_vexe`) REFERENCES `vexe` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taixe`
--
ALTER TABLE `taixe`
  ADD CONSTRAINT `taixe_ibfk_1` FOREIGN KEY (`id_PLTX`) REFERENCES `taixe` (`id`);

--
-- Constraints for table `vexe`
--
ALTER TABLE `vexe`
  ADD CONSTRAINT `vexe_ibfk_1` FOREIGN KEY (`id_thanhvien`) REFERENCES `thanhvien` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
