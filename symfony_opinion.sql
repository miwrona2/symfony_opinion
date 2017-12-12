-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Gru 2017, 18:25
-- Wersja serwera: 10.1.19-MariaDB
-- Wersja PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `symfony_opinion`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinions`
--

CREATE TABLE `opinions` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `birthday` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `opinions`
--

INSERT INTO `opinions` (`id`, `content`, `rate`, `nickname`, `modified`, `birthday`) VALUES
(2, 'Content of  first opinion', 4, '', '2017-12-13 00:00:00', '0000-00-00 00:00:00'),
(7, 'new opinion', 100, '', '2017-12-27 11:13:20', '0000-00-00 00:00:00'),
(9, 'Lorem ipsum...', 2, 'John Doe', '2018-12-08 10:05:00', '0000-00-00 00:00:00'),
(10, 'dat ma sie dodac sama', 3, 'now', '2017-12-08 12:45:06', '0000-00-00 00:00:00'),
(11, 'ocena 2', 2, 'ja', '2017-12-08 18:59:34', '0000-00-00 00:00:00'),
(12, 'zero', 0, 'sfddsf', '2017-12-08 19:00:10', '0000-00-00 00:00:00'),
(13, 'fasd', 1, 'jeden', '2017-12-08 19:02:10', '0000-00-00 00:00:00'),
(14, 'piec', 5, 'pi??', '2017-12-08 19:02:47', '0000-00-00 00:00:00'),
(15, 'dsfsd', 1, 'sdfsdfsd', '2017-12-08 22:43:46', '1999-03-30 00:00:00'),
(16, 'zly rok', 1, 'dasdas', '2017-12-08 22:45:45', '1999-01-01 00:00:00'),
(17, 'pierwsza opinia', 1, 'michal', '2017-12-09 14:29:20', '0000-00-00 00:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
