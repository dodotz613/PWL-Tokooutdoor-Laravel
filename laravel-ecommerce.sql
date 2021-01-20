-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2021 pada 06.12
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `addresses`
--

INSERT INTO `addresses` (`id`, `area`, `city`, `zip`, `created_at`, `updated_at`) VALUES
(5, 'JL. Jauhari Wahid Perum Griya Kencana Blok B12', 'Bandar Lampung', 35171, '2021-01-19 21:34:45', '2021-01-19 21:34:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'sulung', '1234', 'Sulung', '2018-08-27 17:00:00', '2018-08-27 17:00:00'),
(2, 'firman', '1234', 'Firman', '2021-01-19 17:00:00', '2021-01-19 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Carrier', 'Carrier', '2019-02-08 17:00:00', '2021-01-19 11:25:59'),
(2, 'Jaket', 'Jeket', '2019-02-08 17:00:00', '2021-01-19 11:26:11'),
(3, 'Equipment', 'Equipment', '2019-02-08 17:00:00', '2021-01-19 11:26:19'),
(4, 'Sepatu', 'Sepatu', '2019-02-08 17:00:00', '2021-01-19 11:26:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_04_19_173215_create_admins_table', 1),
(2, '2020_04_19_175655_create_addresses_table', 1),
(3, '2020_04_19_175938_create_categories_table', 1),
(4, '2020_04_20_141633_create_products_table', 1),
(5, '2020_04_20_142309_create_users_table', 1),
(6, '2020_04_20_142632_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `description`, `colors`, `price`, `discount`, `tag`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Eiger Rhinos 45L', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Carrier Ultralight untuk kegiatan mountaineering dengan kapasistas 45 Liter</p>\r\n</div>', '#c0c0c0,#000000', 850000, 850000, 'New', 1, '2019-02-08 17:00:00', '2021-01-19 11:35:43'),
(3, 'Eiger Archeon 70L', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Carrier Eiger untuk kebutuhan mountaineering dengan kapasitas 70 Liter</p>\r\n</div>', '#000000,#e81111', 2500000, 2250000, 'New', 1, '2019-02-08 17:00:00', '2021-01-19 13:10:54'),
(5, 'Eiger Hike Light', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Jaket Ultralight untuk kegiatan mountaineering</p>\r\n</div>', '#ff80ff,#c0c0c0,#000000', 499000, 450000, 'New', 2, '2019-02-08 17:00:00', '2021-01-19 12:30:54'),
(6, 'Eiger Shooter Windproof', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Jaket Ultralight untuk kegiatan mountaineering</p>\r\n</div>', '#0080c0,#000000,#804040,#d30d0d', 700000, 525000, 'New', 2, '2019-02-08 17:00:00', '2021-01-19 12:31:54'),
(8, 'Eiger Sleeprack', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sleeping bag untuk kegiatan mountaineering ketahanan sampai 5C</p>\r\n</div>', '#000000,#f60909', 350000, 275000, 'New', 3, '2019-02-08 17:00:00', '2021-01-19 12:39:00'),
(11, 'Arei Karimun', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sepatu untuk kebutuhan mountaineering</p>\r\n</div>', '#000000', 750000, 699000, 'New', 4, '2019-02-08 17:00:00', '2021-01-19 13:13:09'),
(12, 'Arei Patah 2X', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sepatu untuk kebutuhan mounteineering</p>\r\n</div>', '#000000', 900000, 860000, 'New', 4, '2019-02-08 17:00:00', '2021-01-19 13:14:05'),
(15, 'Eiger Rideshoes', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sepatu untuk kebutuhan mounteineering</p>\r\n</div>', '#000000,#530909', 2000000, 1900000, 'New', 4, '2019-02-08 17:00:00', '2021-01-19 13:14:43'),
(36, 'Eiger Path 35L', '1.jpg', '<p>Carrier Eiger untuk kebutuhan mountaineering dengan kapasitas 60 Liter</p>', '#808080,#f51800', 1700000, 1600000, 'New', 1, '2019-02-09 17:00:00', '2021-01-19 11:39:32'),
(37, 'Eiger Wanderlust 60L', '1.jpg', '<p>Carrier Eiger untuk kebutuhan mountaineering dengan kapasitas 60 Liter</p>', '#808080,#000000', 1550000, 1500000, 'New', 1, '2019-02-09 17:00:00', '2021-01-19 11:40:40'),
(39, 'Eiger Hyperlite 45L', '1.jpg', '<p>Carrier Eiger untuk kebutuhan mountaineering dengan kapasitas 45 Liter</p>', '#000000', 1350000, 1200000, 'New', 1, '2019-02-09 17:00:00', '2021-01-19 11:41:17'),
(40, 'Eiger Kapuas 45L', '1.jpg', '<p>Carrier Eiger untuk kebutuhan mountaineering dengan kapasitas 45 Liter</p>', '#000000,#061b4c', 11500000, 1099000, 'New', 1, '2019-02-09 17:00:00', '2021-01-19 11:42:11'),
(41, 'Eiger Eclipse X28', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Jaket Ultralight untuk kegiatan mountaineering</p>\r\n</div>', '#000000,#c0c0c0', 510000, 499000, 'New', 2, '2019-02-09 17:00:00', '2021-01-19 12:32:33'),
(42, 'Eiger Enduro Trekingpol', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Trekking pole untuk kegiatan mountaineering dengan bahan ultralight</p>\r\n</div>', '#000000', 225000, 200000, 'New', 3, '2019-02-09 17:00:00', '2021-01-19 12:40:17'),
(43, 'Eiger Shipton 3P', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Tenda untuk kegiatan outdoor dengan kapasitas 3 Orang</p>\r\n</div>', '#000000,#ff0f0f', 1500000, 1425000, 'New', 3, '2019-02-09 17:00:00', '2021-01-19 12:41:13'),
(47, 'Eiger Strightline Jacket', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Jaket Ultralight untuk kegiatan mountaineering</p>\r\n</div>', '#000000', 450000, 399000, 'New', 2, '2021-01-19 12:33:12', '2021-01-19 12:33:12'),
(48, 'Eiger Reversible Pharka', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Jaket Ultralight untuk kegiatan mountaineering</p>\r\n</div>', '#ff4000', 750000, 699000, 'New', 2, '2021-01-19 12:35:23', '2021-01-19 12:35:23'),
(49, 'Eiger Triple Jacket', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Jaket Ultralight untuk kegiatan mountaineering</p>\r\n</div>', '#000000', 666000, 610000, 'New', 2, '2021-01-19 12:35:56', '2021-01-19 12:35:56'),
(50, 'Eiger Shira 1P', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Tenda untuk kegiatan outdoor berkapasistas 1 Orang</p>\r\n</div>', '#070c18', 2000000, 1750000, 'New', 3, '2021-01-19 12:42:19', '2021-01-19 12:42:19'),
(51, 'Arei Kerinci 4P', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Tenda untuk kegiatan outdoor yang berkapasitas 4 Orang</p>\r\n</div>', '#ff1a1a', 899000, 850000, 'New', 3, '2021-01-19 12:43:09', '2021-01-19 12:43:09'),
(52, 'Arei Arjuno 6P', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Tenda untuk kegiiatan outdoor yang berkapasitas 6 Orang</p>\r\n</div>', '#000000', 1050000, 999000, 'New', 3, '2021-01-19 12:44:01', '2021-01-19 12:44:01'),
(53, 'Eiger Ekspedisi 28 Gunung', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sepatu untuk kebutuhan mounteineering</p>\r\n</div>', '#000000', 1250000, 1175000, 'New', 4, '2021-01-19 13:15:38', '2021-01-19 13:15:38'),
(54, 'Eiger Pollock', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sepatu untuk kebutuhan mounteineering</p>\r\n</div>', '#000000', 800000, 770000, 'New', 4, '2021-01-19 13:16:15', '2021-01-19 13:16:15'),
(55, 'Eiger Natoas Mid', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Sepatu untuk kebutuhan mounteineering</p>\r\n</div>', '#000000', 1000000, 950000, 'New', 4, '2021-01-19 13:16:53', '2021-01-19 13:16:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `product_id`, `order_status`, `price`, `created_at`, `updated_at`) VALUES
(14, 5, '1:1:#000000:1,6:1:#d30d0d:2', 'Placed', 1375000, '2021-01-19 21:38:45', '2021-01-19 21:38:45'),
(15, 5, '43:1:#ff0f0f:1', 'Placed', 1425000, '2021-01-19 21:40:13', '2021-01-19 21:40:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prev_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `prev_password`, `address_id`, `created_at`, `updated_at`) VALUES
(5, 'Sulung Darmawan', 'lilsulung@gmail.com', 'sulung123', '085769107224', NULL, 5, '2021-01-19 21:34:45', '2021-01-19 21:34:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_address_id_foreign` (`address_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
