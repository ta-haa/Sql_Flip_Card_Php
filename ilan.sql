-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Kas 2024, 13:51:53
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `freelance`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilan`
--

CREATE TABLE `ilan` (
  `ilanid` int(11) NOT NULL,
  `kid` int(11) DEFAULT NULL,
  `ad` varchar(150) DEFAULT NULL,
  `soyad` varchar(150) DEFAULT NULL,
  `eposta` varchar(200) DEFAULT NULL,
  `sifre` varchar(200) DEFAULT NULL,
  `meslek` varchar(200) DEFAULT NULL,
  `telefon` int(10) DEFAULT NULL,
  `cinsiyet` varchar(100) DEFAULT NULL,
  `fotograf` varchar(200) DEFAULT NULL,
  `iban` varchar(200) DEFAULT NULL,
  `aciklama` varchar(200) DEFAULT NULL,
  `fiyat` varchar(200) DEFAULT NULL,
  `ilanonay` tinyint(1) DEFAULT NULL,
  `itarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilan`
--

INSERT INTO `ilan` (`ilanid`, `kid`, `ad`, `soyad`, `eposta`, `sifre`, `meslek`, `telefon`, `cinsiyet`, `fotograf`, `iban`, `aciklama`, `fiyat`, `ilanonay`, `itarihi`) VALUES
(1, 1, 'ahmet', 'leylek', 'ahmet@gmail.com', '1453', 'tasarim', 555, 'erkek', 'fotoo.jpg', 'TR11231231231', 'Adım Ahmet 2015\'den beri tasarımla uğraşıyorum...', '200', 1, '2024-04-05 12:12:33'),
(2, 2, 'ali', 'at', 'ali@gmail.com', '123', 'yazilimci', 12312, 'erkek', 'https://ggayane.github.io/css-experiments/cards/dark_rider-character.webp', 'tr1231231321', '2010 yılından beri yazılımcıyım', '1000', NULL, '2024-04-05 13:33:50'),
(3, 3, 'enes', 'batur', 'enesbatur@gmail.com', 'enes123', 'youtuber', 567, 'erkek', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi4yFh9arwlFu4oENWxLonzvTXeLPgwDYb17QolieFAA&s', '121313123', '2013 den beri youtuberım', '300', 1, '2024-04-06 14:50:26'),
(4, 4, 'orkun', 'ışıtmak', 'orkun@gmail.com', '123', 'youtuber', 555, 'erkek', 'https://i.scdn.co/image/ab6761610000e5ebc37a78ee27b2a4c07ce825bf', '2222', 'youtuberım', '300', 1, '2024-04-06 23:08:25'),
(5, NULL, 'ali', 'şen', 'alişen@gmail.com', '123', 'tasarımcı', 555, 'Erkek', 'https://tasarimcidayi.com/wp-content/uploads/2022/08/Logo-Yazili.png', '12345', '5 yıldır tasarımla uğraşıyorum', '150', 1, '2024-04-08 19:03:26'),
(10, NULL, 'ali', 'şen', 'alişen@gmail.com', '123', 'tasarımcı', 555, 'Erkek', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkxnmT4MdNyGgtziC9aGBTGgPkRnAlTQmPJI_93yz9g&s', '12345', '5 yıldır tasarımla uğraşıyorum', '150', 0, '2024-04-08 19:03:26'),
(12, NULL, 'merve', 'can', 'merve@gmail.com', 'merve1453', 'yazılım', 555, 'Kadın', 'https://e0.pxfuel.com/wallpapers/241/839/desktop-wallpaper-pretty-girl-hair-on-face-brown-eyes-beautiful-thumbnail.jpg', '3333', 'adım merve', '456', 1, '2024-04-09 13:47:01'),
(13, NULL, 'merve', 'can', 'merve@gmail.com', 'merve1453', 'yazılım', 555, 'Kadın', 'https://e0.pxfuel.com/wallpapers/241/839/desktop-wallpaper-pretty-girl-hair-on-face-brown-eyes-beautiful-thumbnail.jpg', '3333', 'adım merve', '456', 1, '2024-04-09 13:47:41'),
(20, NULL, 'a', 'a', 'a', '1247471b192233f14a3c3de951dee367eb4f0e8a9d34f8f7e6bc0f073a3711d9', 'a', 2, 'Erkek', 'https://www.pixel4k.com/wp-content/uploads/2019/12/beautiful-women_1575665555.jpg', 'a', 'a', 'a', 1, '2024-04-09 14:20:55'),
(21, NULL, 'a', 'a', 'a', '1247471b192233f14a3c3de951dee367eb4f0e8a9d34f8f7e6bc0f073a3711d9', 'a', 4, 'Erkek', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzBJKLoz6mnJCFkVYzuKGMPyfBJ3H9dbvPLPZyA_UNQ&s', '22', 'a', '2', NULL, '2024-04-09 14:27:42'),
(22, NULL, 'a', 'a', 'a', '1247471b192233f14a3c3de951dee367eb4f0e8a9d34f8f7e6bc0f073a3711d9', 'a', 4, 'Erkek', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzBJKLoz6mnJCFkVYzuKGMPyfBJ3H9dbvPLPZyA_UNQ&s', '22', 'a', '2', NULL, '2024-04-09 14:29:52'),
(23, NULL, 'a', 'a', 'a', '1247471b192233f14a3c3de951dee367eb4f0e8a9d34f8f7e6bc0f073a3711d9', 'a', 4, 'Erkek', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzBJKLoz6mnJCFkVYzuKGMPyfBJ3H9dbvPLPZyA_UNQ&s', '22', 'a', '2', NULL, '2024-04-09 14:30:01'),
(24, NULL, 'g', 'g', 'g', '2c2a189c4eeea6c64a46d5d09c58e1e5adccee8723b0c466a457643579384487', 'g', 2, 'Erkek', 'fg', 'g', 'g', 'g', NULL, '2024-04-09 14:30:36'),
(25, NULL, 'g', 'g', 'g', '2c2a189c4eeea6c64a46d5d09c58e1e5adccee8723b0c466a457643579384487', 'g', 4, 'Erkek', 'g', 'g', 'g', 'g', NULL, '2024-04-09 14:31:36'),
(26, NULL, 'g', 'g', 'g', '2c2a189c4eeea6c64a46d5d09c58e1e5adccee8723b0c466a457643579384487', 'g', 4, 'Erkek', 'g', 'g', 'g', 'g', NULL, '2024-04-09 14:31:38'),
(27, NULL, 'g', 'g', 'g', '2c2a189c4eeea6c64a46d5d09c58e1e5adccee8723b0c466a457643579384487', 'g', 4, 'Erkek', 'g', 'g', 'g', 'g', NULL, '2024-04-09 14:31:40'),
(28, NULL, 'g', 'g', 'g', '2c2a189c4eeea6c64a46d5d09c58e1e5adccee8723b0c466a457643579384487', 'g', 4, 'Erkek', 'g', 'g', 'g', 'g', NULL, '2024-04-09 14:42:35'),
(29, NULL, 'g', 'g', 'g', '2c2a189c4eeea6c64a46d5d09c58e1e5adccee8723b0c466a457643579384487', 'g', 4, 'Erkek', 'g', 'g', 'g', 'g', NULL, '2024-04-09 15:03:07'),
(30, NULL, 'a', 'a', 'gt', '185a11efa2df7724789ff1e815d7a2957008f07aaa1512beac7f85b4e75e38f7', 'a', 2, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:02:46'),
(31, NULL, 'a', 'a', 'gt', '185a11efa2df7724789ff1e815d7a2957008f07aaa1512beac7f85b4e75e38f7', 'a', 2, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:03:54'),
(32, NULL, 'a', 'a', 'gt', '185a11efa2df7724789ff1e815d7a2957008f07aaa1512beac7f85b4e75e38f7', 'a', 2, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:03:56'),
(33, NULL, 'a', 'a', 'gy', 'dce52b4ff5081ab90bfa3ee076a076847d1d77ce0cbd001cfcfa5e581c0379b3', 'a', 2, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:24:48'),
(34, NULL, 'a', 'a', 'gy', 'dce52b4ff5081ab90bfa3ee076a076847d1d77ce0cbd001cfcfa5e581c0379b3', 'a', 0, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:25:05'),
(35, NULL, 'a', 'a', 'gy', 'dce52b4ff5081ab90bfa3ee076a076847d1d77ce0cbd001cfcfa5e581c0379b3', 'a', 0, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:25:11'),
(36, NULL, 'a', 'a', 'gy', 'dce52b4ff5081ab90bfa3ee076a076847d1d77ce0cbd001cfcfa5e581c0379b3', 'a', 0, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:29:55'),
(37, NULL, 'a21', 'a21', 'a21', 'e4ee415c804b2f0f8bf09e0a91c5d28d0a653661a8f1818d24ab6454209a3e04', 'a21', 1, 'Erkek', 'a21', 'a21', 'a21', 'a21', NULL, '2024-04-09 16:33:43'),
(38, NULL, 'a21', 'a21', 'a21', 'e4ee415c804b2f0f8bf09e0a91c5d28d0a653661a8f1818d24ab6454209a3e04', 'a21', 1, 'Erkek', 'a21', 'a21', 'a21', 'a21', NULL, '2024-04-09 16:33:49'),
(39, NULL, 'a21', 'a21', 'a21', 'e4ee415c804b2f0f8bf09e0a91c5d28d0a653661a8f1818d24ab6454209a3e04', 'a21', 1, 'Erkek', 'a21', 'a21', 'a21', 'a21', NULL, '2024-04-09 16:35:34'),
(40, NULL, 'a21', 'a21', 'a21', 'e4ee415c804b2f0f8bf09e0a91c5d28d0a653661a8f1818d24ab6454209a3e04', 'a21', 1, 'Erkek', 'a21', 'a21', 'a21', 'a21', NULL, '2024-04-09 16:35:42'),
(41, NULL, 'h1', 'h1', 'h1', 'b1820a87a5283fd592b8453e557e52a8c396605653c3b0f69a4497bc298900e8', 'h1', 1, 'Erkek', 'h1', 'h1', 'h1', 'h1', NULL, '2024-04-09 16:38:37'),
(42, NULL, 'h1', 'h1', 'h1', 'b1820a87a5283fd592b8453e557e52a8c396605653c3b0f69a4497bc298900e8', 'h1', 1, 'Erkek', 'h1', 'h1', 'h1', 'h1', NULL, '2024-04-09 16:38:42'),
(43, NULL, 'a', 'a', 'o', '311733950543d1d06a74cc16e597bdef931eb75dce7cd57c440ae453add27857', 'a', 0, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:42:27'),
(44, NULL, 'a', 'a', 'o', '311733950543d1d06a74cc16e597bdef931eb75dce7cd57c440ae453add27857', 'a', 0, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:42:28'),
(45, NULL, 'a', 'a', 'o', '311733950543d1d06a74cc16e597bdef931eb75dce7cd57c440ae453add27857', 'a', 0, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 16:42:29'),
(46, NULL, 'h2', 'h2', 'h2', '69deb627fb5561cffb41086cbe4b41883d1b23457f47fcdc1e42512a35352547', 'h2', 2, 'Erkek', 'h2', 'h2', 'h2', 'h2', NULL, '2024-04-09 17:33:32'),
(47, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-09 17:49:06'),
(48, NULL, 'aga', 'aaga', 'aga', 'e2db8e6af93a5582b6123070ddee985f041ad1b4fc97455280340e7cb9a33f88', 'aa', 4, 'Erkek', 'a', 'a', 'a', 'a', NULL, '2024-04-09 17:49:45'),
(49, NULL, '', '', '', '18d80bd589a40bb1e25a86fa3f66905817cf7a488bebfd511625cfa6642ca204', '', 0, '', '', '', '', '', NULL, '2024-04-11 21:43:19');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ilan`
--
ALTER TABLE `ilan`
  ADD PRIMARY KEY (`ilanid`),
  ADD UNIQUE KEY `kid` (`kid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ilan`
--
ALTER TABLE `ilan`
  MODIFY `ilanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ilan`
--
ALTER TABLE `ilan`
  ADD CONSTRAINT `ilann` FOREIGN KEY (`kid`) REFERENCES `uye` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
