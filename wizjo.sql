-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Kwi 2018, 21:46
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wizjo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tasks`
--

CREATE TABLE `tasks` (
  `ID` int(11) NOT NULL,
  `Description` text COLLATE utf8_polish_ci NOT NULL,
  `InputDate` datetime NOT NULL,
  `LastUpdate` datetime NOT NULL,
  `Status` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tasks`
--

INSERT INTO `tasks` (`ID`, `Description`, `InputDate`, `LastUpdate`, `Status`) VALUES
(52, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa nisi, tempor non ante nec, rhoncus sagittis justo. Integer sagittis rhoncus nulla, in iaculis quam cursus eget.', '2018-04-22 19:30:44', '2018-04-22 19:32:05', 'undone'),
(53, ' Ut tincidunt gravida neque a gravida. Integer ultricies euismod sem id semper. Duis interdum lorem sem, vel mattis est ornare ac. Nunc vel ipsum in tortor malesuada consequat. Praesent pellentesque tellus ac erat pellentesque porta ut et mauris. Suspendisse augue eros, efficitur non orci sit amet, semper porttitor est. In eu dolor id est interdum bibendum. Duis eu faucibus massa. Sed ut lectus est. Nulla congue lacus tellus, eget condimentum erat finibus vel. Donec metus erat, commodo scelerisque porttitor non, malesuada et orci. ', '2018-04-22 19:30:57', '2018-04-22 21:44:29', 'done'),
(54, 'zadanie', '2018-04-22 19:32:02', '2018-04-22 19:32:02', 'undone'),
(86, 'asas', '2018-04-22 21:40:07', '2018-04-22 21:44:31', 'done'),
(90, 'asassa', '2018-04-22 21:41:40', '2018-04-22 21:44:28', 'undone'),
(93, 'eryrey', '2018-04-22 21:44:26', '2018-04-22 21:44:26', 'undone');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
