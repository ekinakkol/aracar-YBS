-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Haz 2017, 23:33:48
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aracar`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maps`
--

CREATE TABLE `maps` (
  `Marka_ID` int(11) NOT NULL,
  `Marka_Adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Marka_Sehir` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Marka_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Enlem` double NOT NULL,
  `Boylam` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `maps`
--

INSERT INTO `maps` (`Marka_ID`, `Marka_Adi`, `Marka_Sehir`, `Marka_ilce`, `Enlem`, `Boylam`) VALUES
(1, 'Renault', 'İzmir', 'Bornova', 38.470687, 27.222847),
(2, 'Volvo', 'Manisa', 'Turgutlu', 38.501009, 27.699366),
(3, 'Mercedes', 'Mersin', 'Kazanli', 36.817414, 34.76549),
(4, 'Lada', 'Ankara', 'Çankaya', 39.929978, 32.851086),
(5, 'Skoda', 'İstanbul', 'Kadıköy', 40.987607, 29.049491),
(6, 'Opel', 'Bursa', 'Nilüfer', 40.284676, 28.941365),
(7, 'Volkswagen', 'Tekirdag', 'Cerkezkoy', 41.290218, 27.992934);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marka`
--

CREATE TABLE `marka` (
  `Marka_ID` int(11) NOT NULL,
  `Marka_Adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `marka`
--

INSERT INTO `marka` (`Marka_ID`, `Marka_Adi`) VALUES
(1, 'Renault'),
(2, 'Volvo'),
(3, 'Mercedes'),
(4, 'Lada'),
(5, 'Skoda'),
(6, 'Opel'),
(7, 'Volkswagen'),
(8, 'BMW');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `Uye_ID` int(11) NOT NULL,
  `Kullanici_Adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`Uye_ID`, `Kullanici_Adi`, `sifre`) VALUES
(1, 'sahibinden', 1234),
(2, 'otoeksper', 12345),
(3, 'otoshops', 12345),
(4, 'tasit', 123456),
(5, 'hurriyet', 98765);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`Marka_ID`);

--
-- Tablo için indeksler `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`Marka_ID`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`Uye_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
