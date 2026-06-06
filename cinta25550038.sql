-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Jun 2026 pada 13.21
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `cinta25550038`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(1, 'K001', 'Makanan'),
(2, 'K002', 'Minuman'),
(4, 'K003', 'Buah'),
(5, 'K004', 'Sayuran'),
(6, 'K005', 'Bahan Pangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `product_code` varchar(150) DEFAULT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `min_stock` int NOT NULL DEFAULT '5',
  `price` int DEFAULT NULL,
  `gambar` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(11, '1', 'P003', 'Ramen', 115, 10, 99998, '93ec6d7c2c705b535ff39a0fa697576a.jpg', '2026-05-08 07:23:49', '2026-05-26 04:31:39'),
(12, '1', 'P004', 'Ayam Geprek', 28, 11, 14000, '97b6bddff4cb5502a61321e03ad57106.webp', '2026-05-08 07:54:12', '2026-05-22 01:29:36'),
(13, '1', 'P005', 'Nasi Goreng', 5, 8, 20000, 'd6e23f64381de11437a8bda47e2d3529.jpg', '2026-05-12 06:56:05', '2026-05-21 03:14:20'),
(15, '1', 'P006', 'Sate Ayam', 45, 3, 15000, '1d8750e9bbb5c25fee4f8a9c3ce0da2b.webp', '2026-05-21 03:14:56', '2026-05-22 01:33:54'),
(16, '2', 'P007', 'Jus Buah', 40, 3, 10000, '83844b45de9c683f8d5299ecd27639e9.jpg', '2026-05-21 03:21:16', '2026-05-22 01:34:57'),
(17, '2', 'P008', 'Milkshake', 60, 19, 15000, '46c364eca07ed7a42ba1c14f9eef37d5.jpg', '2026-05-21 03:23:29', '2026-05-22 01:35:42'),
(18, '2', 'P009', 'Air Mineral', 35, 5, 4000, 'eb6cc043eba8243214b43643e92b7711.webp', '2026-05-21 03:35:12', '2026-05-22 01:39:22'),
(20, '2', 'P011', 'Thai Tea', 4, 8, 10000, '3fc8cd2d4e4eb69e9791c089afde2445.webp', '2026-05-22 01:20:10', '2026-05-22 01:40:16'),
(21, '6', 'P012', 'Telur Ayam', 24, 2, 20000, '91884052feb2a775d9cda99ca6eb5300.webp', '2026-05-22 01:23:44', '2026-05-26 05:22:20'),
(22, '6', 'P013', 'Gula', 15, 3, 17000, '3cdd14fd989174a69a6698b63a71f9fd.webp', '2026-05-22 01:26:29', '2026-05-26 05:20:41'),
(23, '6', 'P014', 'Beras', 70, 10, 170000, 'fbccb0c2facc26d95eeb3ac63c2687d1.webp', '2026-05-22 01:41:06', '2026-05-22 01:41:06'),
(24, '6', 'P015', 'Minyak Goreng', 55, 3, 17000, '283f33c10e1a4206f5b8288aba1fb818.webp', '2026-05-22 01:42:19', '2026-05-22 01:42:19'),
(25, '4', 'P016', 'Stobery', 30, 2, 16000, '3a71628c5204ff724b269f89c06b66c2.webp', '2026-05-22 01:43:52', '2026-05-22 01:43:52'),
(26, '4', 'P017', 'Kiwi', 25, 2, 17000, '6d6adf9d69495d8c0ecd93658601bb1b.webp', '2026-05-22 01:45:19', '2026-05-22 01:45:19'),
(27, '4', 'P018', 'Anggur Hijau', 45, 6, 18000, 'b68b7fbe04a2b43cceecc82abdf2b289.webp', '2026-05-22 01:49:34', '2026-05-22 01:49:34'),
(28, '4', 'P019', 'Jeruk', 38, 2, 19000, 'fe650fdfdb7277b53c27cb53f1d9fcb0.webp', '2026-05-22 01:50:14', '2026-05-22 01:50:14'),
(29, '5', 'P020', 'Selada', 30, 4, 12000, '508ca43e72cb90e6dc3a62088f51c08a.webp', '2026-05-22 01:57:19', '2026-05-22 01:57:19'),
(30, '5', 'P021', 'Daun Bawang', 5, 25, 6999, 'a4c19da8c99f673a56ce320a809393d4.png', '2026-05-25 04:21:13', '2026-05-25 04:21:13'),
(31, '5', 'P022', 'Kangkung', 32, 5, 10000, '224a7847c7f5c3df7e6c62bd3e362528.webp', '2026-05-25 04:23:30', '2026-05-25 04:23:30'),
(32, '5', 'P023', 'kubis', 35, 3, 15000, 'f3dfcd56f83a2e253cc9c5f57d10fcee.webp', '2026-05-25 04:24:55', '2026-05-25 04:24:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `stock_before` int DEFAULT NULL,
  `stock_after` int DEFAULT NULL,
  `note` varchar(2555) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 11, 'REDUCE', 5, 120, 115, '', '2026-05-16 08:12:14', 2),
(3, 12, 'REDUCE', 2, 46, 44, '', '2026-05-16 08:41:44', 2),
(4, 13, 'ADD', 4, 30, 34, '', '2026-05-16 08:42:15', 2),
(5, 12, 'REDUCE', 20, 44, 24, '', '2026-05-18 01:56:07', 2),
(6, 21, 'ADD', 4, 20, 24, '', '2026-05-26 05:22:20', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(1, 'Kembang Cinta Pelangi', 'kembangcinta25@gmail.com', '$2y$10$LBhFY/tYKNGmRvszcnQEOOlPXG1pHEjOLEcLREQZb5U6qe5.kEm7a', 'staff', 1, '2026-05-13 10:12:50'),
(2, 'Cinta Kembang Pelangi', 'cintakembang77@gmail.com', '$2y$10$vwrGlZo2cI4DDyGtYUTOPeSTf2KcFjvpc66bxIx0gFD8Dz.CUF5ma', 'admin', 1, '2026-05-13 10:14:07');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
