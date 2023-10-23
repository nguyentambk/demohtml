-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 02:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banh_kem`
--

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(50) NOT NULL,
  `Ten_kh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `Ten_kh`) VALUES
('KH_001', 'Phi Phụng'),
('KH_002', 'Quỳnh Anh'),
('KH_003', 'Ronaldo'),
('KH_004', 'Messi');

-- --------------------------------------------------------

--
-- Table structure for table `loai_banh`
--

CREATE TABLE `loai_banh` (
  `Ma_loai` varchar(50) NOT NULL,
  `Ten_loai` varchar(200) NOT NULL,
  `Mo_ta` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_banh`
--

INSERT INTO `loai_banh` (`Ma_loai`, `Ten_loai`, `Mo_ta`) VALUES
('pt_k', 'Petit Cake', 'Bánh kem Petit hương vani'),
('Ptc_k', 'Petit Chocola Cake', 'Bánh kem Petit hương chocola'),
('sn_hn', 'Sinh nhật hình nổi', ''),
('sn_tc', 'Sinh nhật tiêu chuẩn', '');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `Ma_sp` varchar(50) NOT NULL,
  `Ten_sp` varchar(200) NOT NULL,
  `Ngay_sx` date NOT NULL,
  `Ngay_hh` date NOT NULL,
  `Kich_thuoc` varchar(100) NOT NULL,
  `Huong_vi` varchar(50) NOT NULL,
  `Gia_ban` float NOT NULL,
  `So_luong` int(11) NOT NULL,
  `Giam_gia` float NOT NULL,
  `Ma_loai` varchar(50) NOT NULL,
  `Mo_ta` varchar(500) NOT NULL,
  `Hinh_anh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`Ma_sp`, `Ten_sp`, `Ngay_sx`, `Ngay_hh`, `Kich_thuoc`, `Huong_vi`, `Gia_ban`, `So_luong`, `Giam_gia`, `Ma_loai`, `Mo_ta`, `Hinh_anh`) VALUES
('06SN-110N', 'Bánh kem sinh nhật tiêu chuẩn 06110', '2023-07-03', '2023-07-05', '20 cm', 'Bac hà', 400, 10, 10, 'sn_hn', '', ''),
('06SN-111N', 'Bánh kem sinh nhật tiêu chuẩn 06111', '2023-07-06', '2023-07-08', '20 cm', 'Vani - dâu', 500, 20, 15, 'sn_tc', 'dshfsdh jhfgdfgjf sdjkfh', ''),
('10SN-148', 'Bánh kem sinh nhật tiêu chuẩn 148', '2023-07-04', '2023-07-07', '30 cm', 'Chôcla', 600, 6, 10, 'sn_tc', '', ''),
('M033', 'Bánh kem petit vani 33', '2023-07-04', '2023-07-06', '15 cm', 'Bac hà', 150, 10, 10, 'Pt_k', '', ''),
('M034', 'Bánh kem petit vani 34', '2023-07-02', '2023-07-04', '10 cm', 'vani', 200, 30, 10, 'pt_k', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Indexes for table `loai_banh`
--
ALTER TABLE `loai_banh`
  ADD PRIMARY KEY (`Ma_loai`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`Ma_sp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
