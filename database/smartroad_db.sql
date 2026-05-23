-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2026 at 06:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartroad_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2b$10$C7kS4B40bVAXpPqU9jBMQON1oUBnNT2dJAtAX4geC8ONXRVfePBQC');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` varchar(50) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('Menunggu','Proses','Selesai') DEFAULT 'Menunggu',
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `jenis`, `deskripsi`, `lat`, `lng`, `foto`, `status`, `tanggal`) VALUES
('SR-1715000001', 'Jalan Berlubang', 'Lubang cukup dalam di lajur kiri dekat pintu masuk Botani Square, bahaya untuk motor.', -6.60052000, 106.80873000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Jalan+Berlubang+1', 'Menunggu', '2026-05-18 01:30:00'),
('SR-1715000002', 'Genangan Air', 'Drainase mampet di sekitar pertigaan Tugu Kujang, air menggenang saat hujan deras.', -6.60134000, 106.80789000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Genangan+Air+1', 'Proses', '2026-05-18 02:15:00'),
('SR-1715000003', 'Trotoar Amblas', 'Ubin trotoar pecah dan amblas di sepanjang jalur pedestrian Jalan Sudirman.', -6.58611000, 106.79583000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Trotoar+Amblas+1', 'Selesai', '2026-05-18 07:20:00'),
('SR-1715000004', 'Aspal Terkelupas', 'Permukaan aspal rusak parah dan bergelombang di Jalan Raya Pajajaran dekat RS PMI.', -6.59389000, 106.80333000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Aspal+Terkelupas', 'Menunggu', '2026-05-19 00:45:00'),
('SR-1715000005', 'Jalan Berlubang', 'Ada dua lubang berdekatan di area Sempur, sering bikin pengendara rem mendadak.', -6.58917000, 106.79861000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Jalan+Berlubang+2', 'Proses', '2026-05-19 04:10:00'),
('SR-1715000006', 'Genangan Air', 'Saluran air tertutup sampah, menyebabkan banjir semata kaki di area Pasar Anyar.', -6.59167000, 106.79250000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Genangan+Air+2', 'Menunggu', '2026-05-19 09:30:00'),
('SR-1715000007', 'Trotoar Amblas', 'Akar pohon besar merusak struktur trotoar dekat pintu 3 Kebun Raya Bogor.', -6.60222000, 106.80056000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Trotoar+Amblas+2', 'Selesai', '2026-05-20 01:00:00'),
('SR-1715000008', 'Jalan Berlubang', 'Lubang di tengah jalan tol BORR seksi Kedung Halang, sangat rawan kecelakaan.', -6.56278000, 106.80389000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Jalan+Berlubang+3', 'Menunggu', '2026-05-20 02:25:00'),
('SR-1715000009', 'Aspal Terkelupas', 'Bekas kalian pipa PDAM belum ditutup rapi di Jalan Ahmad Yani, aspal hancur.', -6.57444000, 106.79944000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Bekas+Galian', 'Proses', '2026-05-20 05:40:00'),
('SR-1715000010', 'Jalan Berlubang', 'Lubang tajam di turunan arah Empang, sudah ada korban jatuh semalam.', -6.60944000, 106.79444000, 'https://placehold.co/600x400/e2e8f0/475569?text=Foto+Jalan+Berlubang+4', 'Menunggu', '2026-05-20 08:55:00'),
('SR-1779265458524', 'Jalan Berlubang', 'Di pasar ', -6.59297000, 106.78941700, '/uploads/laporan-1779265458496-38800985.jpg', 'Proses', '2026-05-20 01:24:18'),
('SR-1779362927117', 'Jalan Berlubang', 'adadafeawf', -6.59297000, 106.78941700, '/uploads/laporan-1779362927110-760139432.jpg', 'Menunggu', '2026-05-21 04:28:47'),
('SR-1779363076652', 'Aspal Terkelupas', 'asdasdad', -6.59297000, 106.78941700, '/uploads/laporan-1779363076648-99362549.jpg', 'Menunggu', '2026-05-21 04:31:16'),
('SR-1779363376992', 'Aspal Terkelupas', 'adsadadas', -6.59297000, 106.78941700, '/uploads/laporan-1779363376985-934821187.jpg', 'Menunggu', '2026-05-21 04:36:16'),
('SR-1779363524778', 'Jalan Berlubang', 'adasdasd', -6.59297000, 106.78941700, '/uploads/laporan-1779363524768-52905420.jpg', 'Menunggu', '2026-05-21 04:38:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
