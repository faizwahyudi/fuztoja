-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mar 2016 pada 17.53
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('faizwahyudi99@gmail.com', '9809dd4d9d0fc05f2207e042cce77242f22468d4f287dfa928948fecec9ff133', '2016-03-05 16:30:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Faiz', 'faizwahyudi99@gmail.com', '$2y$10$QhLcKdUwekMC2gUG4wpni.y40BM5RDvDPmeUHDhpNbbg8TqUOtDGO', 'xBdsoRTFtI8MG8VPqN2UFqiFjAQG92OQn8SagPDkrkMnQKuonFMxyHxRl0tm', '2016-03-05 16:22:49', '2016-03-05 20:05:20'),
(2, 'Faiz Wahyudi', 'faizwahyudi@gmail.com', '$2y$10$KVGauvWBSLeWy316l1whHegwi2qMAdDuLECg3AMkVQEafC8pv2lDW', 'DnkB8smVpBbJrnmQ3tsVSeOPvEX4AwFqnkhj6Qf6DA9dmdczYmHU0h4roiPw', '2016-03-05 18:37:41', '2016-03-06 09:49:05'),
(3, 'wahyu', 'wahyu@gmail.com', '$2y$10$eXzN5qf.8DIlzdlDp3JMVunt1JT4GBl6i6npeKto/ZUaEO951GSWG', 'UcMA1p4AsrqRbCdNPAwrornKuN1A3JZAIsDusWXMRnHmmivOGDRQGq1BWZJa', '2016-03-08 21:19:29', '2016-03-08 21:19:35'),
(4, 'yudi', 'yudi@gmail.com', '$2y$10$f7mUGGXCRqCQnb2dWMwsPuafJfqRPEdnkRGoiEEnEsokZg2ZhE3/2', 'lfXplYDGXPDRWt3FxBdqVhuHXFM7WsDEwRrGynRJZ4tROs26X5PGjxRPGUi7', '2016-03-08 21:19:53', '2016-03-08 21:19:56'),
(5, 'aris', 'aris@s.com', '$2y$10$ilDmbZFSMzyKtB1ozvo1o.VVo.5rtzG8fw4o5PkE8J0suSIPUZwZC', 'y0SsEMmLXuktnvNOaIz8iLKzmITftPIlcq56ZZ3Vn50bcUYOAAUHVH1ZzEwl', '2016-03-08 21:20:23', '2016-03-08 21:20:26'),
(6, 'jono', 'jono@su.com', '$2y$10$jqb9cvWCIG8X7kS.bxpbJOOv5nbX8/uZ9stKsaf.0Y3cb406u4Mru', 'GErHV63ZY8tw7GgY6XME9mm4StEiqxoRUvF2OMeGhRholWxXY5VljcaC5D2J', '2016-03-08 21:20:48', '2016-03-08 21:20:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
