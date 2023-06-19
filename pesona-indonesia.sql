-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 04:35 PM
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
(1, 'Pesona Indonesia', 'Website Pesona Indonesia menyediakan beragam informasi tentang tempat-tempat wisata yang menakjubkan, mulai dari pantai-pantai eksotis, gunung-gunung indah, hingga cagar budaya yang kaya sejarah. Pengguna dapat menjelajahi halaman destinasi wisata yang informatif, yang dilengkapi dengan deskripsi singkat, foto-foto menakjubkan, dan peta lokasi. Informasi praktis seperti cara mencapai lokasi, fasilitas yang tersedia, dan tips perjalanan juga disediakan untuk membantu pengunjung merencanakan perjalanan mereka dengan lebih baik.', 'demo-image.png', 1687005192);

-- --------------------------------------------------------

--
-- Table structure for table `jumbotron`
--

CREATE TABLE `jumbotron` (
  `id` int(11) NOT NULL,
  `title1` varchar(128) NOT NULL,
  `title2` varchar(128) NOT NULL,
  `title3` varchar(128) NOT NULL,
  `description1` varchar(256) NOT NULL,
  `description2` varchar(256) NOT NULL,
  `description3` varchar(256) NOT NULL,
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `image3` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumbotron`
--

INSERT INTO `jumbotron` (`id`, `title1`, `title2`, `title3`, `description1`, `description2`, `description3`, `image1`, `image2`, `image3`) VALUES
(1, 'Image 1asdsadadadadadsadsada', 'Image 2', 'Image 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'ii3d0x4j9ge01.jpg', 'landscape-austria-water-nature-mountains-hd-wallpaper-preview.jpg', 'AGhdpJ.jpg');

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
(10, 'Baturaden', '50000', 'Lokawisata Baturraden termasuk wisata pegunungan mengingat lokasinya yang berada di kaki Gunung Slamet, dengan ketinggian 640 meter di atas permukaan laut. Baturraden sudah dikenal sebagai lokawisata sejak tahun 1928. Hal ini imbas dari daerah sekitarnya yang menjadi tempat hunian para pejabat Belanda.\r\n\r\nSebagaimana layaknya suatu tempat di Jawa, di Baturraden juga dikenal legenda yang konon menjadi cikal bakal berdirinya lokasi ini. Salah satu versi legenda itu berkaitan dengan Kadipaten Kutaliman yang konon berlokasi di 10 kilometer sebelah barat kaki Gunung Slamet. Kadipaten ini dipimpin oleh seorang Adipati. Dia memiliki seorang istri, seorang putri, dan seorang abdi dalem yang bernama Batur Gamel. Batur Gamel adalah seorang pemuda tampan yang tekun bekerja, Dia bertugas membantu urusan rumah tangga Adipati, dan mengurus kuda. Suatu hari, saat Batur Gamel sedang bekerja, dia mendengar suara jeritan dari balik hutan. Dia pun segera menuju ke sumber suara untuk menolong sosok yang berteriak itu.', 'raden5.jpg', 'infobacktravel_blogspot_com-panduan-wisata-baturaden.jpg', '612878ce84e64.jpg', 'Jl. Raya Baturaden No.174, Dusun I Karangmangu, Karangmangu, Kec. Baturaden, Kabupaten Banyumas, Jawa Tengah 53151', 1601109604, 'https://goo.gl/maps/WMrCbqWozzCYFAvz7'),
(11, 'pjinjkmunjn kunkjnjkn', '0', 'dafafafafasfaasf', 'af8d63a477078732b79ff9d9fc60873f.jpg', NULL, '0a21e44df44210ac9a80625fc737bec6.jpg', 'fdfdfdfdfdfdfdf', 1601109649, NULL);

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
(3, 'Alfharizky Fauzi', 'alfharizky110999@gmail.com', 'default.jpg', '$2y$10$/4fmS1Wub7jLwrgV.ERilOdX/exONhNGcYmJbUqdfqvpBUEVKRGKu', 2, 1, 1598289266),
(4, 'Administrator', 'admin@gmail.com', 'default.jpg', '$2y$10$IehsHmaOHhyqE.P0Oru6Kum6DS4/wY8jdNH8dczmpPS/q..Z1EvZ6', 1, 1, 1598292995),
(5, 'nugrahanagi', 'nugrahanagi@gmail.com', 'demo-image.jpg', '$2y$10$xyEIlegQOzU2lFriMO0BTOroPAAToo8/phKPFsRPbo4COuRAWpEIO', 2, 1, 1598566786),
(6, 'coba11111', 'coba@gmail.com', 'default.jpg', '$2y$10$bl2l1DzuE7EklI86r9LNnOldx7f5eHK4xyW3FvOR0zDAQRaDdIePO', 5, 0, 1600591990),
(7, 'coba1111dasadad', 'adadad@student.gunadarma.ac.id', 'default.jpg', '$2y$10$ZjkRIAQ4er8CrGQucWhwn.g6RyghNlMSyPPsBWcqpsbksQ8iVqfMa', 5, 1, 1601103918);

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
(3, 2, 2),
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
(5, 'Posting'),
(6, 'coba');

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
(1, 'Administrator'),
(2, 'Member'),
(5, 'coba111111');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
