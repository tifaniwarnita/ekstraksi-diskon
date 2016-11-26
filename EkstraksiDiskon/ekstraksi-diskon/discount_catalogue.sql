-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2016 at 03:36 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `discount_catalogue`
--

-- --------------------------------------------------------

--
-- Table structure for table `elektronik`
--

CREATE TABLE IF NOT EXISTS `elektronik` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '1',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE IF NOT EXISTS `fashion` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '2',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hiburan`
--

CREATE TABLE IF NOT EXISTS `hiburan` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '3',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id` int(10) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `category`, `category_name`) VALUES
(1, 'elektronik', 'Elektronik'),
(2, 'fashion', 'Fesyen'),
(3, 'hiburan', 'Hiburan'),
(4, 'kecantikan', 'Kecantikan & Kesehatan'),
(5, 'kuliner', 'Kuliner'),
(6, 'otomotif', 'Otomotif'),
(7, 'rumahtangga', 'Rumah Tangga'),
(8, 'wisata', 'Wisata & Perjalanan'),
(9, 'lain-lain', 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `kecantikan`
--

CREATE TABLE IF NOT EXISTS `kecantikan` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '4',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE IF NOT EXISTS `kuliner` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '5',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lain-lain`
--

CREATE TABLE IF NOT EXISTS `lain-lain` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '9',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otomotif`
--

CREATE TABLE IF NOT EXISTS `otomotif` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '6',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rumahtangga`
--

CREATE TABLE IF NOT EXISTS `rumahtangga` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '7',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE IF NOT EXISTS `wisata` (
`id` int(10) NOT NULL,
  `category` int(10) NOT NULL DEFAULT '8',
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elektronik`
--
ALTER TABLE `elektronik`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `fashion`
--
ALTER TABLE `fashion`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `hiburan`
--
ALTER TABLE `hiburan`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecantikan`
--
ALTER TABLE `kecantikan`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `kuliner`
--
ALTER TABLE `kuliner`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `lain-lain`
--
ALTER TABLE `lain-lain`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `otomotif`
--
ALTER TABLE `otomotif`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `rumahtangga`
--
ALTER TABLE `rumahtangga`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
 ADD PRIMARY KEY (`id`), ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elektronik`
--
ALTER TABLE `elektronik`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hiburan`
--
ALTER TABLE `hiburan`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kecantikan`
--
ALTER TABLE `kecantikan`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuliner`
--
ALTER TABLE `kuliner`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lain-lain`
--
ALTER TABLE `lain-lain`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otomotif`
--
ALTER TABLE `otomotif`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rumahtangga`
--
ALTER TABLE `rumahtangga`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `elektronik`
--
ALTER TABLE `elektronik`
ADD CONSTRAINT `fk_kategori_elektronik` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fashion`
--
ALTER TABLE `fashion`
ADD CONSTRAINT `fk_kategori_fashion` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiburan`
--
ALTER TABLE `hiburan`
ADD CONSTRAINT `fk_kategori_hiburan` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kecantikan`
--
ALTER TABLE `kecantikan`
ADD CONSTRAINT `fk_kategori_kecantikan` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kuliner`
--
ALTER TABLE `kuliner`
ADD CONSTRAINT `fk_kategori_kuliner` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lain-lain`
--
ALTER TABLE `lain-lain`
ADD CONSTRAINT `fk_kategori_lain` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `otomotif`
--
ALTER TABLE `otomotif`
ADD CONSTRAINT `fk_kategori_otomotif` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rumahtangga`
--
ALTER TABLE `rumahtangga`
ADD CONSTRAINT `fk_kategori_rumahtangga` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
ADD CONSTRAINT `wisata` FOREIGN KEY (`category`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
