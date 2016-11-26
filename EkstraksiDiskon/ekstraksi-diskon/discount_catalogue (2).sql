-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2016 at 09:01 AM
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
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elektronik`
--

INSERT INTO `elektronik` (`id`, `category_id`, `username`, `screen_name`, `avatar`, `text`, `discount`, `price`, `image`, `created_at`, `tanggal`, `pembayaran`, `kode_voucher`) VALUES
(1, 1, 'Kartu Danamon', 'kartudanamon', 'http://pbs.twimg.com/profile_images/781855067469000704/Cpv63Af1_normal.jpg', 'Yuk dtg ke Samsung great sale di @ErafoneStore  dptkan diskon up to Rp 500rb + installment up to 12 bln, utk info:… https://t.co/nXTcRjqI5n', '-', '500rb', '-', '2016-11-26 07:45:13', '-', '-', '-'),
(2, 1, 'Kartu Danamon', 'kartudanamon', 'http://pbs.twimg.com/profile_images/781855067469000704/Cpv63Af1_normal.jpg', 'Yuk dtg ke Samsung great sale di @ErafoneStore  dptkan diskon up to Rp 500rb + installment up to 12 bln, utk info:… https://t.co/nXTcRjqI5n', '-', '500rb', '-', '2016-11-26 07:45:13', '-', '-', '-'),
(3, 1, 'Kartu Danamon', 'kartudanamon', 'http://pbs.twimg.com/profile_images/781855067469000704/Cpv63Af1_normal.jpg', 'Yuk dtg ke Samsung great sale di @ErafoneStore  dptkan diskon up to Rp 500rb + installment up to 12 bln, utk info:… https://t.co/nXTcRjqI5n', '-', '500rb', '-', '2016-11-26 07:45:13', '-', '-', '-'),
(4, 1, 'Kartu Danamon', 'kartudanamon', 'http://pbs.twimg.com/profile_images/781855067469000704/Cpv63Af1_normal.jpg', 'Yuk dtg ke Samsung great sale di @ErafoneStore  dptkan diskon up to Rp 500rb + installment up to 12 bln, utk info:… https://t.co/nXTcRjqI5n', '-', '500rb', '-', '2016-11-26 07:45:13', '-', '-', '-'),
(5, 1, 'DINOMARKET.com', 'DINOMARKET', 'http://pbs.twimg.com/profile_images/570059226752352256/BEOTW678_normal.jpeg', 'Pre Order. New LG V20 Diskon Hingga 1,25 Juta + Bonus senilai 3 Juta. Rasakan kemewahannya. Segera Klik… https://t.co/mo5kQCjpa9', '-', '25 juta;3 juta;5k', '-', '2016-11-26 08:00:02', '-', '-', '-'),
(6, 1, 'DINOMARKET.com', 'DINOMARKET', 'http://pbs.twimg.com/profile_images/570059226752352256/BEOTW678_normal.jpeg', 'Pre Order. New LG V20 Diskon Hingga 1,25 Juta + Bonus senilai 3 Juta. Rasakan kemewahannya. Segera Klik… https://t.co/mo5kQCjpa9', '-', '25 juta;3 juta;5k', '-', '2016-11-26 08:00:02', '-', '-', '-'),
(7, 1, 'Kartu Danamon', 'kartudanamon', 'http://pbs.twimg.com/profile_images/781855067469000704/Cpv63Af1_normal.jpg', 'Yuk dtg ke Samsung great sale di @ErafoneStore  dptkan diskon up to Rp 500rb + installment up to 12 bln, utk info:… https://t.co/nXTcRjqI5n', '-', '500rb', '-', '2016-11-26 07:45:13', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE IF NOT EXISTS `fashion` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '2',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fashion`
--

INSERT INTO `fashion` (`id`, `category_id`, `username`, `screen_name`, `avatar`, `text`, `discount`, `price`, `image`, `created_at`, `tanggal`, `pembayaran`, `kode_voucher`) VALUES
(1, 2, 'TOMKINS Indonesia', 'myTOMKINS', 'http://pbs.twimg.com/profile_images/761162491371982849/sdvFH4w4_normal.jpg', 'SALE !! All Items !!\n\nDiskon 20% semua sepatu TOMKINS.\nPeriode 25-27 November 2016 https://t.co/ygeTaBxywc', '20%', '-', 'http://pbs.twimg.com/media/CyGjEy4UkAEYym6.jpg', '2016-11-26 07:35:00', '25-27 november 2016', '-', '-'),
(2, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 140000 (Harga belum diskon)\nSize:… https://t.co/TFs5OJBpjl', '-', '-', '-', '2016-11-26 07:41:41', '-', '-', '-'),
(3, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 140000 (Harga belum diskon)\nSize:… https://t.co/TFs5OJBpjl', '-', '-', '-', '2016-11-26 07:41:41', '-', '-', '-'),
(4, 2, 'Jessica Sundayany', 'jesunday', 'http://pbs.twimg.com/profile_images/491653941684219904/mz90Aq7p_normal.jpeg', 'Udah diskon, free ongkir juga bro sist untuk kaos, kemeja, jaket, celana.\nCuma hari ini dan… https://t.co/DsJw6a7NrE', '-', '-', '-', '2016-11-26 07:51:15', '-', '-', '-'),
(5, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 95000 (Harga belum diskon)\nSize:… https://t.co/u5x564c08W', '-', '-', '-', '2016-11-26 07:50:55', '-', '-', '-'),
(6, 2, 'Couple Jogja Lengkap', 'BajuCouple2015', 'http://pbs.twimg.com/profile_images/514651446147444737/uNMoRPFh_normal.jpeg', 'Retsel Couple  145rb\nSMS/WA:085723477888 \n#diskon #murahbanget #reseller #terbaru #lengkap https://t.co/7vXbb12yD0', '-', '145rb', 'http://pbs.twimg.com/media/CyLD74HUAAAPiKf.jpg', '2016-11-26 07:50:11', '-', '-', '-'),
(7, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 140000 (Harga belum diskon)\nSize:… https://t.co/joxZ9wW7NO', '-', '-', '-', '2016-11-26 07:59:56', '-', '-', '-'),
(8, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 140000 (Harga belum diskon)\nSize:… https://t.co/joxZ9wW7NO', '-', '-', '-', '2016-11-26 07:59:56', '-', '-', '-'),
(9, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 95000 (Harga belum diskon)\nSize:… https://t.co/kcPSNBVUgh', '-', '-', '-', '2016-11-26 07:58:08', '-', '-', '-'),
(10, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 95000 (Harga belum diskon)\nSize:… https://t.co/zxGgJkPER6', '-', '-', '-', '2016-11-26 07:56:21', '-', '-', '-'),
(11, 2, 'SOLO SQUARE', 'SOLO_SQUARE', 'http://pbs.twimg.com/profile_images/629228243250364416/gu5MfsTV_normal.jpg', 'Dalam rangka ulang tahun Qua-Li Solo Square ke-4\nQua-li Solo Square memberikan diskon 25% untuk Food & Beverages https://t.co/brBQYWOFD7', '25%', '-', 'http://pbs.twimg.com/media/CyLE8j_VIAAnTyZ.jpg', '2016-11-26 07:54:35', '-', '-', '-'),
(12, 2, 'Jessica Sundayany', 'jesunday', 'http://pbs.twimg.com/profile_images/491653941684219904/mz90Aq7p_normal.jpeg', 'Udah diskon, free ongkir juga bro sist untuk kaos, kemeja, jaket, celana.\nCuma hari ini dan… https://t.co/DsJw6a7NrE', '-', '-', '-', '2016-11-26 07:51:15', '-', '-', '-'),
(13, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 95000 (Harga belum diskon)\nSize:… https://t.co/u5x564c08W', '-', '-', '-', '2016-11-26 07:50:55', '-', '-', '-'),
(14, 2, 'Couple Jogja Lengkap', 'BajuCouple2015', 'http://pbs.twimg.com/profile_images/514651446147444737/uNMoRPFh_normal.jpeg', 'Retsel Couple  145rb\nSMS/WA:085723477888 \n#diskon #murahbanget #reseller #terbaru #lengkap https://t.co/7vXbb12yD0', '-', '145rb', 'http://pbs.twimg.com/media/CyLD74HUAAAPiKf.jpg', '2016-11-26 07:50:11', '-', '-', '-'),
(15, 2, 'hcb_shop', 'briankurniawan', 'http://pbs.twimg.com/profile_images/690753377345515520/1hEhFvbi_normal.jpg', 'READY Jaket \nIDR 140000 (Harga belum diskon)\nSize:… https://t.co/TFs5OJBpjl', '-', '-', '-', '2016-11-26 07:41:41', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `hiburan`
--

CREATE TABLE IF NOT EXISTS `hiburan` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '3',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
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
(2, 'fashion', 'Fashion'),
(3, 'hiburan', 'Hiburan'),
(4, 'kecantikan', 'Kecantikan & Kesehatan'),
(5, 'kuliner', 'Kuliner'),
(6, 'otomotif', 'Otomotif'),
(7, 'rumahtangga', 'Rumah Tangga'),
(8, 'wisata', 'Wisata & Perjalanan'),
(9, 'lain', 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `kecantikan`
--

CREATE TABLE IF NOT EXISTS `kecantikan` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '4',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE IF NOT EXISTS `kuliner` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '5',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliner`
--

INSERT INTO `kuliner` (`id`, `category_id`, `username`, `screen_name`, `avatar`, `text`, `discount`, `price`, `image`, `created_at`, `tanggal`, `pembayaran`, `kode_voucher`) VALUES
(1, 5, 'Nopan Baihaqi', 'baihaqi_nopan', 'http://pbs.twimg.com/profile_images/777342429036806144/KdJYScUQ_normal.jpg', 'RT @YouthZone46: Nikmati Ice Cream Cold Stone hanya Rp 1,- atau diskon 40% dengan Kartu Debit BNI #BNIPromo. Info: https://t.co/leQyC4HCma…', '40%', '-', '-', '2016-11-26 07:34:29', '-', 'kartu debit bni', '-'),
(2, 5, 'Resto Ngalam', 'restongalam', 'http://pbs.twimg.com/profile_images/2681307701/a6d2f7c2abef488ae8176dd1861201a1_normal.png', 'Diskon 10% untuk menu2 pilihan di Resto Ngalam cabang Karawaci. Berlaku Senin - Rabu, kecuali hari libur nasional https://t.co/UvnwM0V7rT', '10%', '-', 'http://pbs.twimg.com/media/CyLBr-pXEAEr3fC.jpg', '2016-11-26 07:40:11', '-', '-', '-'),
(3, 5, 'katalogpromosi', 'katalogpromosi', 'http://pbs.twimg.com/profile_images/3738318487/d883dded3ba709e7c8e8fd72687538a7_normal.jpeg', 'PIZZA HUT Diskon hingga 50%* dengan menukarkan MANDIRI Fiestapoin berlaku sd. 31 Mei 2017 https://t.co/3427xYWghP', '50%', '-', '-', '2016-11-26 07:40:10', '31 mei 2017', '-', '-'),
(4, 5, 'AdaDiskon.com', 'AdaDiskon', 'http://pbs.twimg.com/profile_images/720522999233818624/mWq--BLJ_normal.jpg', 'Nikmati lezatnya masakan di Tong Tji Tea House dengan promo grand opening https://t.co/6HxZLwkur0', '-', '-', '-', '2016-11-26 07:50:08', '-', '-', '-'),
(5, 5, 'Kompas Klasika', 'KompasKlasika', 'http://pbs.twimg.com/profile_images/614266485620391936/bZtRKIAT_normal.png', 'Ajak keluarga untuk Sunday Brunch 27 Nov ''16 di @grandkemangjkt dengan menu spesial Thanksgiving. Diskon 20%. TLP:… https://t.co/pqzRrSSmOg', '20%', '-', '-', '2016-11-26 08:00:02', '27 nov ''16 ', '-', '-'),
(6, 5, 'Kompas Klasika', 'KompasKlasika', 'http://pbs.twimg.com/profile_images/614266485620391936/bZtRKIAT_normal.png', 'Ajak keluarga untuk Sunday Brunch 27 Nov ''16 di @grandkemangjkt dengan menu spesial Thanksgiving. Diskon 20%. TLP:… https://t.co/pqzRrSSmOg', '20%', '-', '-', '2016-11-26 08:00:02', '27 nov ''16 ', '-', '-'),
(7, 5, 'AdaDiskon.com', 'AdaDiskon', 'http://pbs.twimg.com/profile_images/720522999233818624/mWq--BLJ_normal.jpg', 'Nikmati lezatnya masakan di Tong Tji Tea House dengan promo grand opening https://t.co/6HxZLwkur0', '-', '-', '-', '2016-11-26 07:50:08', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `lain`
--

CREATE TABLE IF NOT EXISTS `lain` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '9',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lain`
--

INSERT INTO `lain` (`id`, `category_id`, `username`, `screen_name`, `avatar`, `text`, `discount`, `price`, `image`, `created_at`, `tanggal`, `pembayaran`, `kode_voucher`) VALUES
(1, 9, 'Kota Dot Com', 'kotadotcom', 'http://pbs.twimg.com/profile_images/616523321018970112/78xbEJSR_normal.png', 'OPTIK SEIS Diskon hingga 40% All payment + tambahan disc. 10% dengan KARTU KREDIT MANDIRI - https://t.co/0oAH7YUGOq https://t.co/vUxQ0jdbje', '40%;10%', '-', 'http://pbs.twimg.com/media/CyLGQpbUQAAWlZN.jpg', '2016-11-26 08:00:10', '-', 'kartu kredit mandiri', '-'),
(2, 9, 'cozmeed', 'cozmeed_store', 'http://pbs.twimg.com/profile_images/1749010240/logo_-_Copy_normal.png', 'MALEM MINGGU SERU +  DAPET DISKON 20%, MAU?\n\nMalem Minggu kamu tambah seru bareng kita. \nAcara GRATIS + dapet... https://t.co/t1A7vqe2ng', '20%', '-', '-', '2016-11-26 08:00:02', '-', '-', '-'),
(3, 9, 'COZMEED INDONESIA', 'COZMEEDer', 'http://pbs.twimg.com/profile_images/795108289151311872/0ppCE0B1_normal.jpg', 'Jgn lupa sore ini ajak dia & mereka dateng di acara talkshow & pameran foto. Acara GRATIS + dpt DISKON 20% loh, hny… https://t.co/wofFnmMPYY', '20%', '-', '-', '2016-11-26 08:00:02', '-', '-', '-'),
(4, 9, 'Indomaret', 'Indomaret', 'http://pbs.twimg.com/profile_images/793266301460373506/MdQ6ihr3_normal.jpg', 'Dapatkan DISKON hingga 55% untuk semua produk Cherise Paxton hanya di #KlikIndomaret Buruan langsung belanja di… https://t.co/sPI4FqSiYG', '55%', '-', '-', '2016-11-26 08:00:01', '-', '-', '-'),
(5, 9, 'Centro Dept Store', 'centroholic', 'http://pbs.twimg.com/profile_images/709682605663191040/0e-hSKXj_normal.jpg', 'Diskon 20% untuk setiap pembelian SUEDE Sling back heels koleksi dari Studio One hanya di Centro Dept. Store. More… https://t.co/tTOlDcgkQm', '20%', '-', '-', '2016-11-26 08:00:01', '-', '-', '-'),
(6, 9, 'Sociolla', 'sociolla_id', 'http://pbs.twimg.com/profile_images/514767921898217472/Ils-IJYv_normal.jpeg', 'Setiap pembelian minimal Rp150.000, dapatkan GRATIS IX Calendar serta nikmati diskon 10% untuk produk-produk IX.… https://t.co/nne7ryJp8A', '10%', '150.000', '-', '2016-11-26 08:00:00', '-', '-', '-'),
(7, 9, 'Optik Melawai', 'optikmelawai', 'http://pbs.twimg.com/profile_images/641431473766076416/Lq2HdObl_normal.jpg', 'Spesial diskon untuk Bausch&Lomb Soflens Toric hanya di Optik Melawai! https://t.co/ODFWVGimOg', '-', '-', 'http://pbs.twimg.com/media/Cxg7ZkqUcAAdTDF.jpg', '2016-11-26 08:00:00', '-', '-', '-'),
(8, 9, 'Tottenham Hotspur', 'Spurs_ID', 'http://pbs.twimg.com/profile_images/498762757634654210/W5KKmMGp_normal.jpeg', '?? Diskon ?\n?? Diskon ??\n?? DISKON ???\n\nHanya di ?? https://t.co/7VcnTf1jHL\n\n#COYS https://t.co/LBgLwzJVQo', '-', '-', 'http://pbs.twimg.com/media/CyLGY9PWEAEjxKe.jpg', '2016-11-26 08:00:44', '-', '-', '-'),
(9, 9, 'Kota Dot Com', 'kotadotcom', 'http://pbs.twimg.com/profile_images/616523321018970112/78xbEJSR_normal.png', 'OPTIK SEIS Diskon hingga 40% All payment + tambahan disc. 10% dengan KARTU KREDIT MANDIRI - https://t.co/0oAH7YUGOq https://t.co/vUxQ0jdbje', '40%;10%', '-', 'http://pbs.twimg.com/media/CyLGQpbUQAAWlZN.jpg', '2016-11-26 08:00:10', '-', 'kartu kredit mandiri', '-'),
(10, 9, 'cozmeed', 'cozmeed_store', 'http://pbs.twimg.com/profile_images/1749010240/logo_-_Copy_normal.png', 'MALEM MINGGU SERU +  DAPET DISKON 20%, MAU?\n\nMalem Minggu kamu tambah seru bareng kita. \nAcara GRATIS + dapet... https://t.co/t1A7vqe2ng', '20%', '-', '-', '2016-11-26 08:00:02', '-', '-', '-'),
(11, 9, 'COZMEED INDONESIA', 'COZMEEDer', 'http://pbs.twimg.com/profile_images/795108289151311872/0ppCE0B1_normal.jpg', 'Jgn lupa sore ini ajak dia & mereka dateng di acara talkshow & pameran foto. Acara GRATIS + dpt DISKON 20% loh, hny… https://t.co/wofFnmMPYY', '20%', '-', '-', '2016-11-26 08:00:02', '-', '-', '-'),
(12, 9, 'Indomaret', 'Indomaret', 'http://pbs.twimg.com/profile_images/793266301460373506/MdQ6ihr3_normal.jpg', 'Dapatkan DISKON hingga 55% untuk semua produk Cherise Paxton hanya di #KlikIndomaret Buruan langsung belanja di… https://t.co/sPI4FqSiYG', '55%', '-', '-', '2016-11-26 08:00:01', '-', '-', '-'),
(13, 9, 'Centro Dept Store', 'centroholic', 'http://pbs.twimg.com/profile_images/709682605663191040/0e-hSKXj_normal.jpg', 'Diskon 20% untuk setiap pembelian SUEDE Sling back heels koleksi dari Studio One hanya di Centro Dept. Store. More… https://t.co/tTOlDcgkQm', '20%', '-', '-', '2016-11-26 08:00:01', '-', '-', '-'),
(14, 9, 'Sociolla', 'sociolla_id', 'http://pbs.twimg.com/profile_images/514767921898217472/Ils-IJYv_normal.jpeg', 'Setiap pembelian minimal Rp150.000, dapatkan GRATIS IX Calendar serta nikmati diskon 10% untuk produk-produk IX.… https://t.co/nne7ryJp8A', '10%', '150.000', '-', '2016-11-26 08:00:00', '-', '-', '-'),
(15, 9, 'Optik Melawai', 'optikmelawai', 'http://pbs.twimg.com/profile_images/641431473766076416/Lq2HdObl_normal.jpg', 'Spesial diskon untuk Bausch&Lomb Soflens Toric hanya di Optik Melawai! https://t.co/ODFWVGimOg', '-', '-', 'http://pbs.twimg.com/media/Cxg7ZkqUcAAdTDF.jpg', '2016-11-26 08:00:00', '-', '-', '-'),
(16, 9, '@drEnni_LAC017', 'DrenniLac017', 'http://pbs.twimg.com/profile_images/751069481284214785/s95Loaq6_normal.jpg', 'RT @LarissaCenter: NOVEMBER RAIN, HUJAN PROMO LARISSA ONLINESHOP \nDISKON FREE ONGKIR KE SELURUH INDONESIA\nRead more > https://t.co/795pxRuP…', '-', '-', '-', '2016-11-26 07:59:18', '-', '-', '-'),
(17, 9, 'Rezeki Amalia', 'kikihaluuss', 'http://pbs.twimg.com/profile_images/555512553166495744/4jlLgFSb_normal.jpeg', 'Kode : ARHE 1181 06\n75.000 Diskon 10% ?? 67.000 https://t.co/k4DYajLyEb', '10%', '75.000;67.000', '-', '2016-11-26 07:58:36', '-', '-', '-'),
(18, 9, 'Abu Umair bin Hadi', 'RumahBelajar92', 'http://pbs.twimg.com/profile_images/801101509194715136/u9wl-2Sd_normal.jpg', '*KHUSUS HARI INI DAN BESOK* \n\nOrder *Minimal* 350 ribu aja, nikmati diskon langsung 35%.\n\nSEMUA… https://t.co/fstK0MRWPf', '35%', '350 ribu', '-', '2016-11-26 07:56:49', '-', '-', '-'),
(19, 9, 'Chairil Yudhita', 'yudhita', 'http://pbs.twimg.com/profile_images/673735094440341504/g_9cIdDK_normal.jpg', 'Karena semalam Timnas  masuk semifinal, MGeek kasih diskon buat teman-teman ??\n\n5 hari aja yaah..… https://t.co/IQf2mGqZB9', '-', '-', '-', '2016-11-26 07:55:27', '-', '-', '-'),
(20, 9, 'Nobita?', 'destion', 'http://pbs.twimg.com/profile_images/801486484909867009/CZ8L9T09_normal.jpg', '@ChatimeIndo kok kemarin pas aku ulang tahun ga di-sms-in promo diskon?? Kamu lupa ya??? :(((', '-', '-', '-', '2016-11-26 07:53:27', '-', '-', '-'),
(21, 9, 'rahayu putri', 'rahayuputriwul6', 'http://pbs.twimg.com/profile_images/785051274223816705/oboNA1-Z_normal.jpg', 'RT @wolipop: Foto: Seperti Ini Hebohnya Orang Amerika Berburu Diskon Saat Black Friday https://t.co/uEUuFRcgdP', '-', '-', '-', '2016-11-26 07:52:33', '-', '-', '-'),
(22, 9, 'Rezeki Amalia', 'kikihaluuss', 'http://pbs.twimg.com/profile_images/555512553166495744/4jlLgFSb_normal.jpeg', 'Kode : ARAU 1201 06\nUk : XXL\n150.000 Diskon 10% ?? 135.000 https://t.co/v2IP1xW0lC', '10%', '150.000;135.000', '-', '2016-11-26 07:52:15', '-', '-', '-'),
(23, 9, 'agenda apriana', 'agenda_diary', 'http://pbs.twimg.com/profile_images/671570024901971969/ThlPC0tJ_normal.jpg', 'RT @McDonalds_ID: Cari tempat nyaman buat ngerjain tugas kuliah? Ke McCafe aja, diskon 20% setiap akhir pekan kalau kamu transaksi dengan k…', '20%', '-', '-', '2016-11-26 07:51:52', '-', '-', '-'),
(24, 9, 'Dedy Is Kaka', 'dedykaka2', 'http://pbs.twimg.com/profile_images/740553229100949506/MI3GAwzk_normal.jpg', 'PROMO-MAZDA-2016-DISKON-OVER https://t.co/Iq54LQOsFd', '-', '-', '-', '2016-11-26 07:51:33', '-', '-', '-'),
(25, 9, 'Event Surabaya', 'eventsurabaya', 'http://pbs.twimg.com/profile_images/473649965021929472/pIq0P_si_normal.jpeg', 'Yukk datang ke Suroboyo Carnival Fest | 9-11 Des''16 | Bawa Kartu Pelajar/KTM diskon 50% | Info: 087851015131 https://t.co/tuMTq3iYxU', '50%', '-', 'http://pbs.twimg.com/media/CyKkEttVIAAplcV.jpg', '2016-11-26 07:50:00', '9-11 des''16 ', '-', '-'),
(26, 9, 'Dedy Is Kaka', 'dedykaka2', 'http://pbs.twimg.com/profile_images/740553229100949506/MI3GAwzk_normal.jpg', 'PROMO-MAZDA-2-SKYACTIV-SPESIAL-DISKON-2016 https://t.co/tfik5GhT7g', '-', '-', '-', '2016-11-26 07:49:35', '-', '-', '-'),
(27, 9, 'suujai.', 'baeczy', 'http://pbs.twimg.com/profile_images/801803301452820480/UHNPQMog_normal.jpg', 'Kayaknya diskon 100rb maksud dy https://t.co/vA7pWeXsMO', '100rb', '100rb', '-', '2016-11-26 07:49:21', '-', '-', '-'),
(28, 9, 'Utay', 'utari120', 'http://pbs.twimg.com/profile_images/787493506726043652/cs_sQcEQ_normal.jpg', 'RT @LadyZwolf: CORINE DE FARME LAGI DISKON DI GUARDIAN SELURUH INDONESIA SAMPE MINGGU GIIIRRRLS MATIK ???????? https://t.co/9rfxZgvsGJ', '-', '-', 'http://pbs.twimg.com/media/CyLC8erUsAAJ5oF.jpg', '2016-11-26 07:46:30', '-', '-', '-'),
(29, 9, 'Luniqe Store', 'luniqestore', 'http://pbs.twimg.com/profile_images/702139389598527488/Qb9JWufX_normal.jpg', 'RT @LadyZwolf: My favorite face wash??? nggak diskon sih but HEY ?????? https://t.co/SgMxuAfyep', '-', '-', 'http://pbs.twimg.com/media/CyLCgnLVEAUtoaB.jpg', '2016-11-26 07:46:24', '-', '-', '-'),
(30, 9, 'Luniqe Store', 'luniqestore', 'http://pbs.twimg.com/profile_images/702139389598527488/Qb9JWufX_normal.jpg', 'RT @LadyZwolf: CORINE DE FARME LAGI DISKON DI GUARDIAN SELURUH INDONESIA SAMPE MINGGU GIIIRRRLS MATIK ???????? https://t.co/9rfxZgvsGJ', '-', '-', 'http://pbs.twimg.com/media/CyLC8erUsAAJ5oF.jpg', '2016-11-26 07:46:21', '-', '-', '-'),
(31, 9, 'Twelvi F.', 'LadyZwolf', 'http://pbs.twimg.com/profile_images/775292277748928512/0oN-BWEf_normal.jpg', 'CORINE DE FARME LAGI DISKON DI GUARDIAN SELURUH INDONESIA SAMPE MINGGU GIIIRRRLS MATIK ???????? https://t.co/9rfxZgvsGJ', '-', '-', 'http://pbs.twimg.com/media/CyLC8erUsAAJ5oF.jpg', '2016-11-26 07:45:47', '-', '-', '-'),
(32, 9, 'Utay', 'utari120', 'http://pbs.twimg.com/profile_images/787493506726043652/cs_sQcEQ_normal.jpg', 'RT @LadyZwolf: My favorite face wash??? nggak diskon sih but HEY ?????? https://t.co/SgMxuAfyep', '-', '-', 'http://pbs.twimg.com/media/CyLCgnLVEAUtoaB.jpg', '2016-11-26 07:45:31', '-', '-', '-'),
(33, 9, 'Achmad Fauzi', 'fauzikopii', 'http://pbs.twimg.com/profile_images/799558951184592896/UiyDv8kz_normal.jpg', 'RT @BNI: Tetap stylish dengan koleksi terbaru dari Giordano yang sedang promo diskon 20% dari BNI! Yuk belanja :) https://t.co/AEnN8MmGds', '20%', '-', '-', '2016-11-26 07:44:07', '-', '-', '-'),
(34, 9, 'Twelvi F.', 'LadyZwolf', 'http://pbs.twimg.com/profile_images/775292277748928512/0oN-BWEf_normal.jpg', 'My favorite face wash??? nggak diskon sih but HEY ?????? https://t.co/SgMxuAfyep', '-', '-', 'http://pbs.twimg.com/media/CyLCgnLVEAUtoaB.jpg', '2016-11-26 07:43:52', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `otomotif`
--

CREATE TABLE IF NOT EXISTS `otomotif` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '6',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otomotif`
--

INSERT INTO `otomotif` (`id`, `category_id`, `username`, `screen_name`, `avatar`, `text`, `discount`, `price`, `image`, `created_at`, `tanggal`, `pembayaran`, `kode_voucher`) VALUES
(1, 6, '[LH] Agent Mingyu', 'mg_svt', 'http://pbs.twimg.com/profile_images/801579033532039168/fjAQKNsx_normal.jpg', '@SHERLOCKENT_RP itu kode diskon grab untuk bulan ini. krn taeyeon nuna mobilnya lagi diservis jd pengirim peka', '-', '-', '-', '2016-11-26 07:59:34', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `rumahtangga`
--

CREATE TABLE IF NOT EXISTS `rumahtangga` (
`id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL DEFAULT '7',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE IF NOT EXISTS `wisata` (
`id` int(10) NOT NULL,
  `category` int(10) NOT NULL DEFAULT '8',
  `username` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` varchar(255) DEFAULT NULL,
  `pembayaran` varchar(255) DEFAULT NULL,
  `kode_voucher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `category`, `username`, `screen_name`, `avatar`, `text`, `discount`, `price`, `image`, `created_at`, `tanggal`, `pembayaran`, `kode_voucher`) VALUES
(1, 8, 'Ampuh Munajat Merta', 'Ampuh29', 'http://pbs.twimg.com/profile_images/488577738895151104/T-KBD0ET_normal.jpeg', 'Klo mo ksni mending magrib pas mo tutup,, bisa dpt diskon tiket Rp.2.500 :-P \n#latepost @ Tebing… https://t.co/4Kt4tsiZW7', '-', '4k', '-', '2016-11-26 07:55:21', '-', '-', '-');

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
-- Indexes for table `lain`
--
ALTER TABLE `lain`
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
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lain`
--
ALTER TABLE `lain`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `otomotif`
--
ALTER TABLE `otomotif`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rumahtangga`
--
ALTER TABLE `rumahtangga`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
