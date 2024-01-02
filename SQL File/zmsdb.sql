-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 14 2023 г., 19:43
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zmsdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567890, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-12-12 22:15:00');

-- --------------------------------------------------------

--
-- Структура таблицы `tblanimal`
--

CREATE TABLE `tblanimal` (
  `ID` int(10) NOT NULL,
  `AnimalName` varchar(200) DEFAULT NULL,
  `CageNumber` int(10) DEFAULT NULL,
  `FeedNumber` varchar(200) DEFAULT NULL,
  `Breed` varchar(200) DEFAULT NULL,
  `AnimalImage` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tblanimal`
--

INSERT INTO `tblanimal` (`ID`, `AnimalName`, `CageNumber`, `FeedNumber`, `Breed`, `AnimalImage`, `Description`, `CreationDate`) VALUES
(1, 'Turtle', 12300, 'FN-123', 'Ocean', '2721fe03f2050d659abee40ae5a133ee1702573803.jpg', 'The turtle is a representative of the reptile class. The main feature of an animal is the presence of a shell. This element protects him from the attack of enemies.The carapace is very strong, covers both the back and the abdomen. Some species of turtles can reach a body weight of more than 900 kilograms, and the weight of the smallest representatives of the species is no more than 125 grams.\r\n', '2023-12-14 17:10:03'),
(2, 'Lynx', 12301, 'F-5688', 'Eurasian lynx', 'ab2bfebb37fee8150b7efff443a842c51702573778.jpg', 'The lynx is a bright representative of the cat family, which is most often recognized by its characteristic ears. ', '2023-12-14 17:09:38'),
(3, 'Peacock', 12302, 'FN-809', 'White peacock', '87a4084bc7e39f8de7c0fa8ff188aa9e1702573763.jpg', 'Peacocks are one of the most beautiful birds on our planet. They impress with their unparalleled beauty and variety of plumage. These birds are known for their large and bright tails, which are sure to amaze and amaze you.', '2023-12-14 17:09:23'),
(4, 'Roe deer', 12303, 'FN-798', 'European roe deer', '06704b8f48ce53c51af173db64008ee11702573748.jpg', 'Being one of the smallest representatives of the deer family, the roe deer is a ruminant even-toed animal that lives in the forest-steppe, sparsely forested and mountainous regions of the Northern Hemisphere. As you can see in the photo, this herbivorous animal looks like a goat, which made it known under other names - wild goat or roe deer.', '2023-12-14 17:09:08'),
(5, 'Horse', 12304, 'FN-787', 'Norian (European) horse', '65f58f11ad745d23f7a615a09f24f6e71702573732.jpg', 'The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Russian Far East, Northeast China, and possibly North Korea. It once ranged throughout the Korean Peninsula, north China, Russian Far East, and eastern Mongolia.', '2023-12-14 17:08:52'),
(6, 'Horse', 12305, 'FN-345', 'Eastern (Arabian) horse', '5c5ff32106bfa83a0d3df13435a82ee41702573719.jpg', 't is clear from the name itself that the Arab breed was especially popular in the countries of the East. Refinement, elegance and manners distinguish this breed. These horses are perfectly oriented in space, and legends are made about their endurance. They cover long distances absolutely easily, without requiring food and water.\r\n\r\nThe average height of an Arabian horse is 150 cm, the color is ash, dark gray.', '2023-12-14 17:08:39'),
(7, 'Roe deer', 12307, 'FN-0123', 'Siberian roe deer', '36bef78dcb04a8c7c9e206314cec31d01702573703.jpg', 'The sloth bear (Melursus ursinus) is a myrmecophagous bear species native to the Indian subcontinent. It feeds on fruits, ants and termites. It is listed as Vulnerable on the IUCN Red List, mainly because of habitat loss and degradation.', '2023-12-14 17:08:23'),
(8, 'Lynx', 12308, 'FN-090', 'Lynx canadensis', 'e7ea301c2d803e9eaa2896903c2fedfc1702573787.jpg', 'The Canadian lynx (lat. Lynx canadensis) is a species of lynx that lives in Alaska, Canada and the northern regions of the United States.\r\nThe lynx is characterized by long, thick fur, triangular ears with black tassels at the ends, and wide paws. The lynx\'s hind limbs are longer than its front limbs, so its back is inclined downward. The height at the withers of the lynx is 48-56 cm, and the weight is from 5 to 17 kg.\r\nThe Canada lynx is the closest relative of the common lynx (Lynx lynx).', '2023-12-14 17:09:47');

-- --------------------------------------------------------

--
-- Структура таблицы `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', 'Our zoo is open to all people, of any age, any day and time! Visit us, you will see animals you have never seen before very close (except for wild and dangerous ones), you will even be able to pet them yourself!<div><br></div>', NULL, NULL, '2023-12-14 15:24:54'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Ukraine, Chernihiv.', 'info@gmail.com', 1111111111, '2023-12-14 15:26:20');

-- --------------------------------------------------------

--
-- Структура таблицы `tblticforeigner`
--

CREATE TABLE `tblticforeigner` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(200) DEFAULT NULL,
  `visitorName` varchar(250) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tblticforeigner`
--

INSERT INTO `tblticforeigner` (`ID`, `TicketID`, `visitorName`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(3, '425693290', 'John Doe', 6, 3, '1100', '800', '2023-12-14 15:40:41');

-- --------------------------------------------------------

--
-- Структура таблицы `tblticindian`
--

CREATE TABLE `tblticindian` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(100) NOT NULL,
  `visitorName` varchar(255) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tblticindian`
--

INSERT INTO `tblticindian` (`ID`, `TicketID`, `visitorName`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(2, '911666414', 'Amar Ahmar', 2, 0, '350', '80', '2023-12-14 15:39:41'),
(3, '562063870', 'Arel Nuar', 4, 1, '300', '80', '2023-12-14 15:39:41');

-- --------------------------------------------------------

--
-- Структура таблицы `tbltickettype`
--

CREATE TABLE `tbltickettype` (
  `ID` int(10) NOT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tbltickettype`
--

INSERT INTO `tbltickettype` (`ID`, `TicketType`, `Price`, `CreationDate`) VALUES
(1, 'Normal Adult', '300', '2023-12-14 15:41:13'),
(2, 'Normal Child', '80', '2023-12-14 15:42:59'),
(3, 'Foreigner Adult', '1100', '2023-12-14 15:43:30'),
(4, 'Foreigner Child', '800', '2023-12-14 15:44:12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblanimal`
--
ALTER TABLE `tblanimal`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`),
  ADD KEY `TicketID_2` (`TicketID`),
  ADD KEY `priceid` (`AdultUnitprice`);

--
-- Индексы таблицы `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketID` (`TicketID`),
  ADD KEY `pidddd` (`ChildUnitprice`);

--
-- Индексы таблицы `tbltickettype`
--
ALTER TABLE `tbltickettype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketType` (`TicketType`),
  ADD KEY `Price` (`Price`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblanimal`
--
ALTER TABLE `tblanimal`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tblticindian`
--
ALTER TABLE `tblticindian`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tbltickettype`
--
ALTER TABLE `tbltickettype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD CONSTRAINT `priceid` FOREIGN KEY (`AdultUnitprice`) REFERENCES `tbltickettype` (`Price`);

--
-- Ограничения внешнего ключа таблицы `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD CONSTRAINT `pidddd` FOREIGN KEY (`ChildUnitprice`) REFERENCES `tbltickettype` (`Price`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
