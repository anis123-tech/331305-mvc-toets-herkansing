-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 08 apr 2022 om 10:10
-- Serverversie: 5.7.31
-- PHP-versie: 8.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvcframework`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rollercoaster`
--

DROP TABLE IF EXISTS `rollercoaster`;
CREATE TABLE IF NOT EXISTS `rollercoaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameRollerCoaster` varchar(200) NOT NULL,
  `nameAmusementPark` varchar(200) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `topspeed` tinyint(4) NOT NULL,
  `height` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rollercoaster`
--

INSERT INTO `rollercoaster` (`id`, `nameRollerCoaster`, `nameAmusementPark`, `Country`, `topspeed`, `height`) VALUES
(1, 'Red Force', 'Ferrari land', 'Spanje', 127, 112),
(2, 'Ring Racer', 'Race circuit Nurnberg', 'Duitsland', 125, 110),
(3, 'Hyperion', 'EnergyLandia', 'Polen', 110, 77),
(4, 'Furios Baco', 'PortAventura', 'spanje', 126, 23),
(5, 'Shambala', 'PortAventura', 'Spanje', 127, 102);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
