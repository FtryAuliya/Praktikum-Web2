-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2024 at 07:24 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `alamat`, `jenis_kelamin`, `email`, `telepon`) VALUES
(1, '2210010620', 'Fitriya Auliya', 'JL. Sungai Andai', 'Wanita', 'triyauliya@gmail.com', '083817224314'),
(3, '2210010621', 'Ali Syahabi', 'Jakarta Selatan', 'Pria', 'AliSyahabi@Gmail.com', '089767237823'),
(4, '2210010623', 'Yoriko', 'Handil Bakti', 'Wanita', 'yoriko@gmail.com', '08328239748'),
(5, '2210010624', 'Jennie', 'Korea Selatan', 'Wanita', 'jennieblackpink@gmail.com', '082324667812'),
(7, '2110010640', 'Zee', 'Jl. Adiyhaksa', 'Wanita', 'zee@gmail.com', '0867567556787'),
(8, '2110010634', 'Fareez', 'Jl. Kamboja', 'Pria', 'Fareez@gmail.com', '86745324560');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `level`, `password`) VALUES
(1, 'admin', 'admin', '$2y$10$3kcccmdDewl1aY6t1lAtI.3Jav7JtCRG6jFBHz1HAKZzJpnbbpwaq'),
(3, 'admin2', 'admin', '$2y$10$YpPmyn13Tf77l2I91..DfOErytiOg.6qUDFKr7dUk83KhsxUENaKS'),
(13, 'user', 'user', '$2y$10$yYePr4YhsXuWTiERbJTBuuj8xDTDx3.Xkj0h.HR9RPaDODQ02DLhO'),
(14, 'Auliya', 'user', '$2y$10$i9j8oLu5dPpiPmYB9bCk0Oyba2aO7B/KIqijVHMbsWfJZwZXNZk6u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
