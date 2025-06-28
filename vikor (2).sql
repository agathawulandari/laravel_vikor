-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2025 pada 16.29
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vikor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL,
  `jenis_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `jenis_kriteria`) VALUES
(29, 'Tahun Produksi', 5, 1),
(30, 'CC', 10, 2),
(31, 'Transmisi', 10, 1),
(32, 'KM', 10, 2),
(33, 'Minat Pembeli', 15, 1),
(34, 'Harga', 15, 2),
(35, 'Kondisi Mesin', 20, 1),
(36, 'Warna', 15, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kv_kriteria`
--

CREATE TABLE `kv_kriteria` (
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kv_kriteria`
--

INSERT INTO `kv_kriteria` (`id_alternatif`, `id_kriteria`, `id_subkriteria`, `nilai`) VALUES
(4, 29, 68, 3),
(4, 30, 68, 2477),
(4, 31, 81, 1),
(4, 32, 81, 146000),
(4, 33, 78, 2),
(4, 34, 78, 270000000),
(4, 35, 75, 3),
(4, 36, 69, 4),
(5, 29, 67, 2),
(5, 30, 67, 1499),
(5, 31, 81, 1),
(5, 32, 81, 80000),
(5, 33, 80, 4),
(5, 34, 80, 175000000),
(5, 35, 76, 4),
(5, 36, 69, 4),
(6, 29, 67, 2),
(6, 30, 67, 1496),
(6, 31, 82, 2),
(6, 32, 82, 64000),
(6, 33, 78, 2),
(6, 34, 78, 165000000),
(6, 35, 76, 4),
(6, 36, 70, 3),
(7, 29, 67, 2),
(7, 30, 67, 1329),
(7, 31, 81, 1),
(7, 32, 81, 51000),
(7, 33, 80, 4),
(7, 34, 80, 150000000),
(7, 35, 76, 4),
(7, 36, 70, 3),
(8, 29, 67, 2),
(8, 30, 67, 1798),
(8, 31, 82, 2),
(8, 32, 82, 69000),
(8, 33, 79, 3),
(8, 34, 79, 195000000),
(8, 35, 75, 3),
(8, 36, 69, 4),
(9, 29, 67, 2),
(9, 30, 67, 2393),
(9, 31, 81, 1),
(9, 32, 81, 66000),
(9, 33, 80, 4),
(9, 34, 80, 305000000),
(9, 35, 76, 4),
(9, 36, 69, 4),
(10, 29, 67, 2),
(10, 30, 67, 1496),
(10, 31, 82, 2),
(10, 32, 82, 83000),
(10, 33, 78, 2),
(10, 34, 78, 180000000),
(10, 35, 76, 4),
(10, 36, 70, 3),
(11, 29, 67, 2),
(11, 30, 67, 1496),
(11, 31, 82, 2),
(11, 32, 82, 62000),
(11, 33, 79, 3),
(11, 34, 79, 155000000),
(11, 35, 75, 3),
(11, 36, 69, 4),
(12, 29, 67, 2),
(12, 30, 67, 1499),
(12, 31, 82, 2),
(12, 32, 82, 95000),
(12, 33, 78, 2),
(12, 34, 78, 175000000),
(12, 35, 76, 4),
(12, 36, 70, 3),
(13, 29, 67, 2),
(13, 30, 67, 1496),
(13, 31, 82, 2),
(13, 32, 82, 92000),
(13, 33, 78, 2),
(13, 34, 78, 208000000),
(13, 35, 75, 3),
(13, 36, 70, 3),
(14, 29, 67, 2),
(14, 30, 67, 1499),
(14, 31, 82, 2),
(14, 32, 82, 84000),
(14, 33, 79, 3),
(14, 34, 79, 210000000),
(14, 35, 75, 3),
(14, 36, 69, 4),
(15, 29, 67, 2),
(15, 30, 67, 2393),
(15, 31, 82, 2),
(15, 32, 82, 110000),
(15, 33, 77, 1),
(15, 34, 77, 440000000),
(15, 35, 76, 4),
(15, 36, 70, 3),
(16, 29, 66, 1),
(16, 30, 66, 2477),
(16, 31, 81, 1),
(16, 32, 81, 142000),
(16, 33, 77, 1),
(16, 34, 77, 235000000),
(16, 35, 75, 3),
(16, 36, 69, 4),
(17, 29, 67, 2),
(17, 30, 67, 2000),
(17, 31, 82, 2),
(17, 32, 82, 78000),
(17, 33, 78, 2),
(17, 34, 78, 300000000),
(17, 35, 76, 4),
(17, 36, 69, 4),
(18, 29, 66, 1),
(18, 30, 66, 2198),
(18, 31, 81, 1),
(18, 32, 81, 115000),
(18, 33, 77, 1),
(18, 34, 77, 160000000),
(18, 35, 75, 3),
(18, 36, 69, 4),
(19, 29, 68, 3),
(19, 30, 68, 2477),
(19, 31, 81, 1),
(19, 32, 81, 100000),
(19, 33, 77, 1),
(19, 34, 77, 310000000),
(19, 35, 76, 4),
(19, 36, 71, 2),
(20, 29, 66, 1),
(20, 30, 66, 2499),
(20, 31, 81, 1),
(20, 32, 81, 90000),
(20, 33, 77, 1),
(20, 34, 77, 160000000),
(20, 35, 75, 3),
(20, 36, 71, 2),
(21, 29, 67, 2),
(21, 30, 67, 1500),
(21, 31, 81, 1),
(21, 32, 81, 72000),
(21, 33, 78, 2),
(21, 34, 78, 105000000),
(21, 35, 75, 3),
(21, 36, 70, 3),
(22, 29, 67, 2),
(22, 30, 67, 2499),
(22, 31, 82, 2),
(22, 32, 82, 65000),
(22, 33, 77, 1),
(22, 34, 77, 280000000),
(22, 35, 76, 4),
(22, 36, 71, 2),
(23, 29, 67, 2),
(23, 30, 67, 2477),
(23, 31, 81, 1),
(23, 32, 81, 150000),
(23, 33, 77, 1),
(23, 34, 77, 180000000),
(23, 35, 75, 3),
(23, 36, 71, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `min_max`
--

CREATE TABLE `min_max` (
  `id_kriteria` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `min_max`
--

INSERT INTO `min_max` (`id_kriteria`, `min`, `max`) VALUES
(29, 1, 3),
(30, 1329, 2499),
(31, 1, 2),
(32, 51000, 150000),
(33, 1, 4),
(34, 105000000, 440000000),
(35, 3, 4),
(36, 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `n1` float NOT NULL,
  `n2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `normalisasi`
--

INSERT INTO `normalisasi` (`id_alternatif`, `id_kriteria`, `n1`, `n2`) VALUES
(4, 29, 0, 0),
(4, 30, 0.0188, 0.00188),
(4, 31, 1, 0.1),
(4, 32, 0.0404, 0.00404),
(4, 33, 0.6667, 0.100005),
(4, 34, 0.5075, 0.076125),
(4, 35, 1, 0.2),
(4, 36, 0, 0),
(5, 29, 0.5, 0.025),
(5, 30, 0.8547, 0.08547),
(5, 31, 1, 0.1),
(5, 32, 0.7071, 0.07071),
(5, 33, 0, 0),
(5, 34, 0.791, 0.11865),
(5, 35, 0, 0),
(5, 36, 0, 0),
(6, 29, 0.5, 0.025),
(6, 30, 0.8573, 0.08573),
(6, 31, 0, 0),
(6, 32, 0.8687, 0.08687),
(6, 33, 0.6667, 0.100005),
(6, 34, 0.8209, 0.123135),
(6, 35, 0, 0),
(6, 36, 0.5, 0.075),
(7, 29, 0.5, 0.025),
(7, 30, 1, 0.1),
(7, 31, 1, 0.1),
(7, 32, 1, 0.1),
(7, 33, 0, 0),
(7, 34, 0.8657, 0.129855),
(7, 35, 0, 0),
(7, 36, 0.5, 0.075),
(8, 29, 0.5, 0.025),
(8, 30, 0.5991, 0.05991),
(8, 31, 0, 0),
(8, 32, 0.8182, 0.08182),
(8, 33, 0.3333, 0.049995),
(8, 34, 0.7313, 0.109695),
(8, 35, 1, 0.2),
(8, 36, 0, 0),
(9, 29, 0.5, 0.025),
(9, 30, 0.0906, 0.00906),
(9, 31, 1, 0.1),
(9, 32, 0.8485, 0.08485),
(9, 33, 0, 0),
(9, 34, 0.403, 0.06045),
(9, 35, 0, 0),
(9, 36, 0, 0),
(10, 29, 0.5, 0.025),
(10, 30, 0.8573, 0.08573),
(10, 31, 0, 0),
(10, 32, 0.6768, 0.06768),
(10, 33, 0.6667, 0.100005),
(10, 34, 0.7761, 0.116415),
(10, 35, 0, 0),
(10, 36, 0.5, 0.075),
(11, 29, 0.5, 0.025),
(11, 30, 0.8573, 0.08573),
(11, 31, 0, 0),
(11, 32, 0.8889, 0.08889),
(11, 33, 0.3333, 0.049995),
(11, 34, 0.8507, 0.127605),
(11, 35, 1, 0.2),
(11, 36, 0, 0),
(12, 29, 0.5, 0.025),
(12, 30, 0.8547, 0.08547),
(12, 31, 0, 0),
(12, 32, 0.5556, 0.05556),
(12, 33, 0.6667, 0.100005),
(12, 34, 0.791, 0.11865),
(12, 35, 0, 0),
(12, 36, 0.5, 0.075),
(13, 29, 0.5, 0.025),
(13, 30, 0.8573, 0.08573),
(13, 31, 0, 0),
(13, 32, 0.5859, 0.05859),
(13, 33, 0.6667, 0.100005),
(13, 34, 0.6925, 0.103875),
(13, 35, 1, 0.2),
(13, 36, 0.5, 0.075),
(14, 29, 0.5, 0.025),
(14, 30, 0.8547, 0.08547),
(14, 31, 0, 0),
(14, 32, 0.6667, 0.06667),
(14, 33, 0.3333, 0.049995),
(14, 34, 0.6866, 0.10299),
(14, 35, 1, 0.2),
(14, 36, 0, 0),
(15, 29, 0.5, 0.025),
(15, 30, 0.0906, 0.00906),
(15, 31, 0, 0),
(15, 32, 0.404, 0.0404),
(15, 33, 1, 0.15),
(15, 34, 0, 0),
(15, 35, 0, 0),
(15, 36, 0.5, 0.075),
(16, 29, 1, 0.05),
(16, 30, 0.0188, 0.00188),
(16, 31, 1, 0.1),
(16, 32, 0.0808, 0.00808),
(16, 33, 1, 0.15),
(16, 34, 0.6119, 0.091785),
(16, 35, 1, 0.2),
(16, 36, 0, 0),
(17, 29, 0.5, 0.025),
(17, 30, 0.4265, 0.04265),
(17, 31, 0, 0),
(17, 32, 0.7273, 0.07273),
(17, 33, 0.6667, 0.100005),
(17, 34, 0.4179, 0.062685),
(17, 35, 0, 0),
(17, 36, 0, 0),
(18, 29, 1, 0.05),
(18, 30, 0.2573, 0.02573),
(18, 31, 1, 0.1),
(18, 32, 0.3535, 0.03535),
(18, 33, 1, 0.15),
(18, 34, 0.8358, 0.12537),
(18, 35, 1, 0.2),
(18, 36, 0, 0),
(19, 29, 0, 0),
(19, 30, 0.0188, 0.00188),
(19, 31, 1, 0.1),
(19, 32, 0.5051, 0.05051),
(19, 33, 1, 0.15),
(19, 34, 0.3881, 0.058215),
(19, 35, 0, 0),
(19, 36, 1, 0.15),
(20, 29, 1, 0.05),
(20, 30, 0, 0),
(20, 31, 1, 0.1),
(20, 32, 0.6061, 0.06061),
(20, 33, 1, 0.15),
(20, 34, 0.8358, 0.12537),
(20, 35, 1, 0.2),
(20, 36, 1, 0.15),
(21, 29, 0.5, 0.025),
(21, 30, 0.8538, 0.08538),
(21, 31, 1, 0.1),
(21, 32, 0.7879, 0.07879),
(21, 33, 0.6667, 0.100005),
(21, 34, 1, 0.15),
(21, 35, 1, 0.2),
(21, 36, 0.5, 0.075),
(22, 29, 0.5, 0.025),
(22, 30, 0, 0),
(22, 31, 0, 0),
(22, 32, 0.8586, 0.08586),
(22, 33, 1, 0.15),
(22, 34, 0.4776, 0.07164),
(22, 35, 0, 0),
(22, 36, 1, 0.15),
(23, 29, 0.5, 0.025),
(23, 30, 0.0188, 0.00188),
(23, 31, 1, 0.1),
(23, 32, 0, 0),
(23, 33, 1, 0.15),
(23, 34, 0.7761, 0.116415),
(23, 35, 1, 0.2),
(23, 36, 1, 0.15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` text NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `tgl_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `nama_alternatif`, `id_kriteria`, `ket`, `tgl_post`) VALUES
(67, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 29, '2021', '2024-12-18'),
(68, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 30, '2477', '2024-12-18'),
(69, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 31, 'Manual', '2024-12-18'),
(70, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 32, '146000', '2024-12-18'),
(71, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 33, '10', '2024-12-18'),
(72, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 34, '270000000', '2024-12-18'),
(73, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 35, 'Cukup Baik', '2024-12-18'),
(74, 4, 'Mitsubishi triton sc hdx 4x4 mt ', 36, 'Hitam', '2024-12-18'),
(75, 5, 'Mitsubishi xpander gls mt', 29, '2018', '2024-12-18'),
(76, 5, 'Mitsubishi xpander gls mt', 30, '1499', '2024-12-18'),
(77, 5, 'Mitsubishi xpander gls mt', 31, 'Manual', '2024-12-18'),
(78, 5, 'Mitsubishi xpander gls mt', 32, '80000', '2024-12-18'),
(79, 5, 'Mitsubishi xpander gls mt', 33, '48', '2024-12-18'),
(80, 5, 'Mitsubishi xpander gls mt', 34, '175000000', '2024-12-18'),
(81, 5, 'Mitsubishi xpander gls mt', 35, 'Baik', '2024-12-18'),
(82, 5, 'Mitsubishi xpander gls mt', 36, 'Hitam', '2024-12-18'),
(83, 6, 'Toyota avanza g at', 29, '2019', '2024-12-18'),
(84, 6, 'Toyota avanza g at', 30, '1496', '2024-12-18'),
(85, 6, 'Toyota avanza g at', 31, 'Matic', '2024-12-18'),
(86, 6, 'Toyota avanza g at', 32, '64000', '2024-12-18'),
(87, 6, 'Toyota avanza g at', 33, '19', '2024-12-18'),
(88, 6, 'Toyota avanza g at', 34, '165000000', '2024-12-18'),
(89, 6, 'Toyota avanza g at', 35, 'Baik', '2024-12-18'),
(90, 6, 'Toyota avanza g at', 36, 'Silver', '2024-12-18'),
(101, 8, 'Toyota Corolla Altis V AT', 29, '2016', '2024-12-18'),
(102, 8, 'Toyota Corolla Altis V AT', 30, '1798', '2024-12-18'),
(103, 8, 'Toyota Corolla Altis V AT', 31, 'Matic', '2024-12-18'),
(104, 8, 'Toyota Corolla Altis V AT', 32, '69000', '2024-12-18'),
(105, 8, 'Toyota Corolla Altis V AT', 33, '23', '2024-12-18'),
(106, 8, 'Toyota Corolla Altis V AT', 34, '195000000', '2024-12-18'),
(107, 8, 'Toyota Corolla Altis V AT', 35, 'Cukup Baik', '2024-12-18'),
(108, 8, 'Toyota Corolla Altis V AT', 36, 'Hitam', '2024-12-18'),
(110, 9, 'Toyota Innova G MT Diesel', 29, '2020', '2024-12-18'),
(111, 9, 'Toyota Innova G MT Diesel', 30, '2393', '2024-12-18'),
(112, 9, 'Toyota Innova G MT Diesel', 31, 'Manual', '2024-12-18'),
(113, 9, 'Toyota Innova G MT Diesel', 32, '66000', '2024-12-18'),
(114, 9, 'Toyota Innova G MT Diesel', 33, '42', '2024-12-18'),
(115, 9, 'Toyota Innova G MT Diesel', 34, '305000000', '2024-12-18'),
(116, 9, 'Toyota Innova G MT Diesel', 35, 'Baik', '2024-12-18'),
(117, 9, 'Toyota Innova G MT Diesel', 36, 'Hitam', '2024-12-18'),
(119, 10, 'Toyota Rush G MT', 29, '2018', '2024-12-18'),
(120, 10, 'Toyota Rush G MT', 30, '1496', '2024-12-18'),
(121, 10, 'Toyota Rush G MT', 31, 'Matic', '2024-12-18'),
(122, 10, 'Toyota Rush G MT', 32, '83000', '2024-12-18'),
(123, 10, 'Toyota Rush G MT', 33, '17', '2024-12-18'),
(124, 10, 'Toyota Rush G MT', 34, '180000000', '2024-12-18'),
(125, 10, 'Toyota Rush G MT', 35, 'Baik', '2024-12-18'),
(126, 10, 'Toyota Rush G MT', 36, 'Silver', '2024-12-18'),
(128, 11, 'Toyota Vios G CVT', 29, '2018', '2024-12-18'),
(129, 11, 'Toyota Vios G CVT', 30, '1496', '2024-12-18'),
(130, 11, 'Toyota Vios G CVT', 31, 'Matic', '2024-12-18'),
(131, 11, 'Toyota Vios G CVT', 32, '62000', '2024-12-18'),
(132, 11, 'Toyota Vios G CVT', 33, '24', '2024-12-18'),
(133, 11, 'Toyota Vios G CVT', 34, '155000000', '2024-12-18'),
(134, 11, 'Toyota Vios G CVT', 35, 'Cukup Baik', '2024-12-18'),
(135, 11, 'Toyota Vios G CVT', 36, 'Hitam', '2024-12-18'),
(137, 12, 'Mitsubishi Xpander Ultimate A/T', 29, '2018', '2024-12-18'),
(138, 12, 'Mitsubishi Xpander Ultimate A/T', 30, '1499', '2024-12-18'),
(139, 12, 'Mitsubishi Xpander Ultimate A/T', 31, 'Matic', '2024-12-18'),
(140, 12, 'Mitsubishi Xpander Ultimate A/T', 32, '95000', '2024-12-18'),
(141, 12, 'Mitsubishi Xpander Ultimate A/T', 33, '19', '2024-12-18'),
(142, 12, 'Mitsubishi Xpander Ultimate A/T', 34, '175000000', '2024-12-18'),
(143, 12, 'Mitsubishi Xpander Ultimate A/T', 35, 'Baik', '2024-12-18'),
(144, 12, 'Mitsubishi Xpander Ultimate A/T', 36, 'Silver', '2024-12-18'),
(146, 13, 'Toyota Rush G AT', 29, '2018', '2024-12-18'),
(147, 13, 'Toyota Rush G AT', 30, '1496', '2024-12-18'),
(148, 13, 'Toyota Rush G AT', 31, 'Matic', '2024-12-18'),
(149, 13, 'Toyota Rush G AT', 32, '92000', '2024-12-18'),
(150, 13, 'Toyota Rush G AT', 33, '15', '2024-12-18'),
(151, 13, 'Toyota Rush G AT', 34, '208000000', '2024-12-18'),
(152, 13, 'Toyota Rush G AT', 35, 'Cukup Baik', '2024-12-18'),
(153, 13, 'Toyota Rush G AT', 36, 'Silver', '2024-12-18'),
(155, 14, 'Mitsubishi Exceed AT', 29, '2019', '2024-12-18'),
(156, 14, 'Mitsubishi Exceed AT', 30, '1499', '2024-12-18'),
(157, 14, 'Mitsubishi Exceed AT', 31, 'Matic', '2024-12-18'),
(158, 14, 'Mitsubishi Exceed AT', 32, '84000', '2024-12-18'),
(159, 14, 'Mitsubishi Exceed AT', 33, '27', '2024-12-18'),
(160, 14, 'Mitsubishi Exceed AT', 34, '210000000', '2024-12-18'),
(161, 14, 'Mitsubishi Exceed AT', 35, 'Cukup Baik', '2024-12-18'),
(162, 14, 'Mitsubishi Exceed AT', 36, 'Hitam', '2024-12-18'),
(164, 15, 'Toyota Fortuner VRZ 4x4 AT', 29, '2016', '2024-12-18'),
(165, 15, 'Toyota Fortuner VRZ 4x4 AT', 30, '2393', '2024-12-18'),
(166, 15, 'Toyota Fortuner VRZ 4x4 AT', 31, 'Matic', '2024-12-18'),
(167, 15, 'Toyota Fortuner VRZ 4x4 AT', 32, '110000', '2024-12-18'),
(168, 15, 'Toyota Fortuner VRZ 4x4 AT', 33, '6', '2024-12-18'),
(169, 15, 'Toyota Fortuner VRZ 4x4 AT', 34, '440000000', '2024-12-18'),
(170, 15, 'Toyota Fortuner VRZ 4x4 AT', 35, 'Baik', '2024-12-18'),
(171, 15, 'Toyota Fortuner VRZ 4x4 AT', 36, 'Silver', '2024-12-18'),
(173, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 29, '2012', '2024-12-18'),
(174, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 30, '2477', '2024-12-18'),
(175, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 31, 'Manual', '2024-12-18'),
(176, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 32, '142000', '2024-12-18'),
(177, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 33, '4', '2024-12-18'),
(178, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 34, '235000000', '2024-12-18'),
(179, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 35, 'Cukup Baik', '2024-12-18'),
(180, 16, 'Mitsubishi Pajero Sport GLX 4x4 MT', 36, 'Hitam', '2024-12-18'),
(182, 17, 'Toyota Innova Reborn G AT', 29, '2018', '2024-12-18'),
(183, 17, 'Toyota Innova Reborn G AT', 30, '2000', '2024-12-18'),
(184, 17, 'Toyota Innova Reborn G AT', 31, 'Matic', '2024-12-18'),
(185, 17, 'Toyota Innova Reborn G AT', 32, '78000', '2024-12-18'),
(186, 17, 'Toyota Innova Reborn G AT', 33, '11', '2024-12-18'),
(187, 17, 'Toyota Innova Reborn G AT', 34, '300000000', '2024-12-18'),
(188, 17, 'Toyota Innova Reborn G AT', 35, 'Baik', '2024-12-18'),
(189, 17, 'Toyota Innova Reborn G AT', 36, 'Hitam', '2024-12-18'),
(191, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 29, '2014', '2024-12-18'),
(192, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 30, '2198', '2024-12-18'),
(193, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 31, 'Manual', '2024-12-18'),
(194, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 32, '115000', '2024-12-18'),
(195, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 33, '3', '2024-12-18'),
(196, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 34, '160000000', '2024-12-18'),
(197, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 35, 'Cukup Baik', '2024-12-18'),
(198, 18, 'Ford Ranger DC Base 2.2L (4x4) M/T', 36, 'Hitam', '2024-12-18'),
(200, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 29, '2021', '2024-12-18'),
(201, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 30, '2477', '2024-12-18'),
(202, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 31, 'Manual', '2024-12-18'),
(203, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 32, '100000', '2024-12-18'),
(204, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 33, '1', '2024-12-18'),
(205, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 34, '310000000', '2024-12-18'),
(206, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 35, 'Baik', '2024-12-18'),
(207, 19, 'Mitsubishi Triton 2.4 SC GLX (4x2) M/T', 36, 'Putih', '2024-12-18'),
(209, 20, 'Ford Ranger SC 4x2 M/T 2011', 29, '2011', '2024-12-18'),
(210, 20, 'Ford Ranger SC 4x2 M/T 2011', 30, '2499', '2024-12-18'),
(211, 20, 'Ford Ranger SC 4x2 M/T 2011', 31, 'Manual', '2024-12-18'),
(212, 20, 'Ford Ranger SC 4x2 M/T 2011', 32, '90000', '2024-12-18'),
(213, 20, 'Ford Ranger SC 4x2 M/T 2011', 33, '1', '2024-12-18'),
(214, 20, 'Ford Ranger SC 4x2 M/T 2011', 34, '160000000', '2024-12-18'),
(215, 20, 'Ford Ranger SC 4x2 M/T 2011', 35, 'Cukup Baik', '2024-12-18'),
(216, 20, 'Ford Ranger SC 4x2 M/T 2011', 36, 'Putih', '2024-12-18'),
(232, 7, 'Toyota Avanza G MT', 29, '2018', '2024-12-18'),
(233, 7, 'Toyota Avanza G MT', 30, '1329', '2024-12-18'),
(234, 7, 'Toyota Avanza G MT', 31, 'Manual', '2024-12-18'),
(235, 7, 'Toyota Avanza G MT', 32, '51000', '2024-12-18'),
(236, 7, 'Toyota Avanza G MT', 33, '30', '2024-12-18'),
(237, 7, 'Toyota Avanza G MT', 34, '150000000', '2024-12-18'),
(238, 7, 'Toyota Avanza G MT', 35, 'Baik', '2024-12-18'),
(239, 7, 'Toyota Avanza G MT', 36, 'Silver', '2024-12-18'),
(327, 21, 'Daihatsu Grand Max Box', 29, '2019', '2024-12-18'),
(328, 21, 'Daihatsu Grand Max Box', 30, '1500', '2024-12-18'),
(329, 21, 'Daihatsu Grand Max Box', 31, 'Manual', '2024-12-18'),
(330, 21, 'Daihatsu Grand Max Box', 32, '72000', '2024-12-18'),
(331, 21, 'Daihatsu Grand Max Box', 33, '15', '2024-12-18'),
(332, 21, 'Daihatsu Grand Max Box', 34, '105000000', '2024-12-18'),
(333, 21, 'Daihatsu Grand Max Box', 35, 'Cukup Baik', '2024-12-18'),
(334, 21, 'Daihatsu Grand Max Box', 36, 'Silver', '2024-12-18'),
(335, 22, 'Isuzu Mux 4x2 AT diesel', 29, '2016', '2024-12-18'),
(336, 22, 'Isuzu Mux 4x2 AT diesel', 30, '2499', '2024-12-18'),
(337, 22, 'Isuzu Mux 4x2 AT diesel', 31, 'Matic', '2024-12-18'),
(338, 22, 'Isuzu Mux 4x2 AT diesel', 32, '65000', '2024-12-18'),
(339, 22, 'Isuzu Mux 4x2 AT diesel', 33, '7', '2024-12-18'),
(340, 22, 'Isuzu Mux 4x2 AT diesel', 34, '280000000', '2024-12-18'),
(341, 22, 'Isuzu Mux 4x2 AT diesel', 35, 'Baik', '2024-12-18'),
(342, 22, 'Isuzu Mux 4x2 AT diesel', 36, 'Putih', '2024-12-18'),
(343, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 29, '2016', '2024-12-18'),
(344, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 30, '2477', '2024-12-18'),
(345, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 31, 'Manual', '2024-12-18'),
(346, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 32, '150000', '2024-12-18'),
(347, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 33, '6', '2024-12-18'),
(348, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 34, '180000000', '2024-12-18'),
(349, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 35, 'Cukup Baik', '2024-12-18'),
(350, 23, 'Mitsubishi Triton DC HDX 4x4 MT', 36, 'Putih', '2024-12-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `si` float NOT NULL,
  `ri` float NOT NULL,
  `qi` float NOT NULL,
  `rank` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `si`, `ri`, `qi`, `rank`, `updated_at`) VALUES
(4, 0.48205, 0.2, 0.682072, 11, '2025-02-17 12:58:52'),
(5, 0.39983, 0.11865, 0.201466, 3, '2025-02-17 12:58:52'),
(6, 0.49574, 0.123135, 0.310045, 7, '2025-02-17 12:58:52'),
(7, 0.529855, 0.129855, 0.374289, 8, '2025-02-17 12:58:52'),
(8, 0.52642, 0.2, 0.721929, 12, '2025-02-17 12:58:52'),
(9, 0.27936, 0.1, 0, 1, '2025-02-17 12:58:52'),
(10, 0.46983, 0.116415, 0.25317, 4, '2025-02-17 12:58:52'),
(11, 0.57722, 0.2, 0.767561, 14, '2025-02-17 12:58:52'),
(12, 0.459685, 0.11865, 0.255232, 5, '2025-02-17 12:58:52'),
(13, 0.6482, 0.2, 0.831321, 16, '2025-02-17 12:58:52'),
(14, 0.530125, 0.2, 0.725257, 13, '2025-02-17 12:58:52'),
(15, 0.29946, 0.15, 0.268055, 6, '2025-02-17 12:58:52'),
(16, 0.601745, 0.2, 0.789592, 15, '2025-02-17 12:58:52'),
(17, 0.30307, 0.100005, 0.0213232, 2, '2025-02-17 12:58:52'),
(18, 0.68645, 0.2, 0.86568, 17, '2025-02-17 12:58:52'),
(19, 0.510605, 0.15, 0.457723, 10, '2025-02-17 12:58:52'),
(20, 0.83598, 0.2, 1, 20, '2025-02-17 12:58:52'),
(21, 0.814175, 0.2, 0.980413, 19, '2025-02-17 12:58:52'),
(22, 0.4825, 0.15, 0.432476, 9, '2025-02-17 12:58:52'),
(23, 0.743295, 0.2, 0.916743, 18, '2025-02-17 12:58:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_subkriteria` varchar(255) NOT NULL,
  `nilai_min` float NOT NULL,
  `nilai_max` float NOT NULL,
  `bobot_sub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `nilai_min`, `nilai_max`, `bobot_sub`) VALUES
(66, 29, '<= 2015', 2009, 2015, 1),
(67, 29, '<= 2020', 2016, 2020, 2),
(68, 29, '> 2020', 2021, 2025, 3),
(69, 36, 'Hitam', 0, 0, 4),
(70, 36, 'Silver', 0, 0, 3),
(71, 36, 'Putih', 0, 0, 2),
(72, 36, 'Lainnya', 0, 0, 1),
(73, 35, 'Sangat Buruk', 0, 0, 1),
(74, 35, 'Kurang Baik', 0, 0, 2),
(75, 35, 'Cukup Baik', 0, 0, 3),
(76, 35, 'Baik', 0, 0, 4),
(77, 33, '< 10', 0, 9, 1),
(78, 33, '< 20', 10, 19, 2),
(79, 33, '< 30', 20, 29, 3),
(80, 33, '>= 30', 30, 50, 4),
(81, 31, 'Manual', 0, 0, 1),
(82, 31, 'Matic', 0, 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tipe_akses` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `tipe_akses`, `password`) VALUES
(1, 'agatha', 'Admin', '202cb962ac59075b964b07152d234b70'),
(2, 'tata2', 'Teknisi', '202cb962ac59075b964b07152d234b70'),
(4, 'Indah', 'Manager', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kv_kriteria`
--
ALTER TABLE `kv_kriteria`
  ADD UNIQUE KEY `id_alternatif` (`id_alternatif`,`id_kriteria`);

--
-- Indeks untuk tabel `min_max`
--
ALTER TABLE `min_max`
  ADD UNIQUE KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD UNIQUE KEY `id_alternatif` (`id_alternatif`,`id_kriteria`);

--
-- Indeks untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD UNIQUE KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
