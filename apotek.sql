-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 08:33 PM
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
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `buktipembayaran`
--

CREATE TABLE `buktipembayaran` (
  `id_bukti` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `konfirmasi` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buktipembayaran`
--

INSERT INTO `buktipembayaran` (`id_bukti`, `id_pesanan`, `foto`, `konfirmasi`, `created_at`, `updated_at`) VALUES
(5, 17, 'Bukti_20240313083727.jpg', 'Terkonfirmasi', '2024-03-13 08:37:28', '2024-03-13 08:37:28'),
(6, 21, 'Bukti_20240314054821.jpg', 'Terkonfirmasi', '2024-03-14 05:48:22', '2024-03-14 05:48:22'),
(7, 26, 'Bukti_20240403070610.jpeg', 'Terkonfirmasi', '2024-04-03 07:06:10', '2024-04-03 07:06:10'),
(8, 30, 'Bukti_20240503014128.jpg', 'Terkonfirmasi', '2024-05-03 13:41:28', '2024-05-03 13:41:28'),
(9, 31, 'Bukti_20240503014721.jpg', 'Terkonfirmasi', '2024-05-03 13:47:21', '2024-05-03 13:47:21'),
(11, 35, 'Bukti_20240508031701.png', 'Terkonfirmasi', '2024-05-08 03:17:02', '2024-05-08 03:17:02'),
(13, 39, 'Bukti_20240515031832.jpg', 'Ditolak', '2024-05-15 15:18:33', '2024-05-15 15:18:33'),
(14, 40, 'Bukti_20240515031937.png', 'Ditolak', '2024-05-15 15:19:37', '2024-05-15 15:19:37'),
(15, 41, 'Bukti_20240515042720.png', 'Terkonfirmasi', '2024-05-15 16:27:20', '2024-05-15 16:27:20'),
(16, 42, 'Bukti_20240515043016.png', 'Ditolak', '2024-05-15 16:30:16', '2024-05-15 16:30:16'),
(17, 45, 'Bukti_20240519125242.png', 'Terkonfirmasi', '2024-05-19 12:52:43', '2024-05-19 12:52:43'),
(18, 46, 'Bukti_20240519013936.png', '', '2024-05-19 13:39:36', '2024-05-19 13:39:36'),
(19, 43, 'Bukti_20240519020012.png', 'Ditolak', '2024-05-19 14:00:12', '2024-05-19 14:00:12'),
(20, 50, 'Bukti_20240529025140.png', 'Terkonfirmasi', '2024-05-29 14:51:40', '2024-05-29 14:51:40'),
(21, 56, 'Bukti_20240621045130.jpg', 'Terkonfirmasi', '2024-06-21 04:51:30', '2024-06-21 04:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `buktipenerimaan`
--

CREATE TABLE `buktipenerimaan` (
  `id_penerimaan` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buktipenerimaan`
--

INSERT INTO `buktipenerimaan` (`id_penerimaan`, `id_pesanan`, `foto`, `created_at`, `updated_at`) VALUES
(2, 35, 'Bukti_20240520094029.png', '2024-05-20 09:40:29', '2024-05-20 09:40:29'),
(3, 45, 'Bukti_20240529011909.jpeg', '2024-05-29 13:19:09', '2024-05-29 13:19:09'),
(4, 23, 'Bukti_20240531050533.jpeg', '2024-05-31 05:05:33', '2024-05-31 05:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Obat Bebas', '2024-02-06 13:22:27', '2024-02-06 13:22:27'),
(2, 'Obat Bebas Terbatas', '2024-02-06 13:22:27', '2024-02-06 13:22:27'),
(3, 'Obat Keras', '2024-02-06 13:22:27', '2024-02-06 13:22:27'),
(5, 'Vitamin', '2024-02-06 14:22:38', '2024-02-06 14:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id`, `nama`, `ket`) VALUES
(1, 'url_base', 'http://localhost/apotek/');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `wilayah`, `ongkir`, `created_at`, `updated_at`) VALUES
(1, 'Planjan', 0, '2024-03-14 06:49:00', '2024-03-14 06:49:00'),
(2, 'Ciwuni', 2500, '2024-03-12 07:40:19', '2024-03-12 07:40:19'),
(3, 'Dondong', 2500, '2024-03-12 07:40:39', '2024-03-12 07:40:39'),
(4, 'Karangjengkol', 2500, '2024-03-12 07:40:59', '2024-03-12 07:40:59'),
(5, 'Kalisabuk', 2500, '2024-03-12 07:41:55', '2024-03-12 07:41:55'),
(6, 'Jangrana', 5000, '2024-03-12 07:41:55', '2024-03-12 07:41:55'),
(9, 'Kuripan', 5000, '2024-05-03 15:10:12', '2024-05-03 15:10:12'),
(10, 'Keleng', 5000, '2024-05-03 15:41:42', '2024-05-03 15:41:42'),
(11, 'Kesugihan', 5000, '2024-05-03 15:41:58', '2024-05-03 15:41:58'),
(12, 'Pesanggrahan', 7500, '2024-05-03 15:43:08', '2024-05-03 15:43:08'),
(13, 'Bulupayung', 7500, '2024-05-03 15:43:54', '2024-05-03 15:43:54'),
(14, 'Menganti', 7500, '2024-05-03 15:43:54', '2024-05-03 15:43:54'),
(15, 'Karangkadri', 7500, '2024-05-03 15:43:54', '2024-05-03 15:43:54'),
(16, 'Slarang', 7500, '2024-05-03 15:43:54', '2024-05-03 15:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `id_pesanan`, `id_ongkir`, `alamat`, `wilayah`, `ongkir`, `created_at`, `updated_at`) VALUES
(6, 17, 4, 'Karangjengkol Kesugihan', 'Karangjengkol', 2500, '2024-03-13 08:36:55', '2024-03-13 08:36:55'),
(7, 18, 2, 'Ciwuni', 'Ciwuni', 2500, '2024-03-13 08:44:08', '2024-03-13 08:44:08'),
(8, 19, 5, 'Pringtutul Kalisabuk', 'Kalisabuk', 2500, '2024-03-13 08:59:13', '2024-03-13 08:59:13'),
(9, 21, 3, 'Menganti', 'Menganti', 7500, '2024-03-14 05:48:08', '2024-03-14 05:48:08'),
(10, 22, 6, 'Jangrana', 'Jangrana', 5000, '2024-03-14 06:45:48', '2024-03-14 06:45:48'),
(11, 23, 1, 'Jalan Jendral Sudirman Planjan', 'Planjan', 0, '2024-03-14 06:49:38', '2024-03-14 06:49:38'),
(12, 26, 3, 'Dungsari Dondong', 'Dondong', 2500, '2024-04-03 07:05:38', '2024-04-03 07:05:38'),
(13, 30, 12, 'Pesanggrahan', 'Pesanggrahan', 7500, '2024-05-03 13:41:10', '2024-05-03 13:41:10'),
(16, 35, 9, 'Jalan Pahlawan Kuripan', 'Kuripan', 5000, '2024-05-08 03:16:14', '2024-05-08 03:16:14'),
(18, 39, 1, 'Planjan', 'Planjan', 0, '2024-05-15 15:17:50', '2024-05-15 15:17:50'),
(19, 40, 5, 'Kalisabuk', 'Kalisabuk', 2500, '2024-05-15 15:19:24', '2024-05-15 15:19:24'),
(20, 41, 4, 'Karangjengkol', 'Karangjengkol', 2500, '2024-05-15 16:27:07', '2024-05-15 16:27:07'),
(21, 42, 2, 'Ciwuni', 'Ciwuni', 2500, '2024-05-15 16:30:03', '2024-05-15 16:30:03'),
(22, 43, 9, 'Jalan Pahlawan', 'Kuripan', 5000, '2024-05-17 09:31:09', '2024-05-17 09:31:09'),
(23, 45, 16, 'Jalan Pramuka', 'Slarang', 7500, '2024-05-19 12:52:32', '2024-05-19 12:52:32'),
(24, 46, 14, 'Jalan merapi', 'Menganti', 7500, '2024-05-19 13:39:26', '2024-05-19 13:39:26'),
(25, 50, 16, 'Jalan Sirkaya', 'Slarang', 7500, '2024-05-29 14:45:09', '2024-05-29 14:45:09'),
(26, 56, 15, 'Jalan Jendral Sudirman', 'Karangkadri', 7500, '2024-06-21 04:50:24', '2024-06-21 04:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `nama_kasir` varchar(20) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `pembayaran` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `metode_pembayaran` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `no_order`, `nama_kasir`, `grand_total`, `pembayaran`, `kembalian`, `metode_pembayaran`, `created_at`, `updated_at`) VALUES
(46, 'OD-202403107333', 'Kasir 1', 21000, 25000, 4000, 'QRIS', '2024-03-10 12:44:21', '2024-03-10 12:44:21'),
(49, 'OD-202405032128', 'Kasir 1', 7000, 10000, 3000, 'Tunai', '2024-05-03 15:52:27', '2024-05-03 15:52:27'),
(50, 'OD-202405085382', 'Kasir 1', 20000, 20000, 0, 'QRIS', '2024-05-08 02:25:57', '2024-05-08 02:25:57'),
(51, 'OD-202405132746', 'Kasir 1', 118000, 150000, 32000, 'QRIS', '2024-05-13 03:21:25', '2024-05-13 03:21:25'),
(52, 'OD-202405158340', 'Kasir 1', 2000, 2000, 0, 'QRIS', '2024-05-15 05:42:34', '2024-05-15 05:42:34'),
(53, 'OD-202405179914', 'Kasir 1', 5000, 6000, 1000, 'Tunai', '2024-05-17 14:52:16', '2024-05-17 14:52:16'),
(54, 'OD-202405295991', 'Kasir 1', 15000, NULL, -15000, 'QRIS', '2024-05-29 12:48:33', '2024-05-29 12:48:33'),
(55, 'OD-202405314046', 'Kasir 1', 5000, NULL, -5000, 'Tunai', '2024-05-31 05:01:54', '2024-05-31 05:01:54'),
(56, 'OD-202405313721', 'Kasir 1', 12000, 15000, 3000, 'Tunai', '2024-05-31 05:02:27', '2024-05-31 05:02:27'),
(57, 'OD-202406116637', 'Kasir 1', 15000, 20000, 5000, 'QRIS', '2024-06-11 03:08:50', '2024-06-11 03:08:50'),
(58, 'OD-202406199507', 'Kasir 1', 7000, 10000, 3000, 'Tunai', '2024-06-19 04:57:39', '2024-06-19 04:57:39'),
(59, 'OD-202406197326', 'Kasir 1', 25000, 30000, 5000, 'QRIS', '2024-06-19 06:12:30', '2024-06-19 06:12:30'),
(60, 'OD-202406207382', 'Kasir 1', 9000, 10000, 1000, 'Tunai', '2024-06-20 11:12:46', '2024-06-20 11:12:46'),
(61, 'OD-202406219095', 'Kasir 1', 26500, 30000, 3500, 'Tunai', '2024-06-21 04:56:19', '2024-06-21 04:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `penjualandetail`
--

CREATE TABLE `penjualandetail` (
  `id_penjualandetail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualandetail`
--

INSERT INTO `penjualandetail` (`id_penjualandetail`, `id_penjualan`, `id_produk`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(49, 46, 4, 2, 21000, '2024-03-10 05:44:21', '2024-03-10 05:44:21'),
(51, 49, 34, 2, 7000, '2024-05-03 08:52:27', '2024-05-03 08:52:27'),
(52, 50, 43, 2, 10000, '2024-05-07 19:25:57', '2024-05-07 19:25:57'),
(53, 50, 42, 1, 10000, '2024-05-07 19:25:57', '2024-05-07 19:25:57'),
(54, 51, 46, 2, 26000, '2024-05-12 20:21:25', '2024-05-12 20:21:25'),
(55, 51, 39, 1, 68000, '2024-05-12 20:21:25', '2024-05-12 20:21:25'),
(56, 51, 18, 2, 24000, '2024-05-12 20:21:25', '2024-05-12 20:21:25'),
(57, 52, 19, 1, 2000, '2024-05-14 22:42:34', '2024-05-14 22:42:34'),
(58, 53, 5, 1, 5000, '2024-05-17 07:52:16', '2024-05-17 07:52:16'),
(59, 54, 43, 3, 15000, '2024-05-29 05:48:33', '2024-05-29 05:48:33'),
(60, 55, 43, 1, 5000, '2024-05-30 22:01:54', '2024-05-30 22:01:54'),
(61, 56, 49, 1, 12000, '2024-05-30 22:02:27', '2024-05-30 22:02:27'),
(62, 57, 4, 1, 10500, '2024-06-10 20:08:50', '2024-06-10 20:08:50'),
(63, 57, 29, 1, 4500, '2024-06-10 20:08:50', '2024-06-10 20:08:50'),
(64, 58, 1, 1, 3500, '2024-06-18 21:57:39', '2024-06-18 21:57:39'),
(65, 58, 3, 1, 3500, '2024-06-18 21:57:39', '2024-06-18 21:57:39'),
(66, 59, 2, 1, 3000, '2024-06-18 23:12:31', '2024-06-18 23:12:31'),
(67, 59, 25, 1, 22000, '2024-06-18 23:12:31', '2024-06-18 23:12:31'),
(68, 60, 2, 3, 9000, '2024-06-20 04:12:46', '2024-06-20 04:12:46'),
(69, 61, 34, 1, 3500, '2024-06-20 21:56:19', '2024-06-20 21:56:19'),
(70, 61, 40, 1, 23000, '2024-06-20 21:56:19', '2024-06-20 21:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `metode_pengiriman` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `no_order`, `grand_total`, `metode_pengiriman`, `metode_pembayaran`, `status`, `id`, `created_at`, `updated_at`) VALUES
(17, 'ONLINE-202403134745', 33000, 'Dikirim', 'QRIS', 'Selesai', 7, '2024-03-13 08:36:10', '2024-03-13 08:36:10'),
(18, 'ONLINE-202403136615', 14000, 'Dikirim', 'Tunai', 'Ditolak', 22, '2024-03-13 08:41:32', '2024-03-13 08:41:32'),
(19, 'ONLINE-202403137299', 6000, 'Dikirim', 'Tunai', 'Selesai', 22, '2024-03-13 08:44:36', '2024-03-13 08:44:36'),
(20, 'ONLINE-202403138607', 5000, 'Dikirim', 'Tunai', 'Selesai', 7, '2024-03-13 08:48:41', '2024-03-13 08:48:41'),
(21, 'ONLINE-202403142531', 14000, 'Dikirim', 'QRIS', 'Selesai', 28, '2024-03-14 05:46:53', '2024-03-14 05:46:53'),
(22, 'ONLINE-202403142311', 5000, 'Dikirim', 'QRIS', 'Ditolak', 28, '2024-03-14 06:45:25', '2024-03-14 06:45:25'),
(23, 'ONLINE-202403141977', 14000, 'Dikirim', 'Tunai', 'Selesai', 6, '2024-03-14 06:47:59', '2024-03-14 06:47:59'),
(24, 'ONLINE-202403154769', 5000, 'Diambil', 'Tunai', 'Ditolak', 28, '2024-03-15 07:15:37', '2024-03-15 07:15:37'),
(25, 'ONLINE-202403286901', 24500, 'Diambil', 'Tunai', 'Dibatalkan', 7, '2024-03-28 05:48:25', '2024-03-28 05:48:25'),
(26, 'ONLINE-202404033936', 25000, 'Dikirim', 'QRIS', 'Selesai', 6, '2024-04-03 07:04:56', '2024-04-03 07:04:56'),
(27, 'ONLINE-202404037898', 71000, 'Dikirim', 'Tunai', 'Ditolak', 22, '2024-04-03 07:52:27', '2024-04-03 07:52:27'),
(28, 'ONLINE-202404051755', 23000, 'Diambil', 'Tunai', 'Ditolak', 7, '2024-04-05 08:00:09', '2024-04-05 08:00:09'),
(29, 'ONLINE-202405038421', 23000, 'Diambil', 'Tunai', 'Selesai', 28, '2024-05-03 13:13:16', '2024-05-03 13:13:16'),
(30, 'ONLINE-202405031215', 10000, 'Dikirim', 'QRIS', 'Selesai', 23, '2024-05-03 13:40:49', '2024-05-03 13:40:49'),
(31, 'ONLINE-202405037035', 6000, 'Diambil', 'QRIS', 'Ditolak', 28, '2024-05-03 13:46:26', '2024-05-03 13:46:26'),
(34, 'ONLINE-202405083439', 12000, 'Diambil', 'Tunai', 'Ditolak', 28, '2024-05-08 02:27:24', '2024-05-08 02:27:24'),
(35, 'ONLINE-202405089542', 5000, 'Dikirim', 'QRIS', 'Selesai', 28, '2024-05-08 03:15:36', '2024-05-08 03:15:36'),
(38, 'ONLINE-202405155238', 3000, 'Dikirim', 'QRIS', 'Ditolak', 28, '2024-05-15 05:55:16', '2024-05-15 05:55:16'),
(39, 'ONLINE-202405156313', 8000, 'Dikirim', 'QRIS', 'Ditolak', 20, '2024-05-15 15:17:14', '2024-05-15 15:17:14'),
(40, 'ONLINE-202405156098', 5000, 'Dikirim', 'QRIS', 'Ditolak', 7, '2024-05-15 15:19:17', '2024-05-15 15:19:17'),
(41, 'ONLINE-202405152779', 24000, 'Dikirim', 'QRIS', 'Siap', 20, '2024-05-15 16:26:48', '2024-05-15 16:26:48'),
(42, 'ONLINE-202405158619', 10000, 'Dikirim', 'QRIS', NULL, 28, '2024-05-15 16:29:57', '2024-05-15 16:29:57'),
(43, 'ONLINE-202405176777', 12000, 'Dikirim', 'QRIS', 'Ditolak', 20, '2024-05-17 09:30:53', '2024-05-17 09:30:53'),
(44, 'ONLINE-202405192688', 5000, 'Diambil', 'Tunai', 'Selesai', 22, '2024-05-19 12:50:59', '2024-05-19 12:50:59'),
(45, 'ONLINE-202405196086', 20000, 'Dikirim', 'QRIS', 'Selesai', 28, '2024-05-19 12:52:22', '2024-05-19 12:52:22'),
(46, 'ONLINE-202405193623', 10000, 'Dikirim', 'QRIS', NULL, 23, '2024-05-19 13:39:04', '2024-05-19 13:39:04'),
(47, 'ONLINE-202405193710', 12000, 'Diambil', 'Tunai', 'Siap', 20, '2024-05-27 13:58:14', '2024-05-27 13:58:14'),
(48, 'ONLINE-202405218809', 83500, 'Dikirim', 'QRIS', 'Ditolak', 28, '2024-05-21 06:10:35', '2024-05-21 06:10:35'),
(49, 'ONLINE-202405282775', 3000, 'Diambil', 'Tunai', 'Dibatalkan', 6, '2024-05-28 15:30:34', '2024-05-28 15:30:34'),
(50, 'ONLINE-202405292639', 12000, 'Dikirim', 'QRIS', 'Dikirim', 25, '2024-05-29 14:42:44', '2024-05-29 14:42:44'),
(51, 'ONLINE-202405294514', 23000, 'Diambil', 'Tunai', NULL, 28, '2024-05-29 15:00:29', '2024-05-29 15:00:29'),
(52, 'ONLINE-202406116684', 35000, 'Diambil', 'Tunai', 'Selesai', 20, '2024-06-11 03:06:43', '2024-06-11 03:06:43'),
(53, 'ONLINE-202406113319', 3000, 'Dikirim', 'QRIS', NULL, 20, '2024-06-11 03:43:50', '2024-06-11 03:43:50'),
(54, 'ONLINE-202406198615', 26000, 'Diambil', 'Tunai', 'Selesai', 28, '2024-06-19 05:02:05', '2024-06-19 05:02:05'),
(55, 'ONLINE-202406214121', 92000, 'Diambil', 'Tunai', 'Dibatalkan', 22, '2024-06-21 04:48:59', '2024-06-21 04:48:59'),
(56, 'ONLINE-202406219760', 41000, 'Dikirim', 'QRIS', 'Selesai', 22, '2024-06-21 04:49:57', '2024-06-21 04:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `pesanandetail`
--

CREATE TABLE `pesanandetail` (
  `id_pesanandetail` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanandetail`
--

INSERT INTO `pesanandetail` (`id_pesanandetail`, `id_pesanan`, `id_produk`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(16, 17, 8, 2, 28000, '2024-03-13 01:36:10', '2024-03-13 01:36:10'),
(17, 17, 5, 1, 5000, '2024-03-13 01:36:10', '2024-03-13 01:36:10'),
(18, 18, 8, 1, 14000, '2024-03-13 01:41:32', '2024-03-13 01:41:32'),
(19, 19, 7, 1, 6000, '2024-03-13 01:44:36', '2024-03-13 01:44:36'),
(20, 20, 5, 1, 5000, '2024-03-13 01:48:41', '2024-03-13 01:48:41'),
(21, 21, 8, 1, 14000, '2024-03-13 22:46:53', '2024-03-13 22:46:53'),
(22, 22, 5, 1, 5000, '2024-03-13 23:45:25', '2024-03-13 23:45:25'),
(23, 23, 8, 1, 14000, '2024-03-13 23:47:59', '2024-03-13 23:47:59'),
(24, 24, 5, 1, 5000, '2024-03-15 00:15:37', '2024-03-15 00:15:37'),
(25, 25, 4, 2, 21000, '2024-03-27 22:48:25', '2024-03-27 22:48:25'),
(26, 25, 3, 1, 3500, '2024-03-27 22:48:25', '2024-03-27 22:48:25'),
(27, 26, 46, 1, 13000, '2024-04-03 00:04:56', '2024-04-03 00:04:56'),
(28, 26, 23, 1, 12000, '2024-04-03 00:04:56', '2024-04-03 00:04:56'),
(29, 27, 48, 1, 3000, '2024-04-03 00:52:27', '2024-04-03 00:52:27'),
(30, 27, 39, 1, 68000, '2024-04-03 00:52:27', '2024-04-03 00:52:27'),
(31, 28, 48, 1, 3000, '2024-04-05 01:00:09', '2024-04-05 01:00:09'),
(32, 28, 45, 2, 20000, '2024-04-05 01:00:09', '2024-04-05 01:00:09'),
(33, 29, 48, 1, 3000, '2024-05-03 06:13:16', '2024-05-03 06:13:16'),
(34, 29, 45, 2, 20000, '2024-05-03 06:13:16', '2024-05-03 06:13:16'),
(35, 30, 42, 1, 10000, '2024-05-03 06:40:49', '2024-05-03 06:40:49'),
(39, 34, 23, 1, 12000, '2024-05-07 19:27:24', '2024-05-07 19:27:24'),
(40, 35, 41, 1, 5000, '2024-05-07 20:15:36', '2024-05-07 20:15:36'),
(44, 38, 48, 1, 3000, '2024-05-14 22:55:16', '2024-05-14 22:55:16'),
(45, 39, 28, 1, 8000, '2024-05-15 08:17:14', '2024-05-15 08:17:14'),
(46, 40, 43, 1, 5000, '2024-05-15 08:19:17', '2024-05-15 08:19:17'),
(47, 41, 49, 2, 24000, '2024-05-15 09:26:48', '2024-05-15 09:26:48'),
(48, 42, 45, 1, 10000, '2024-05-15 09:29:57', '2024-05-15 09:29:57'),
(49, 43, 49, 1, 12000, '2024-05-17 02:30:53', '2024-05-17 02:30:53'),
(50, 44, 43, 1, 5000, '2024-05-19 05:50:59', '2024-05-19 05:50:59'),
(51, 45, 42, 2, 20000, '2024-05-19 05:52:22', '2024-05-19 05:52:22'),
(52, 46, 45, 1, 10000, '2024-05-19 06:39:04', '2024-05-19 06:39:04'),
(53, 47, 49, 1, 12000, '2024-05-19 06:58:14', '2024-05-19 06:58:14'),
(54, 48, 27, 1, 83500, '2024-05-20 23:10:35', '2024-05-20 23:10:35'),
(55, 49, 48, 1, 3000, '2024-05-28 08:30:34', '2024-05-28 08:30:34'),
(56, 50, 49, 1, 12000, '2024-05-29 07:42:44', '2024-05-29 07:42:44'),
(57, 51, 40, 1, 23000, '2024-05-29 08:00:29', '2024-05-29 08:00:29'),
(58, 52, 40, 1, 23000, '2024-06-10 20:06:43', '2024-06-10 20:06:43'),
(59, 52, 49, 1, 12000, '2024-06-10 20:06:43', '2024-06-10 20:06:43'),
(60, 53, 48, 1, 3000, '2024-06-10 20:43:50', '2024-06-10 20:43:50'),
(61, 54, 45, 1, 10000, '2024-06-18 22:02:05', '2024-06-18 22:02:05'),
(62, 54, 32, 2, 16000, '2024-06-18 22:02:05', '2024-06-18 22:02:05'),
(63, 55, 49, 2, 24000, '2024-06-20 21:48:59', '2024-06-20 21:48:59'),
(64, 55, 39, 1, 68000, '2024-06-20 21:48:59', '2024-06-20 21:48:59'),
(65, 56, 31, 1, 12000, '2024-06-20 21:49:57', '2024-06-20 21:49:57'),
(66, 56, 30, 1, 29000, '2024-06-20 21:49:57', '2024-06-20 21:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `bentuk_sediaan` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `foto`, `nama`, `bentuk_sediaan`, `satuan`, `stok`, `harga_beli`, `harga_jual`, `id_kategori`, `created_at`, `updated_at`) VALUES
(1, 'FT20240210084412.png', 'Benoxicam', 'kaplet', 'biji', 70, 2300, 3500, 2, '2024-02-07 03:03:57', '2024-02-07 03:03:57'),
(2, 'FT20240210084508.png', 'Mexon', 'kaplet', 'biji', 290, 2111, 3000, 3, '2024-02-07 03:05:33', '2024-02-07 03:05:33'),
(3, 'FT20240210084211.png', 'Diabit', 'tablet', 'biji', 1697, 2530, 3500, 3, '2024-02-07 03:06:45', '2024-02-07 03:06:45'),
(4, 'FT20240210084054.png', 'Beneuron', 'tablet', 'biji', 183, 9790, 10500, 1, '2024-02-07 03:44:01', '2024-02-07 03:44:01'),
(5, 'FT20240210083827.jpg', 'Etabion', 'kapsul', 'biji', 355, 4105, 5000, 5, '2024-02-07 03:45:34', '2024-02-07 03:45:34'),
(6, 'FT20240210083659.png', 'Ulcron', 'suspensi', 'fls', 0, 20173, 23000, 3, '2024-02-07 03:46:14', '2024-02-07 03:46:14'),
(7, 'FT20240210083350.png', 'Ifarsyl', 'sirup', 'fls', 6, 5100, 6000, 3, '2024-02-07 03:46:50', '2024-02-07 03:46:50'),
(8, 'FT20240210082913.png', 'Cetirizin', 'kapsul', 'biji', 44, 12127, 14000, 2, '2024-02-07 03:47:36', '2024-02-07 03:47:36'),
(18, 'FT20240401115454.png', 'Alpara', 'kaplet', 'biji', 0, 9970, 12000, 3, '2024-04-01 11:53:59', '2024-04-01 11:53:59'),
(19, 'FT20240401115716.png', 'Anelat', 'kaplet', 'biji', 239, 1508, 2000, 5, '2024-04-01 11:57:17', '2024-04-01 11:57:17'),
(20, 'FT20240401115938.png', 'Broxal', 'tablet', 'biji', 0, 3850, 5000, 2, '2024-04-01 11:59:38', '2024-04-01 11:59:38'),
(21, 'FT20240401120221.png', 'Laxatab', 'tablet', 'biji', 120, 8050, 9000, 3, '2024-04-01 12:02:21', '2024-04-01 12:02:21'),
(22, 'FT20240401120708.png', 'Omberzole', 'kapsul', 'biji', 400, 7653, 8500, 3, '2024-04-01 12:07:08', '2024-04-01 12:07:08'),
(23, 'FT20240401120955.png', 'OB Herbal Junior 60ml', 'sirup', 'fls', 5, 11398, 12000, 2, '2024-04-01 12:09:56', '2024-04-01 12:09:56'),
(24, 'FT20240401121511.png', 'Hufagrip demam', 'sirup', 'fls', 5, 14123, 15000, 1, '2024-04-01 12:15:12', '2024-04-01 12:15:12'),
(25, 'FT20240401121652.png', 'Sanmol', 'drop', 'fls', 9, 20900, 22000, 1, '2024-04-01 12:16:53', '2024-04-01 12:16:53'),
(26, 'FT20240401121900.png', 'Scoot Emulsen Jeruk', 'suspensi', 'fls', 0, 39733, 42000, 5, '2024-04-01 12:19:00', '2024-04-01 12:19:00'),
(27, 'FT20240401122303.png', 'Silex', 'sirup', 'fls', 2, 81294, 83500, 2, '2024-04-01 12:23:04', '2024-04-01 12:23:04'),
(28, 'FT20240401122550.png', 'Morfit C 500', 'kaplet', 'biji', 199, 7102, 8000, 5, '2024-04-01 12:25:27', '2024-04-01 12:25:27'),
(29, 'FT20240401122807.png', 'Farmoten 25mg', 'tablet', 'biji', 1099, 3641, 4500, 3, '2024-04-01 12:28:08', '2024-04-01 12:28:08'),
(30, 'FT20240401123504.png', 'Proris', 'sirup', 'fls', 12, 27180, 29000, 1, '2024-04-01 12:35:04', '2024-04-01 12:35:04'),
(31, 'FT20240401123644.png', 'Pyrexin', 'sirup', 'fls', 0, 11398, 12000, 1, '2024-04-01 12:36:44', '2024-04-01 12:36:44'),
(32, 'FT20240401124329.png', 'Amlodipin 5mg', 'tablet', 'biji', 28, 6986, 8000, 2, '2024-04-01 12:43:29', '2024-04-01 12:43:29'),
(33, 'FT20240401124541.png', 'Licokalk', 'kaplet', 'biji', 100, 2107, 3000, 5, '2024-04-01 12:45:41', '2024-04-01 12:45:41'),
(34, 'FT20240401124843.png', 'Bronex', 'tablet', 'biji', 596, 2956, 3500, 2, '2024-04-01 12:48:44', '2024-04-01 12:48:44'),
(35, 'FT20240401125304.png', 'Nisagon', 'cream', 'tube', 24, 6871, 7500, 3, '2024-04-01 12:53:05', '2024-04-01 12:53:05'),
(36, 'FT20240401125900.png', 'Panadol Extra', 'kaplet', 'blister', 11, 11400, 12000, 1, '2024-04-01 12:59:00', '2024-04-01 12:59:00'),
(37, 'FT20240401010240.png', 'Sangobion Vitatonik', 'sirup', 'fls', 0, 31199, 32000, 5, '2024-04-01 13:02:40', '2024-04-01 13:02:40'),
(38, 'FT20240401011043.png', 'Degirol', 'tablet', 'sachet', 50, 14249, 15000, 1, '2024-04-01 13:10:43', '2024-04-01 13:10:43'),
(39, 'FT20240401011313.jpg', 'Vitabumin', 'sirup', 'fls', 2, 64510, 68000, 5, '2024-04-01 13:13:13', '2024-04-01 13:13:13'),
(40, 'FT20240401011525.png', 'Microlax', 'suppo', 'tube', 18, 21652, 23000, 1, '2024-04-01 13:15:26', '2024-04-01 13:15:26'),
(41, 'FT20240401011903.png', 'Antimo', 'tablet', 'sachet', 119, 4500, 5000, 2, '2024-04-01 13:19:04', '2024-04-01 13:19:04'),
(42, 'FT20240401012240.png', 'Promagh', 'suspensi', 'fls', 45, 8798, 10000, 1, '2024-04-01 13:22:40', '2024-04-01 13:22:40'),
(43, 'FT20240401012537.png', 'GOM', 'cair', 'fls', 0, 4236, 5000, 1, '2024-04-01 13:25:37', '2024-04-01 13:25:37'),
(44, 'FT20240401012742.png', 'Cavipex', 'sirup', 'fls', 12, 7848, 8500, 5, '2024-04-01 13:27:42', '2024-04-01 13:27:42'),
(45, 'FT20240401013028.png', 'Calcix-D', 'kaplet', 'biji', 190, 8677, 10000, 5, '2024-04-01 13:30:29', '2024-04-01 13:30:29'),
(46, 'FT20240401013440.png', 'Ikadryl 100ml', 'sirup', 'fls', 0, 12539, 13000, 2, '2024-04-01 13:34:41', '2024-04-01 13:34:41'),
(47, 'FT20240401015929.png', 'Lansoprazole', 'kapsul', 'biji', 17, 11000, 15000, 3, '2024-04-01 13:36:51', '2024-04-01 13:36:51'),
(48, 'FT20240401014027.png', 'Intunal', 'tablet', 'sachet', 16, 2894, 3000, 2, '2024-04-01 13:40:27', '2024-04-01 13:40:27'),
(49, 'FT20240401014235.png', 'Corovit', 'kaplet', 'biji', 1189, 9866, 12000, 5, '2024-04-01 13:42:35', '2024-04-01 13:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_tlp` varchar(13) DEFAULT NULL,
  `foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `fullname`, `alamat`, `nomor_tlp`, `foto`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$Oxj3p94s8oc6wY2nhDr4r.iF1saaL9gyqrEl7jiHby5.u9p0w3umW', NULL, '', '', '', 'profil-admin.png', 'admin', '2024-01-15 08:08:43', '2024-05-28 06:49:00'),
(6, 'Qiqi Ramadhan', 'rizqiramadhania77@gmail.com', NULL, '$2y$12$11KrdGeaaSEMggCG4yNzyeJbPvFDKByuptJFe4FijNmZZ1AxfIoRC', NULL, 'Muhammad Rizqi Ramadhan', 'Darmakradenan', '08572998009', NULL, 'pelanggan', '2024-04-03 00:56:53', '2024-04-03 00:56:53'),
(7, 'kikialfnr', 'kikialfaini@gmail.com', NULL, '$2y$12$HlBJPPap40qlFDcXS/pXU.OloA/vgqCHXynVkNmtl7kBBYCmQtG2a', 'BA5zrRiLjYWo9JLYG0SnzHFYXW7blSXzM5MO51l69EqigKnyTz1lLRyImoSs', 'Kiki Alfaini Nurrizki', 'Cilacap', '0895378176513', NULL, 'pelanggan', '2024-04-05 00:44:37', '2024-05-25 07:49:51'),
(14, 'apoteker', 'apoteker@gmail.com', NULL, '$2y$12$T.6IclijAps52Kj8shuJ2.Sm4VkYr0GFtlnq5fohAXUsKYC03hnpm', 'gZNWX0NfpZ94gDr252zBjGZpAe992FjBH0IELMVl9k2BgVvCBwDK1hwnHch8', 'apoteker', 'Cilacap', '088273896812', 'profil-apoteker.png', 'apoteker', '2024-04-08 01:22:25', '2024-05-28 07:50:40'),
(20, 'rama', 'rama@gmail.com', NULL, '$2y$12$PGxSWeeL3kYfG.QyYQXowOMVIT9szZX9d9qAe8Ot0SJvMiFQ0KCaa', NULL, 'Ramadya Wahyu Dwinanto', 'Jatilawang', '089873323898', NULL, 'pelanggan', '2024-05-12 20:23:34', '2024-05-12 20:23:34'),
(21, 'owner', 'owner@gmail.com', NULL, '$2y$12$WjE6M73B0DYxvwlbFz2vbOoN6FJ1pMXXlPYTLDUsSHDnlgdY/79xa', NULL, 'owner', 'Planjan', '087567827928', 'profil-owner.png', 'owner', '2024-05-14 22:52:19', '2024-05-14 22:52:19'),
(22, 'azki', 'azkiya@gmail.com', NULL, '$2y$12$SHGTO7L62yurhBg1NefAWu2PjHutFYJ6NhSzSi3VDQ2VIFJMDVSYC', NULL, 'Azkiyatun Nadroh', 'Kuripan', '089677869012', NULL, 'pelanggan', '2024-05-22 00:26:06', '2024-05-22 00:26:06'),
(23, 'ulan', 'ulan@gmail.com', NULL, '$2y$10$0nTkv8R/kdoERTAu0pJk0uEbhWa5/cSpstNy8xYJyPKaxeO53LlxO', NULL, 'Ulan Juniarti', 'Kesugihan', '08975677652', 'Profil20240528050131.jpeg', 'pelanggan', '2024-05-28 09:55:02', '2024-05-28 10:01:31'),
(25, 'diani', 'diani@gmail.com', NULL, '$2y$12$D9MV8TuRp3ZwdETNEjhQa.gpA74wY3yz/Jxzojh3jvDimvFDDiNYG', NULL, 'Diani Romiyati', 'Kuripan', '088675681123', NULL, 'pelanggan', '2024-05-29 07:08:39', '2024-05-29 07:08:39'),
(28, 'Asahi', 'asahi@gmail.com', NULL, '$2y$12$4UpAhN.ynd./eCojMZSvIequFjyRprLihpWdK6oz/i646wHEFkQuu', NULL, 'Hamada Asahi', 'Kalisabuk', '0873819938901', 'Profil20240531062837.jpeg', 'pelanggan', '2024-05-30 23:24:04', '2024-06-11 00:32:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buktipembayaran`
--
ALTER TABLE `buktipembayaran`
  ADD PRIMARY KEY (`id_bukti`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `buktipenerimaan`
--
ALTER TABLE `buktipenerimaan`
  ADD PRIMARY KEY (`id_penerimaan`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_ongkir` (`id_ongkir`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualandetail`
--
ALTER TABLE `penjualandetail`
  ADD PRIMARY KEY (`id_penjualandetail`),
  ADD KEY `id_order` (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pesanandetail`
--
ALTER TABLE `pesanandetail`
  ADD PRIMARY KEY (`id_pesanandetail`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `kategori` (`id_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buktipembayaran`
--
ALTER TABLE `buktipembayaran`
  MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `buktipenerimaan`
--
ALTER TABLE `buktipenerimaan`
  MODIFY `id_penerimaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `penjualandetail`
--
ALTER TABLE `penjualandetail`
  MODIFY `id_penjualandetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pesanandetail`
--
ALTER TABLE `pesanandetail`
  MODIFY `id_pesanandetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buktipembayaran`
--
ALTER TABLE `buktipembayaran`
  ADD CONSTRAINT `buktipembayaran_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`);

--
-- Constraints for table `buktipenerimaan`
--
ALTER TABLE `buktipenerimaan`
  ADD CONSTRAINT `buktipenerimaan_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`);

--
-- Constraints for table `kasir`
--
ALTER TABLE `kasir`
  ADD CONSTRAINT `kasir_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`),
  ADD CONSTRAINT `pengiriman_ibfk_2` FOREIGN KEY (`id_ongkir`) REFERENCES `ongkir` (`id_ongkir`);

--
-- Constraints for table `penjualandetail`
--
ALTER TABLE `penjualandetail`
  ADD CONSTRAINT `penjualandetail_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`),
  ADD CONSTRAINT `penjualandetail_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pesanandetail`
--
ALTER TABLE `pesanandetail`
  ADD CONSTRAINT `pesanandetail_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`),
  ADD CONSTRAINT `pesanandetail_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
