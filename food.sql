-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 19 Nov 2020 pada 05.01
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_akses`
--

CREATE TABLE `food_akses` (
  `akses_id` int(2) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `akses_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_akses`
--

INSERT INTO `food_akses` (`akses_id`, `user_username`, `kategori_id`, `akses_update`) VALUES
(1, 'kasir', 1, '2021-12-10 15:48:28'),
(7, 'kasir', 2, '2021-12-10 15:50:57'),
(8, 'kasir', 3, '2021-12-10 15:50:57'),
(9, 'kasir', 4, '2021-12-10 15:51:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_contact`
--

CREATE TABLE `food_contact` (
  `contact_id` int(2) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_contact`
--

INSERT INTO `food_contact` (`contact_id`, `contact_name`, `contact_address`, `contact_phone`, `contact_email`,`contact_update`) VALUES
(1, 'Food Resto', 'Jl. Pondok Ungu Permai', '0895-9187-1765', 'foodresto@gmail.com','2021-12-13 08:41:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_kategori`
--

CREATE TABLE `food_kategori` (
  `kategori_id` int(2) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_seo` text NOT NULL,
  `kategori_icon` varchar(50) NOT NULL,
  `kategori_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_kategori`
--

INSERT INTO `food_kategori` (`kategori_id`, `kategori_nama`, `kategori_seo`, `kategori_icon`, `kategori_update`) VALUES
(1, 'DRINK', 'drink', 'po po-drinks', '2021-12-10 15:56:45'),
(2, 'MAIN COURSE', 'main-course', 'po po-burger', '2021-12-10 15:54:26'),
(3, 'SNACK', 'snack', 'po po-fries', '2021-12-10 15:53:02');


-- --------------------------------------------------------

--
-- Struktur dari tabel `food_meja`
--

CREATE TABLE `food_meja` (
  `meja_id` int(2) NOT NULL,
  `meja_nama` varchar(50) NOT NULL,
  `meja_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_meja`
--

INSERT INTO `food_meja` (`meja_id`, `meja_nama`, `meja_update`) VALUES
(1,'1', '2021-12-10 14:58:21'),
(2, '2', '2021-12-10 14:58:32'),
(3, '3', '2021-12-10 14:58:47'),
(4, '4', '2021-12-10 14:58:57'),
(5, '5', '2021-12-10 14:59:04');
-- --------------------------------------------------------

--
-- Struktur dari tabel `food_menu`
--

CREATE TABLE `food_menu` (
  `menu_id` int(10) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `menu_kode` varchar(5) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_seo` text NOT NULL,
  `menu_deskripsi` text NOT NULL,
  `menu_harga` int(10) NOT NULL DEFAULT 0 COMMENT 'Harga',
  `menu_waktu` int(2) NOT NULL DEFAULT 0 COMMENT 'Waktu Masak',
  `menu_foto` varchar(100) DEFAULT NULL COMMENT 'Foto Masakan',
  `menu_jual` int(10) NOT NULL DEFAULT 0,
  `menu_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_menu`
--

INSERT INTO `food_menu` (`menu_id`, `kategori_id`, `menu_kode`, `menu_nama`, `menu_seo`, `menu_deskripsi`, `menu_harga`, `menu_waktu`, `menu_foto`, `menu_jual`, `menu_update`) VALUES
(1, 2, '00005', 'NASI GORENG SEAFOOD', 'nasi-goreng-seafood', 'nasi goreng dengan campuran seafood, udang dan sayuran', 15000, 10, 'Menu_makanan_nasi-goreng-seafood_1552200829.jpg', 3, '2021-12-10 16:00:49'),
(2, 2, '00006', 'NASII GORENG BIASA', 'nasii-goreng-biasa', 'nasi goreng dengan tambahan teri gurih dan rempah yang enak', 17000, 10, 'Menu_makanan_masi-goreng-teri-gurih_1552200907.jpg', 4, '2021-12-10 15:02:30'),
(3, 2, '00007', 'STEAK PANGGANG', 'steak-panggang', 'daging sapi pilihan dimasak dengan bumbu rempah BBQ', 50000, 15, 'Menu_makanan_steak-panggang_1552200981.jpg', 4, '2021-12-10 16:00:21'),
(4, 1, '00012', 'ES SUSU COKELAT', 'es-susu-cokelat', 'es susu cokelat segar', 10000, 3, 'Menu_makanan_es-susu-cokelat_1552202151.jpg', 3, '2021-12-10 16:00:51'),
(5, 3, '00014', 'FRIENCH FRIES', 'friench-fries', 'kentang goreng dengan potongan jumbo', 5000, 4, 'Menu_makanan_friench-fries_1552202378.jpg', 4, '2021-12-10 16:00:38'),
(6, 1, '00015', 'BROWN SUGAR BOBA', 'brown-sugar-boba', 'Campuran Boba dengan ditambah gula aren', 15000, 10, 'Menu_makanan_brown-sugar-boba_1639123584.jpg', 1, '2021-12-10 15:06:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_meta`
--

CREATE TABLE `food_meta` (
  `meta_id` int(2) NOT NULL,
  `meta_name` varchar(50) NOT NULL COMMENT 'Nama Website',
  `meta_desc` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_author` varchar(100) DEFAULT NULL,
  `meta_developer` varchar(50) DEFAULT NULL,
  `meta_robots` varchar(50) DEFAULT NULL,
  `meta_googlebots` varchar(50) DEFAULT NULL,
  `meta_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_meta`
--

INSERT INTO `food_meta` (`meta_id`, `meta_name`, `meta_desc`, `meta_keyword`, `meta_author`, `meta_developer`, `meta_robots`, `meta_googlebots`, `meta_update`) VALUES
(1, 'Food Resto |Restaurant', 'Harga Terjangkau.... Rasa Tak Terlupakan', 'food', 'RESTO', 'RESTO', 'index, follow', 'index, follow', '2021-12-10 14:45:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_order`
--

CREATE TABLE `food_order` (
  `order_id` int(10) NOT NULL,
  `meja_id` int(2) NOT NULL,
  `order_nama` varchar(50) NOT NULL,
  `order_tanggal` date DEFAULT NULL,
  `order_catatan` text DEFAULT NULL,
  `order_qty` int(5) NOT NULL,
  `order_waktu` int(10) NOT NULL DEFAULT 0,
  `order_diskon` int(10) NOT NULL DEFAULT 0,
  `order_total` int(10) NOT NULL DEFAULT 0,
  `order_bayar` int(10) NOT NULL DEFAULT 0,
  `order_kembali` int(10) DEFAULT 0,
  `order_tgl_bayar` date DEFAULT NULL,
  `order_status` int(1) NOT NULL DEFAULT 1 COMMENT '1=Blm Bayar,2=Bayar',
  `user_username` varchar(30) DEFAULT NULL COMMENT 'User Bayar',
  `order_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_order`
--

INSERT INTO `food_order` (`order_id`, `meja_id`, `order_nama`, `order_tanggal`, `order_catatan`, `order_qty`, `order_waktu`, `order_diskon`, `order_total`, `order_bayar`, `order_kembali`, `order_tgl_bayar`, `order_status`, `user_username`, `order_update`) VALUES
(1, 5, 'JOSEPH', '2021-12-12', 'orderan', 1, 15, 0, 50000, 50000, 0, '2021-12-12', 2, 'kasir', '2021-12-12 18:47:50'),
(2, 2, 'DILA', '2021-12-12', '', 1, 4, 0, 5000, 5000, 0, '2021-12-12', 2, 'kasir', '2021-12-12 20:59:28'),
(3, 1, 'DILA', '2021-12-12', 'Jangan terlalu banyak boba', 1, 10, 0, 15000, 15000, 0, '2021-12-12', 2, 'kasir', '2021-12-12 21:15:4'),
(4, 2, 'YASFIQ', '2021-12-12', 'Jangan terlalu crispy', 1, 4, 0, 5000, 5000, 0,  '2021-12-12', 2, 'admin', '2021-12-12 21:23:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_order_detail`
--

CREATE TABLE `food_order_detail` (
  `order_detail_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `order_detail_harga` int(10) NOT NULL DEFAULT 0,
  `order_detail_waktu` int(5) NOT NULL DEFAULT 0,
  `order_detail_qty` int(5) NOT NULL DEFAULT 0,
  `order_detail_subtotal` int(10) NOT NULL DEFAULT 0,
  `order_detail_status` int(1) NOT NULL DEFAULT 1 COMMENT '1=Baru, 2=Selesai',
  `order_detail_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_order_detail`
--

INSERT INTO `food_order_detail` (`order_detail_id`, `order_id`, `menu_id`, `order_detail_harga`, `order_detail_waktu`, `order_detail_qty`, `order_detail_subtotal`, `order_detail_status`, `order_detail_update`) VALUES
(35, 1, 3, 50000, 15, 1, 50000, 2, '2021-12-12 18:47:51'),
(37, 2, 5, 5000, 4, 1, 50000, 2, '2021-12-12 20:59:28'),
(39, 3, 6, 15000, 10, 1, 15000, 2, '2021-12-12 21:15:40'),
(40, 4, 5, 5000, 4, 1, 5000, 2, '2021-12-12 21:23:25');


-- --------------------------------------------------------

--
-- Struktur dari tabel `food_slider`
--

CREATE TABLE `food_slider` (
  `slider_id` int(2) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_slider`
--

INSERT INTO `food_slider` (`slider_id`, `slider_image`, `slider_update`) VALUES
(3, 'Slider_1639122849.jpg', '2021-12-10 14:54:09'),
(4, 'Slider_1639122882.jpg', '2021-12-10 14:54:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_social`
--

CREATE TABLE `food_social` (
  `social_id` int(2) NOT NULL,
  `social_name` varchar(50) NOT NULL,
  `social_class` varchar(50) NOT NULL,
  `social_url` varchar(100) NOT NULL,
  `social_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_social`
--

INSERT INTO `food_social` (`social_id`, `social_name`, `social_class`, `social_url`, `social_update`) VALUES
(1, 'Facebook', 'facebook', 'https://facebook.com/', '2021-12-10 16:00:28'),
(3, 'Instagram', 'instagram', 'https://instagram.com/', '2021-12-10 16:00:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_users`
--

CREATE TABLE `food_users` (
  `user_username` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `user_level` enum('Admin','Bar','Dapur','Kasir','-') NOT NULL DEFAULT '-',
  `user_date_create` datetime NOT NULL,
  `user_date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food_users`
--

INSERT INTO `food_users` (`user_username`, `user_password`, `user_name`, `user_email`, `user_avatar`, `user_status`, `user_level`, `user_date_create`, `user_date_update`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'ADMINISTRATOR', 'dansdmedia@gmail.com', 'Avatar_admin_1542355052.jpg', 'Aktif', 'Admin', '2021-12-10 16:02:58', '2021-12-10 17:00:31'),
('kasir', '8691e4fc53b99da544ce86e22acba62d13352eff', 'KASIR', 'kasir@gmail.com', NULL, 'Aktif', 'Kasir', '2021-12-09 21:52:14', '2021-12-10 16:09:01');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_akses`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_akses` (
`akses_id` int(2)
,`user_username` varchar(30)
,`kategori_id` int(2)
,`akses_update` datetime
,`kategori_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_menu`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_menu` (
`menu_id` int(10)
,`kategori_id` int(2)
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`menu_deskripsi` text
,`menu_harga` int(10)
,`menu_waktu` int(2)
,`menu_foto` varchar(100)
,`menu_jual` int(10)
,`menu_update` datetime
,`kategori_nama` varchar(50)
,`kategori_seo` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_order`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_order` (
`order_id` int(10)
,`meja_id` int(2)
,`order_nama` varchar(50)
,`order_tanggal` date
,`order_catatan` text
,`order_qty` int(5)
,`order_waktu` int(10)
,`order_diskon` int(10)
,`order_total` int(10)
,`order_bayar` int(10)
,`order_kembali` int(10)
,`order_tgl_bayar` date
,`order_status` int(1)
,`user_username` varchar(30)
,`order_update` datetime
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_order_detail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_order_detail` (
`order_detail_id` int(10)
,`order_id` int(10)
,`menu_id` int(10)
,`order_detail_harga` int(10)
,`order_detail_waktu` int(5)
,`order_detail_qty` int(5)
,`order_detail_subtotal` int(10)
,`order_detail_status` int(1)
,`order_detail_update` datetime
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`kategori_id` int(2)
,`order_status` int(1)
,`order_tanggal` date
,`meja_id` int(2)
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_akses`
--
DROP TABLE IF EXISTS `v_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_akses`  AS  (select `a`.`akses_id` AS `akses_id`,`a`.`user_username` AS `user_username`,`a`.`kategori_id` AS `kategori_id`,`a`.`akses_update` AS `akses_update`,`k`.`kategori_nama` AS `kategori_nama` from (`food_akses` `a` join `food_kategori` `k` on(`a`.`kategori_id` = `k`.`kategori_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS  (select `m`.`menu_id` AS `menu_id`,`m`.`kategori_id` AS `kategori_id`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`menu_deskripsi` AS `menu_deskripsi`,`m`.`menu_harga` AS `menu_harga`,`m`.`menu_waktu` AS `menu_waktu`,`m`.`menu_foto` AS `menu_foto`,`m`.`menu_jual` AS `menu_jual`,`m`.`menu_update` AS `menu_update`,`k`.`kategori_nama` AS `kategori_nama`,`k`.`kategori_seo` AS `kategori_seo` from (`food_menu` `m` join `food_kategori` `k` on(`m`.`kategori_id` = `k`.`kategori_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_order`
--
DROP TABLE IF EXISTS `v_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order`  AS  (select `o`.`order_id` AS `order_id`,`o`.`meja_id` AS `meja_id`,`o`.`order_nama` AS `order_nama`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`order_catatan` AS `order_catatan`,`o`.`order_qty` AS `order_qty`,`o`.`order_waktu` AS `order_waktu`,`o`.`order_diskon` AS `order_diskon`,`o`.`order_total` AS `order_total`,`o`.`order_bayar` AS `order_bayar`,`o`.`order_kembali` AS `order_kembali`,`o`.`order_tgl_bayar` AS `order_tgl_bayar`,`o`.`order_status` AS `order_status`,`o`.`user_username` AS `user_username`,`o`.`order_update` AS `order_update`,`m`.`meja_nama` AS `meja_nama` from (`food_order` `o` join `food_meja` `m` on(`o`.`meja_id` = `m`.`meja_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_order_detail`
--
DROP TABLE IF EXISTS `v_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_detail`  AS  (select `d`.`order_detail_id` AS `order_detail_id`,`d`.`order_id` AS `order_id`,`d`.`menu_id` AS `menu_id`,`d`.`order_detail_harga` AS `order_detail_harga`,`d`.`order_detail_waktu` AS `order_detail_waktu`,`d`.`order_detail_qty` AS `order_detail_qty`,`d`.`order_detail_subtotal` AS `order_detail_subtotal`,`d`.`order_detail_status` AS `order_detail_status`,`d`.`order_detail_update` AS `order_detail_update`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`kategori_id` AS `kategori_id`,`o`.`order_status` AS `order_status`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`meja_id` AS `meja_id`,`j`.`meja_nama` AS `meja_nama` from (((`food_order_detail` `d` join `food_order` `o` on(`d`.`order_id` = `o`.`order_id`)) join `food_menu` `m` on(`d`.`menu_id` = `m`.`menu_id`)) join `food_meja` `j` on(`o`.`meja_id` = `j`.`meja_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `food_akses`
--
ALTER TABLE `food_akses`
  ADD PRIMARY KEY (`akses_id`),
  ADD KEY `user_username` (`user_username`);

--
-- Indeks untuk tabel `food_contact`
--
ALTER TABLE `food_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indeks untuk tabel `food_kategori`
--
ALTER TABLE `food_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `food_meja`
--
ALTER TABLE `food_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indeks untuk tabel `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `food_meta`
--
ALTER TABLE `food_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indeks untuk tabel `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `food_order_ibfk_1` (`meja_id`);

--
-- Indeks untuk tabel `food_order_detail`
--
ALTER TABLE `food_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `food_order_detail_ibfk_1` (`order_id`),
  ADD KEY `food_order_detail_ibfk_2` (`menu_id`);

--
-- Indeks untuk tabel `food_slider`
--
ALTER TABLE `food_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indeks untuk tabel `food_social`
--
ALTER TABLE `food_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indeks untuk tabel `food_users`
--
ALTER TABLE `food_users`
  ADD PRIMARY KEY (`user_username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `food_akses`
--
ALTER TABLE `food_akses`
  MODIFY `akses_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `food_contact`
--
ALTER TABLE `food_contact`
  MODIFY `contact_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `food_kategori`
--
ALTER TABLE `food_kategori`
  MODIFY `kategori_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `food_meja`
--
ALTER TABLE `food_meja`
  MODIFY `meja_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `menu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `food_meta`
--
ALTER TABLE `food_meta`
  MODIFY `meta_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `food_order`
--
ALTER TABLE `food_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `food_order_detail`
--
ALTER TABLE `food_order_detail`
  MODIFY `order_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `food_slider`
--
ALTER TABLE `food_slider`
  MODIFY `slider_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `food_social`
--
ALTER TABLE `food_social`
  MODIFY `social_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `food_akses`
--
ALTER TABLE `food_akses`
  ADD CONSTRAINT `food_akses_ibfk_1` FOREIGN KEY (`user_username`) REFERENCES `food_users` (`user_username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `food_menu`
--
ALTER TABLE `food_menu`
  ADD CONSTRAINT `food_menu_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `food_kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `food_order_ibfk_1` FOREIGN KEY (`meja_id`) REFERENCES `food_meja` (`meja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `food_order_detail`
--
ALTER TABLE `food_order_detail`
  ADD CONSTRAINT `food_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `food_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_order_detail_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `food_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
