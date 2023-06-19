-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2023 pada 10.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('0RgzYbxNELgJMgQKvq42oGiw2_7Pu2Jh', '2023-06-20 05:39:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:39:16.634Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:39:16', '2023-06-19 05:39:16'),
('1onhxaiajJ2dOVicx4CC6CqgUYPmCuuc', '2023-06-20 05:36:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:36:44.108Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:36:44', '2023-06-19 05:36:44'),
('3oH0IVotlSgImblR7-50SLugyUD2zkyw', '2023-06-20 02:33:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:33:15.536Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:33:15', '2023-06-19 02:33:15'),
('3ye2u4kKN5zuNeRZ9ys8UfJKxOoX-XFP', '2023-06-20 06:25:09', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:25:09.763Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:25:09', '2023-06-19 06:25:09'),
('4gDewBlc537IxOIP21lPB4WuzmsSPrr8', '2023-06-20 05:36:11', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:36:11.231Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:36:11', '2023-06-19 05:36:11'),
('4PT1SwziefpsZDCJ_JAjFxx8o7cxmzg6', '2023-06-20 05:07:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:07:20.189Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:07:20', '2023-06-19 05:07:20'),
('4TLsRajba_BtHbRVTJkmCqjmDlq-15fD', '2023-06-20 06:03:37', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:03:37.739Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:03:37', '2023-06-19 06:03:37'),
('51py7VtTgo96bBaL51iNtjUw8GXkSsi0', '2023-06-20 02:30:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:30:35.291Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:30:35', '2023-06-19 02:30:35'),
('5gSTiDf0hM0aV_wotnL3oMIv6NcScw5I', '2023-06-20 06:05:49', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:05:49.202Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:05:49', '2023-06-19 06:05:49'),
('61GTVIrNJImMu88TJyAY4lWzNvlgiMYD', '2023-06-20 05:46:11', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:46:11.574Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:46:11', '2023-06-19 05:46:11'),
('7_JDJOlO4UEZAygvRdhfmk7_pPVFmhfo', '2023-06-20 04:51:38', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:51:38.907Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:51:38', '2023-06-19 04:51:38'),
('8VHW4s5VcAocZ1xQBaDboEe1L6uTCS3r', '2023-06-20 04:51:27', '{\"cookie\":{\"originalMaxAge\":86399999,\"expires\":\"2023-06-20T04:51:27.634Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:51:27', '2023-06-19 04:51:27'),
('9bOiMmTXJq_vwsssRTdTjRZkP6cRiatz', '2023-06-20 04:47:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:47:47.891Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:47:48', '2023-06-19 04:47:48'),
('9ORJ1zz04_Jp0PKQEP6r9JYx2_DjG9Et', '2023-06-20 05:46:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:46:27.766Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:46:27', '2023-06-19 05:46:27'),
('an67KNz2q6LsLEfvpvyJKusc8uTfNWiC', '2023-06-20 06:08:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:08:35.137Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:08:35', '2023-06-19 06:08:35'),
('AsEzMeKVrOyiw4LpgSSI4OgL3rZLKEau', '2023-06-20 05:37:59', '{\"cookie\":{\"originalMaxAge\":86399999,\"expires\":\"2023-06-20T05:37:59.917Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:37:59', '2023-06-19 05:37:59'),
('aVhIpMHs3kQg5b6bJ1xljErFsdTHa6n1', '2023-06-20 02:30:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:30:16.545Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:30:16', '2023-06-19 02:30:16'),
('BEPZFjk7WE-Mx8ublAwYNsrj9yX72wSO', '2023-06-20 06:24:38', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:24:38.781Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:24:38', '2023-06-19 06:24:38'),
('buK4eF5_S7Rhl6tdM_R-0aqvIBoYE_Fi', '2023-06-20 05:07:32', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:07:32.895Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:07:32', '2023-06-19 05:07:32'),
('c1fcARyQG3P5MhqoC_9m899zmCG56B-R', '2023-06-20 06:22:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:22:43.159Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:22:43', '2023-06-19 06:22:43'),
('CvwT-7xFaZcPpoOPp2h7bFeyDOVYw0Wb', '2023-06-20 02:30:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:30:27.311Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:30:27', '2023-06-19 02:30:27'),
('d3KJHZ8tAT1EoyhSi00nhg3aByEglmsw', '2023-06-20 06:24:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:24:03.867Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:24:03', '2023-06-19 06:24:03'),
('g1hMQU9xVky57U2syWM7N3E1VUaX3PR9', '2023-06-20 04:48:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:48:53.061Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:48:53', '2023-06-19 04:48:53'),
('gHwyuBKFrLjBhjcLpMBNjav7UgrsrQLM', '2023-06-20 02:23:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:23:06.909Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:23:07', '2023-06-19 02:23:07'),
('gkmQ5jZyk3JmMwxW4_q49UI322pfrRxb', '2023-06-20 02:32:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:32:53.276Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:32:53', '2023-06-19 02:32:53'),
('GSDvDFdfFiSqF2zFHCeh6DsKRNFn_s66', '2023-06-20 06:23:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:23:06.063Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:23:06', '2023-06-19 06:23:06'),
('HnZfkfoyoHHItOUYX8W067qJYiYnmrpo', '2023-06-20 05:51:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:51:55.500Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:51:55', '2023-06-19 05:51:55'),
('IcUO50lxxX7dz6YFf_SLoflNt46vY3AC', '2023-06-20 02:33:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:33:01.564Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:33:01', '2023-06-19 02:33:01'),
('kn9eLS4pXyaaWNFc-HslQ0H5XG4nJuqn', '2023-06-20 04:49:08', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:49:08.788Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:49:08', '2023-06-19 04:49:08'),
('MRs1LcFt0VPnNdE6nSQKED2Kpt6G89DH', '2023-06-20 05:32:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:32:29.345Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:32:31', '2023-06-19 05:32:31'),
('MYld6jL0ObHlcDfmxoCXXfTGSxPqo5bU', '2023-06-20 05:58:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:58:31.587Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:58:31', '2023-06-19 05:58:31'),
('N3CmXWYi654pn09w9aYWOowAk1z2Nm9T', '2023-06-20 06:23:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:23:45.230Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:23:45', '2023-06-19 06:23:45'),
('ocB4YQk9VHA8fyS7rSBYt_lC7Cia1LtK', '2023-06-20 02:18:41', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:18:41.343Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:18:42', '2023-06-19 02:18:42'),
('OSXLDnSePt7-elYQaFOGMClcmxspw8Ol', '2023-06-20 05:43:11', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:43:11.737Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:43:11', '2023-06-19 05:43:11'),
('OUjO-FRN-hWc4skr1fNaLJFfp8UnscJj', '2023-06-20 04:51:22', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:51:22.000Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:51:22', '2023-06-19 04:51:22'),
('rFxns-mV23JzYHddjx0QCikZW-YYH5Lv', '2023-06-20 02:32:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:32:43.848Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:32:43', '2023-06-19 02:32:43'),
('RM0IcBvFFEMz4Yn9il9gGmxGdPpEmeXd', '2023-06-20 06:24:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:24:55.143Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:24:55', '2023-06-19 06:24:55'),
('RZl0YBgDi5teZ76GdwFDaoToL9X_k710', '2023-06-20 05:33:04', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:33:04.803Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:33:04', '2023-06-19 05:33:04'),
('Sp74djbElIGTX3wvLe1hpUc8hViQJ3Wu', '2023-06-20 02:26:30', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:26:30.839Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:26:30', '2023-06-19 02:26:30'),
('suYs3s-8DfT1gSBI6IKH7ozeah1VRgnc', '2023-06-20 06:07:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:07:15.713Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:07:16', '2023-06-19 06:07:16'),
('TEaRwr41j8tf1Bqiimett8GQ18zt2E28', '2023-06-20 02:30:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T02:30:39.807Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 02:30:39', '2023-06-19 02:30:39'),
('tkwtI-uvZnEJx3NBmVAk1RHHy8aHaY2T', '2023-06-20 04:51:34', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:51:34.698Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:51:34', '2023-06-19 04:51:34'),
('UQTFbuwvvm8_fsieX4ulESztiX-D4j3V', '2023-06-20 04:49:13', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:49:13.162Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:49:13', '2023-06-19 04:49:13'),
('VShOTAFtr2mlVL-JW7IXch52urNvT0ca', '2023-06-20 06:23:23', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:23:23.773Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
('WKZmim2F3bSTFRE-aC3ZpmzhplOFyGcV', '2023-06-20 05:42:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:42:14.063Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:42:14', '2023-06-19 05:42:14'),
('wLaGAqOLM0yVzoBHUFp4BcHbzFNVzcYH', '2023-06-20 04:48:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T04:48:36.493Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 04:48:36', '2023-06-19 04:48:36'),
('X6CVLA8LEq7Wcb7EfBI5GmqtXZv3KAbn', '2023-06-20 06:00:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:00:47.497Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:00:47', '2023-06-19 06:00:47'),
('z4GhftT9Ka1HfpIETjdJj3xkKA0c-9jv', '2023-06-20 06:24:25', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T06:24:25.118Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 06:24:25', '2023-06-19 06:24:25'),
('Zu5bDkQqFa-BI8y-YCRjP1UtIXY97XIB', '2023-06-20 05:46:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:46:42.118Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:46:42', '2023-06-19 05:46:42'),
('_ABBLzRobZ18czpt0niEVOegWL98PnFK', '2023-06-20 05:06:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-20T05:06:59.528Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2023-06-19 05:06:59', '2023-06-19 05:06:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkm`
--

CREATE TABLE `umkm` (
  `id` int(11) NOT NULL,
  `umkmId` varchar(30) NOT NULL,
  `umkmName` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `umkm`
--

INSERT INTO `umkm` (`id`, `umkmId`, `umkmName`, `alamat`, `phone`, `image`, `rating`, `category`, `description`, `createdAt`, `updatedAt`) VALUES
(5, '001', 'Warung Makan Babi Guling Dauh', 'Terminal Wisata Tanah Lot', '082132756652', 'https://awsimages.detik.net.id/community/media/visual/2022/06/03/rekomendasi-babi-guling-1.jpeg?w=1200', 5, 'makanan', 'Warung Makan Babi Guling', '2023-06-19 05:46:11', '2023-06-19 05:46:11'),
(6, '002', 'Warung Anugerah', 'Kediri No. 61 Kuta', '087860233433', 'https://d1sag4ddilekf6.cloudfront.net/compressed_webp/merchants/6-C3AJKBNTJX3FLE/hero/03665eeadadf4675acab798dc9c93a21_1660118634443723103.webp', 5, 'makanan', 'Warung Muslim Anugerah', '2023-06-19 05:46:27', '2023-06-19 05:46:27'),
(7, '003', 'Warung Sate Madura', 'Jl. Ken Dedes 12 B Kuta Badung', '087760247016', 'https://lh5.googleusercontent.com/p/AF1QipPgLFTEaryIVAug99UslYOKcmGhE4ZeiIrlaIZB=w390-h262-n-k-no', 4, 'makanan', 'Warung Sate dan Gule Madura', '2023-06-19 05:46:42', '2023-06-19 05:46:42'),
(8, '004', 'Warung Wardani', 'Jl. Yudistira No.2, Dangin Puri Kauh, Kec. Denpasar Utara, Kota Denpasar, Bali', '0361224398', 'https://lh3.googleusercontent.com/p/AF1QipP7WSjLzAC4LNLvjmCHLNBgtHAd6z4xmljqwUrt=s1360-w1360-h1020', 4.4, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 05:51:54', '2023-06-19 05:51:54'),
(9, '005', 'Warung Bali Tulen', 'Jl. Imam Bonjol No.213, Pemecutan Klod, Kec. Denpasar Bar., Kota Denpasar, Bali', '036148982', 'https://lh5.googleusercontent.com/p/AF1QipPYXiJdej16y8kjM0tdGgXZPXmmxhgdjbAuAW69=w390-h262-n-k-no', 4.5, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 05:58:31', '2023-06-19 05:58:31'),
(10, '006', 'Warung Bali Ayu Sari Merta', 'Jl. Raya Sesetan, Sesetan, Denpasar Selatan, Kota Denpasar, Bali', '081239624918', 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=k0qy-7qOU5-MPiY5XA1RzA&cb_client=search.gws-prod.gps&yaw=59.782555&pitch=0&thumbfov=100&w=780&h=262', 5, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 06:00:47', '2023-06-19 06:00:47'),
(11, '007', 'Warung Pojok Gajah Mada', 'Jl. Gajah Mada No.16, Dauh Puri Kaja, Kec. Denpasar Utara, Kota Denpasar, Bali', '087860500033', 'https://lh5.googleusercontent.com/p/AF1QipNB-MFsF6fTS3R3bsakXF_poGbdECnqAI_RSOEl=w390-h262-n-k-no', 4.5, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 06:03:37', '2023-06-19 06:03:37'),
(12, '008', 'Warung Nasi Bali Bu Nyoman', 'Jl. Gunung Salak No.14, Tegal Lantang, Padangsambian Klod, Kec. Denpasar Bar., Kota Denpasar, Bali', '087860213255', 'https://lh5.googleusercontent.com/p/AF1QipPF5jALdbqJNua0DnRzY2vXtWfW2N8TfG9BgSY=w390-h262-n-k-no', 4.6, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 06:05:49', '2023-06-19 06:05:49'),
(13, '009', 'Warung Nasi Tekor Bali', 'Kawasan Desa Budaya Kertalangu, Jl. By Pass Ngurah Rai Tohpati No.28, Kesiman Kertalangu, Kec. Denpasar Tim., Kota Denpasar, Bali', '082144225501', 'https://lh5.googleusercontent.com/p/AF1QipNY3hJr_3-6H10irKAL0xWfJYoShht4VuPquyks=w195-h130-n-k-no', 4.7, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 06:07:15', '2023-06-19 06:07:15'),
(14, '010', 'Warung Nasi Bali Men Ebong', 'Gg. Camar, Sesetan, Denpasar Selatan, Kota Denpasar, Bali', '087861424009', 'https://lh5.googleusercontent.com/p/AF1QipPzvZjj6ck_uF3pmMrHzcI2v0tN9AyNAi6SYSmk=w259-h262-n-k-no', 4.7, 'makanan', 'Warung Makananan Khas Bali', '2023-06-19 06:08:35', '2023-06-19 06:08:35'),
(15, '011', 'UD Arta Jaya', 'Kukuh Marga', '081338540432', 'https://lh3.googleusercontent.com/p/AF1QipNMoLzCDunMrUm7AGuErJq0AP42OALaNTFNqnM=s1360-w1360-h1020', 3, 'kerajinan', 'Usaha Dagang Pengukiran Kayu dan Batu', '2023-06-19 06:22:42', '2023-06-19 06:22:42'),
(16, '012', 'Wiwins Ukir', 'Jl. Wisnu Br. Batannyuh Marga, Tabanan', '08123645644', 'https://lh3.googleusercontent.com/p/AF1QipPPqDiw4dncA_cH7ea1z-F01bxqWIy1Sgh0bhj7=s1360-w1360-h1020', 5, 'kerajinan', 'Usaha Dagang Pengukiran Bangunan Style Bali', '2023-06-19 06:23:06', '2023-06-19 06:23:06'),
(17, '013', 'Anugrah Rattan', 'Jl. Raya Semer Br. Paliatan No. 41', '081338134865', 'https://uwitan.id/wp-content/uploads/2021/07/Mebel-Rotan-Gambar-Utama-728x410.jpg', 4.7, 'kerajinan', 'Usaha Dagang Pembuatan Furniture Dari Rotan', '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(18, '014', 'Mangku Art Studio', 'Jl. Raya Guwang', '081338345732', 'https://images.tokopedia.net/img/cache/500-square/product-1/2017/1/8/5860090/5860090_b8419b56-c867-432b-bd4e-f4672d6fe1aa_2048_0.jpg', 4.9, 'kerajinan', 'Usaha Dagang Pembuatan Lukisan', '2023-06-19 06:23:45', '2023-06-19 06:23:45'),
(19, '015', 'Toko Barokat Jaya', 'Jl. By Pass Ngurah Rai Tuban', '0818347750', 'https://tpid.lombokbaratkab.go.id/media/product_media/WhatsApp-Image-2021-10-15-at-13.32.23.jpeg', 4.3, 'kerajinan', 'Usaha Dagang Pembuatan Kap Lampu Dari Rotan', '2023-06-19 06:24:03', '2023-06-19 06:24:03'),
(20, '016', 'Etnik Collection', 'Darmasaba', '0818349752', 'https://lzd-img-global.slatic.net/g/p/6bef6c75edcec7e104346167c9cc8722.jpg_720x720q80.jpg', 3.6, 'fashion', 'Usaha Dagang Pembuatan Destar Udeng', '2023-06-19 06:24:25', '2023-06-19 06:24:25'),
(21, '017', 'Surya Iron Srt', 'Jl. Nuri No. 18', '0813385147422', 'https://images.baleomol.com/production/uploads/hovelshopR2qH/2022/product/1000334/1661562916585794z19jpg.jpg?w=500&h=500', 3.4, 'kerajinan', 'Usaha Dagang Pembuatan Hiasan Dinding', '2023-06-19 06:24:38', '2023-06-19 06:24:38'),
(22, '018', 'UD Gardenia', 'Jl. Hayam Wuruk No 111', '081337942834', 'https://static.republika.co.id/uploads/images/inpicture_slide/pekerja-membuat-pot-bunga-tanaman-hias-di-jalan-pagar_201019150352-795.jpg', 3.3, 'kerajinan', 'Usaha Dagang Pembuatan Pot', '2023-06-19 06:24:55', '2023-06-19 06:24:55'),
(23, '019', 'Padma Sari', 'Jl. Gajah Mada Pasar Kumbasari Blok J No.22', '081334541482', 'https://lh3.googleusercontent.com/p/AF1QipNMoLzCDunMrUm7AGuErJq0AP42OALaNTFNqnM=s1360-w1360-h1020', 4.2, 'fashion', 'Usaha Dagang Pembuatan Kain Tenun Ikat', '2023-06-19 06:25:09', '2023-06-19 06:25:09'),
(24, '020', 'Bambu Musik', 'Jl. Br Tengah', '08164700010', 'https://lh5.googleusercontent.com/p/AF1QipMiFrDiBTV4HZD6s5_m5Dyb7D2oNuTav-sNP3GZ=w600-h650-p-k-no', 4, 'kerajinan', 'Usaha Dagang Pembuatan Alat Musik Dari Bambu', '2023-06-19 10:44:20', '2023-06-19 10:44:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
