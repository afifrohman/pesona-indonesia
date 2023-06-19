-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 06:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesona-indonesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `name`, `description`, `image`, `date_created`) VALUES
(1, 'Pesona Indonesia', 'Website Pesona Indonesia menyediakan beragam informasi tentang tempat-tempat wisata yang menakjubkan, mulai dari pantai-pantai eksotis, gunung-gunung indah, hingga cagar budaya yang kaya sejarah. Pengguna dapat menjelajahi halaman destinasi wisata yang informatif, yang dilengkapi dengan deskripsi singkat, foto-foto menakjubkan, dan peta lokasi. Informasi praktis seperti cara mencapai lokasi, fasilitas yang tersedia, dan tips perjalanan juga disediakan untuk membantu pengunjung merencanakan perjalanan mereka dengan lebih baik.', 'wisata.png', 1687155947);

-- --------------------------------------------------------

--
-- Table structure for table `jumbotron`
--

CREATE TABLE `jumbotron` (
  `id` int(11) NOT NULL,
  `title1` varchar(128) NOT NULL,
  `title2` varchar(128) NOT NULL,
  `title3` varchar(128) NOT NULL,
  `description1` varchar(256) DEFAULT NULL,
  `description2` varchar(256) DEFAULT NULL,
  `description3` varchar(256) DEFAULT NULL,
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `image3` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumbotron`
--

INSERT INTO `jumbotron` (`id`, `title1`, `title2`, `title3`, `description1`, `description2`, `description3`, `image1`, `image2`, `image3`) VALUES
(1, 'SELAMAT DATANG', 'Mau Mencari Lokawisata Yang Manarik?', 'Buruan Scroll ke Bawah', '', '', '', 'jumbo1.jpeg', 'jumbo2.jpeg', 'jumbo3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `ticket_price` varchar(12) DEFAULT NULL,
  `description` text NOT NULL,
  `image1` varchar(128) DEFAULT NULL,
  `image2` varchar(128) DEFAULT NULL,
  `image3` varchar(128) DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  `date_created` int(11) NOT NULL,
  `maps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `ticket_price`, `description`, `image1`, `image2`, `image3`, `address`, `date_created`, `maps`) VALUES
(13, 'Candi Borobudur', 'Rp 200000', 'Candi Borobudur terletak di Kabupaten Magelang, Jawa Tengah dengan corak Buddha. Diperkirakan Candi Borobudur didirikan pada masa pemerintahan Dinasti Syailendra antara 750-842 M. Tujuan pembangunan Candi Borobudur adalah untuk memuliakan ajaran Budha Mahayana. Belum ditemukan secara pasti siapa pendiri dari Candi Borobudur. Menurut sejarawan J.G. de Casparis menyebutkan bahwa pendiri Candi Borobudur adalah Raja Samaratungga. Adapun Raja Samaratungga memimpin Mataram Kuno pada tahun 782 – 812 M pada masa pemerintahan Dinasti Syailendra.', 'borobudur1.jpeg', 'borobudur2.jpeg', 'borobudur3.jpeg', 'Kabupaten Magelang', 1687076844, 'https://goo.gl/maps/WMrCbqWozzCYFAvz7'),
(14, 'Karimunjawa', 'Rp 100000', 'Karimunjawa dikenal sebagai “Indonesia Mini” karena penduduknya sangat beragam, terdiri atas berbagai suku seperti suku Jawa, Bugis, Madura, Buton, Bajo, dan Mandar (Anis, 2015). Oleh karena itu, tidak salah jika Karimunjawa dikatakan sebagai pulau kecil yang memiliki multikulturalisme yang kental. Sebagian besar penduduk di Karimunjawa adalah pendatang yang kemudian mencari penghidupan dan menetap di pulau tersebut, sehingga Pulau Karimunjawa tidak memiliki suku asli ', '405b85455604342c73bf1cd837b38587.jpeg', '462d694387f1ec32fd204e166825ae3a.jpeg', '9b9c2535e6772a4bc8c108330962a681.jpeg', 'Kabupaten Jepara', 1687154078, 'https://goo.gl/maps/kEUdFbwcLJ916Evd9'),
(15, 'Bandaneira', 'Rp 25000', 'Pulau Banda Neira adalah satu di antara beberapa pulau yang ada di Kepulauan Banda, Kabupaten Maluku Tengah, Maluku. Di Kepulauan Banda, ada 3 pulau besar yakni Banda Besar, Neira, dan Pulau Gunung Api. Serta 7 pulau kecil yakni Pulau Ay, Rhun, Hatta, Karaka, Sjahril, Nailaka, dan Pulau Batu Kapal. Pulau Banda Neira pada masa VOC dahulu paling terkenal karena menjadi pusat dagang rempah-rempah berkualitas tinggi seperti pala dan fuli (bunga pala).', '09ea43d13dc5650d8559b83cf356c5d6.jpeg', '426d8ccd5314de4dce97d74240e80f19.jpeg', '05a478499edab7385d51506d26a3859f.jpeg', 'Kabupaten Maluku', 1687154213, 'https://goo.gl/maps/pwwiBXFkBDFgQrj98');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(4, 'Administrator', 'admin@gmail.com', 'default.png', '$2y$10$IehsHmaOHhyqE.P0Oru6Kum6DS4/wY8jdNH8dczmpPS/q..Z1EvZ6', 1, 1, 1686675600),
(8, 'Afif Rohman', 'afif@gmail.com', 'anggota-1.jpg', '$2y$10$qOI8ch0snI964j6n2esf8uRS11N3areiNfJAE0EPGkpoXhBOZqMcW', 1, 1, 1687155486);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 1, 3),
(7, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Administrator'),
(2, 'User'),
(3, 'Menu'),
(5, 'Posting');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'administrator', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Sub Menu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'Role', 'administrator/role', 'fas fa-fw fa-user-tie', 1),
(7, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(8, 5, 'Post Management', 'posting', 'fas fa-fw fa-database', 1),
(10, 1, 'Users', 'administrator/users', 'fas fa-fw fa-users', 1),
(11, 5, 'About Us', 'posting/about', 'fas fa-fw fa-database', 1),
(12, 5, 'Jumbotron', 'posting/jumbotron', 'fas fa-fw fa-database', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jumbotron`
--
ALTER TABLE `jumbotron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jumbotron`
--
ALTER TABLE `jumbotron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
