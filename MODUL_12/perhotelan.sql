-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2020 at 04:35 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perhotelan`
--

-- --------------------------------------------------------

--
-- Table structure for table `Kamar`
--

CREATE TABLE `Kamar` (
  `no_kamar` int(3) NOT NULL,
  `jenis_kamar` varchar(20) NOT NULL,
  `tarif_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Kamar`
--

INSERT INTO `Kamar` (`no_kamar`, `jenis_kamar`, `tarif_kamar`) VALUES
(101, 'Standar', 300000),
(102, 'Standar', 300000),
(103, 'Standar', 300000),
(104, 'Standar', 300000),
(111, 'VIP', 500000),
(113, 'VIP', 500000),
(201, 'Standar', 300000),
(202, 'Standar', 300000),
(203, 'Standar', 300000),
(211, 'VIP', 500000),
(212, 'VIP', 500000),
(213, 'VIP', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `Tamu`
--

CREATE TABLE `Tamu` (
  `id_tamu` varchar(20) NOT NULL,
  `nama_tamu` varchar(45) NOT NULL,
  `tgl_lahir_tamu` varchar(30) NOT NULL,
  `telp_tamu` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tamu`
--

INSERT INTO `Tamu` (`id_tamu`, `nama_tamu`, `tgl_lahir_tamu`, `telp_tamu`) VALUES
('12233378', 'Kiki Kukoki', '01 June 2000', '087234990'),
('12345678', 'Andi', '31 January 2000', '081234567890'),
('20180014', 'Dika WFA', '30 December 2001', '08987654321'),
('98765432', 'Dodi Setiawan', '09 June 1996', '085000000000'),
('99900012', 'Billy Situmeong', '01 September 2020', '082109876543');

-- --------------------------------------------------------

--
-- Table structure for table `Transaksi`
--

CREATE TABLE `Transaksi` (
  `no_transaksi` bigint(20) NOT NULL,
  `id_tamu` varchar(20) NOT NULL,
  `no_kamar` int(3) NOT NULL,
  `check_in` varchar(30) NOT NULL,
  `lama_menginap` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Transaksi`
--

INSERT INTO `Transaksi` (`no_transaksi`, `id_tamu`, `no_kamar`, `check_in`, `lama_menginap`, `total_biaya`) VALUES
(1, '20180014', 111, '15 June 2020', 3, 1500000),
(2, '99900012', 101, '16 June 2020', 1, 300000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Kamar`
--
ALTER TABLE `Kamar`
  ADD PRIMARY KEY (`no_kamar`);

--
-- Indexes for table `Tamu`
--
ALTER TABLE `Tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `Transaksi`
--
ALTER TABLE `Transaksi`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD UNIQUE KEY `id_tamu` (`id_tamu`),
  ADD UNIQUE KEY `no_kamar` (`no_kamar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Transaksi`
--
ALTER TABLE `Transaksi`
  MODIFY `no_transaksi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Transaksi`
--
ALTER TABLE `Transaksi`
  ADD CONSTRAINT `Transaksi_ibfk_1` FOREIGN KEY (`id_tamu`) REFERENCES `Tamu` (`id_tamu`),
  ADD CONSTRAINT `Transaksi_ibfk_2` FOREIGN KEY (`no_kamar`) REFERENCES `Kamar` (`no_kamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
