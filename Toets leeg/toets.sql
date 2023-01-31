-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 jan 2023 om 21:27
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toets`
--
CREATE DATABASE IF NOT EXISTS `toets` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toets`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Spiderman', 'Sony coproduceert nu Spider-Man films met Tom Holland in de hoofdrol met Marvel. Sony en Marvel hebben ook 2018\'s Into The Spider-Verse uitgebracht.'),
(2, 'Avengers', 'Marvel Studios presenteert in samenwerking met Paramount Pictures: \"Marvel\'s The Avengers\". De superhelden werken samen om de vijand te verslaan: Iron Man, Incredible Hulk, Thor, Captain America, Hawkeye en Black Widow.'),
(3, 'Black Widow', 'Black Widow is een Amerikaanse superheldenfilm uit 2021gebaseerd op Marvel Comics, Black Widow');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `caregory_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `img`, `description`, `caregory_id`) VALUES
(1, 'Avengers', 'products/avengers1.jpg', 'De eerste film met alle superhelden', 2),
(2, 'Avengers Age of Ultron', 'products/avengers2.jpg', 'Het tweede deel waarbij alle superhelden met elkaar samenwerken.', 2),
(3, 'Avengers Infinity War', 'products/avengers3.jpg', 'De film draait om de strijd tussen de Avengers en de intergalactische superschurk Thanos die alle Infinity-stenen probeert te bemachtigen.', 2),
(4, 'Avengers Endgame', 'products/avengers3.jpg', 'De film is zowel chronologisch als verhaaltechnisch het vervolg op Avengers: Infinity War en de climax van de eerste 22 films in de Marvel Cinematic Universe.', 2),
(5, 'Black Widow', 'products/blackwidow.jpg', 'De film speelt zich af na de gebeurtenissen van Captain America: Civil War (2016) en ziet Romanoff op de vlucht en gedwongen worden haar verleden als Russische spion onder ogen te zien voordat ze een Avenger werd.', 3),
(6, 'Spider-man HomeComing', 'products/spiderman1.jpg', 'In de film probeert Peter Parker het leven op de middelbare school in evenwicht te brengen met Spider-Man zijn terwijl hij tegenover de Vulture (Keaton) staat.', 1),
(7, 'Spider-man Far From Home', 'products/spiderman2.jpg', 'Het is de 23e film in het Marvel Cinematic Universe en de tweede Spider-Man-film in deze laatstgenoemde filmwereld. De film speelt zich af direct na Avengers: Endgame.', 1),
(8, 'Spider-man No Way Home', 'products/spiderman3.jpg', 'Parker vraagt Dr. Strange om magie te gebruiken om zijn identiteit als Spider-Man weer geheim te maken. Deze spreuk gaat fout, waardoor bezoekers uit alternatieve realiteiten het universum van Parker betreden.', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `role`) VALUES
(1, 'Klaas', 'Klaassen', 'klaas@gmail.com', '1234', 'admin');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caregory_id` (`caregory_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`caregory_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
