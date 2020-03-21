-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 21 2020 г., 14:56
-- Версия сервера: 5.7.27-0ubuntu0.16.04.1
-- Версия PHP: 7.0.33-0ubuntu0.16.04.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `user1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Aeroport`
--

CREATE TABLE `Aeroport` (
  `kod` int(11) NOT NULL,
  `Gorod_gorod` int(11) DEFAULT NULL,
  `nazvanie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Aeroport`
--

INSERT INTO `Aeroport` (`kod`, `Gorod_gorod`, `nazvanie`) VALUES
(1, 2, 'Sheremetyevo'),
(2, 4, 'Mazari-Sharif'),
(3, 7, 'Vienna International Airport'),
(4, 8, 'Pampoulia'),
(5, 2, 'Domodedovo'),
(6, 2, 'Vnukovo'),
(7, 1, 'Beijing Daxing'),
(8, 3, 'Juba'),
(9, 6, 'Clorinda'),
(10, 9, 'Antonio Maceo');

-- --------------------------------------------------------

--
-- Структура таблицы `Ekipazh`
--

CREATE TABLE `Ekipazh` (
  `kod` int(11) NOT NULL,
  `Rejs_nomer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Ekipazh`
--

INSERT INTO `Ekipazh` (`kod`, `Rejs_nomer`) VALUES
(1, 1),
(6, 2),
(2, 3),
(8, 4),
(3, 5),
(9, 6),
(4, 7),
(7, 8),
(5, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `Gorod`
--

CREATE TABLE `Gorod` (
  `gorod` int(11) NOT NULL,
  `strana` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Gorod`
--

INSERT INTO `Gorod` (`gorod`, `strana`) VALUES
(1, 'China'),
(2, 'Russia'),
(3, 'South Sudan'),
(4, 'Afghanistan'),
(5, 'Albania'),
(6, 'Argentina'),
(7, 'Austria'),
(8, 'Brazil'),
(9, 'Cuba'),
(10, 'Finland');

-- --------------------------------------------------------

--
-- Структура таблицы `Kompanja`
--

CREATE TABLE `Kompanja` (
  `kod` int(11) NOT NULL,
  `nazvanie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Kompanja`
--

INSERT INTO `Kompanja` (`kod`, `nazvanie`) VALUES
(1, 'Austrian Airlines'),
(2, 'Bulgaria Air'),
(3, 'NordStar'),
(4, 'Montenegro Airlines'),
(5, 'Air France'),
(6, 'Korean air'),
(7, 'China Southern Airlines'),
(8, 'Virgin Australia Airlines'),
(9, 'Lufthansa'),
(10, 'Air Baltic');

-- --------------------------------------------------------

--
-- Структура таблицы `Polet`
--

CREATE TABLE `Polet` (
  `nomer` int(11) NOT NULL,
  `Rejs_nomer` int(11) DEFAULT NULL,
  `data_vyleta` varchar(100) NOT NULL,
  `sostojanie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Polet`
--

INSERT INTO `Polet` (`nomer`, `Rejs_nomer`, `data_vyleta`, `sostojanie`) VALUES
(1, 1, '11.12.2019', 'completed'),
(2, 3, '11.12.2010', 'completed'),
(3, 2, '30.01.2011', 'completed'),
(4, 4, '25.03.2016', 'completed'),
(5, 6, '21.03.2020', 'in the process'),
(6, 5, '20.03.2020', 'in the process'),
(7, 8, '20.04.2020', 'expected'),
(8, 7, '20.04.2021', 'expected'),
(9, 9, '24.01.2022', 'expected'),
(10, 10, '13.05.2013', 'completed');

-- --------------------------------------------------------

--
-- Структура таблицы `Rejs`
--

CREATE TABLE `Rejs` (
  `nomer` int(11) NOT NULL,
  `aeroport_vyleta` int(11) DEFAULT NULL,
  `aeroport_prileta` int(11) DEFAULT NULL,
  `Samolet_nomer` int(11) DEFAULT NULL,
  `vremya_vyleta` varchar(100) NOT NULL,
  `vremya_prileta` varchar(100) NOT NULL,
  `tip` varchar(100) NOT NULL,
  `dalnost` varchar(100) NOT NULL,
  `chastota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Rejs`
--

INSERT INTO `Rejs` (`nomer`, `aeroport_vyleta`, `aeroport_prileta`, `Samolet_nomer`, `vremya_vyleta`, `vremya_prileta`, `tip`, `dalnost`, `chastota`) VALUES
(1, 1, 2, 3, '15:00', '18:00', 'charter', '500km', '1 flight per day'),
(2, 5, 8, 6, '13:00', '20:00', 'charter', '2000km', '2 flight per day'),
(3, 9, 10, 1, '01:00', '11:00', 'charter', '1500km', '3 flight per week'),
(4, 2, 4, 1, '05:00', '19:00', 'charter', '3000km', '1 flight per week'),
(5, 1, 7, 2, '05:00', '21:00', 'charter', '7000km', '1 flight per day'),
(6, 9, 3, 2, '07:00', '22:00', 'charter', '3200km', '3 flight per day'),
(7, 9, 3, 6, '07:00', '22:00', 'emergency', '3200km', '1 flight per month'),
(8, 6, 5, 10, '07:00', '10:00', 'training', '100km', '1 flight per month'),
(9, 6, 1, 5, '09:00', '12:00', 'training', '50km', '1 flight per month'),
(10, 3, 7, 7, '09:00', '12:00', 'regular', '4000km', '5 flight per day');

-- --------------------------------------------------------

--
-- Структура таблицы `Samolet`
--

CREATE TABLE `Samolet` (
  `nomer` int(11) NOT NULL,
  `Kompanja_kod` int(11) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  `tip` varchar(100) NOT NULL,
  `vmestimost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Samolet`
--

INSERT INTO `Samolet` (`nomer`, `Kompanja_kod`, `model`, `tip`, `vmestimost`) VALUES
(1, 3, 'Boeing 757', 'Passenger', 289),
(2, 5, 'Airbus A380', 'Passenger', 853),
(3, 4, 'SP n Jet ', 'Passenger', 9),
(4, 7, 'COMAC C919', 'Passenger', 168),
(5, 6, 'RQ-4 Global Hawk', 'war-plane', 2),
(6, 1, 'Lockheed C-130K', 'transport', 500),
(7, 1, 'Saab 105OE', 'war-plane', 1),
(8, 1, 'Pilatus PC-7', 'training plane', 2),
(9, 2, 'Alenia C-27J Spartan', 'transport', 120),
(10, 9, 'Airbus A320neo', 'Passenger', 180);

-- --------------------------------------------------------

--
-- Структура таблицы `Sotrudnik`
--

CREATE TABLE `Sotrudnik` (
  `kod` int(11) NOT NULL,
  `Ekipazh_kod` int(11) DEFAULT NULL,
  `familja` varchar(100) NOT NULL,
  `imya` varchar(100) NOT NULL,
  `dolzhnost` varchar(100) NOT NULL,
  `stazh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Sotrudnik`
--

INSERT INTO `Sotrudnik` (`kod`, `Ekipazh_kod`, `familja`, `imya`, `dolzhnost`, `stazh`) VALUES
(1, 1, 'Ivanov', 'Ivan', 'pilot', '3 years'),
(2, 2, 'Petrov', 'Ivan', 'pilot', '10 years'),
(3, 4, 'Sidorov', 'Daniel', 'pilot', '1 year'),
(4, 3, 'Sidorova', 'Catherine', 'air hostess', '7 years'),
(5, 4, 'Abramson', 'Maria', 'air hostess', '5 years'),
(6, 5, 'Kirk', 'Olga', 'air hostess', '2 years'),
(7, 7, 'Becker', 'Olga', 'air hostess', '11 years'),
(8, 8, 'Dodson', 'Daniel', 'pilot', '6 years'),
(9, 8, 'Fisher', 'Anton', 'second pilot', '4 years'),
(10, 9, 'Freeman', 'Misha', 'pilot', '8 years');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Aeroport`
--
ALTER TABLE `Aeroport`
  ADD PRIMARY KEY (`kod`),
  ADD KEY `Gorod_gorod` (`Gorod_gorod`);

--
-- Индексы таблицы `Ekipazh`
--
ALTER TABLE `Ekipazh`
  ADD PRIMARY KEY (`kod`),
  ADD KEY `Rejs_nomer` (`Rejs_nomer`);

--
-- Индексы таблицы `Gorod`
--
ALTER TABLE `Gorod`
  ADD PRIMARY KEY (`gorod`);

--
-- Индексы таблицы `Kompanja`
--
ALTER TABLE `Kompanja`
  ADD PRIMARY KEY (`kod`);

--
-- Индексы таблицы `Polet`
--
ALTER TABLE `Polet`
  ADD PRIMARY KEY (`nomer`),
  ADD KEY `Rejs_nomer` (`Rejs_nomer`);

--
-- Индексы таблицы `Rejs`
--
ALTER TABLE `Rejs`
  ADD PRIMARY KEY (`nomer`),
  ADD KEY `aeroport_vyleta` (`aeroport_vyleta`),
  ADD KEY `aeroport_prileta` (`aeroport_prileta`),
  ADD KEY `Samolet_nomer` (`Samolet_nomer`);

--
-- Индексы таблицы `Samolet`
--
ALTER TABLE `Samolet`
  ADD PRIMARY KEY (`nomer`),
  ADD KEY `Kompanja_kod` (`Kompanja_kod`);

--
-- Индексы таблицы `Sotrudnik`
--
ALTER TABLE `Sotrudnik`
  ADD PRIMARY KEY (`kod`),
  ADD KEY `Ekipazh_kod` (`Ekipazh_kod`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Aeroport`
--
ALTER TABLE `Aeroport`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Ekipazh`
--
ALTER TABLE `Ekipazh`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Gorod`
--
ALTER TABLE `Gorod`
  MODIFY `gorod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Kompanja`
--
ALTER TABLE `Kompanja`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Polet`
--
ALTER TABLE `Polet`
  MODIFY `nomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Rejs`
--
ALTER TABLE `Rejs`
  MODIFY `nomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Samolet`
--
ALTER TABLE `Samolet`
  MODIFY `nomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Sotrudnik`
--
ALTER TABLE `Sotrudnik`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Aeroport`
--
ALTER TABLE `Aeroport`
  ADD CONSTRAINT `Aeroport_ibfk_1` FOREIGN KEY (`Gorod_gorod`) REFERENCES `Gorod` (`gorod`);

--
-- Ограничения внешнего ключа таблицы `Ekipazh`
--
ALTER TABLE `Ekipazh`
  ADD CONSTRAINT `Ekipazh_ibfk_1` FOREIGN KEY (`Rejs_nomer`) REFERENCES `Rejs` (`nomer`);

--
-- Ограничения внешнего ключа таблицы `Polet`
--
ALTER TABLE `Polet`
  ADD CONSTRAINT `Polet_ibfk_1` FOREIGN KEY (`Rejs_nomer`) REFERENCES `Rejs` (`nomer`);

--
-- Ограничения внешнего ключа таблицы `Rejs`
--
ALTER TABLE `Rejs`
  ADD CONSTRAINT `Rejs_ibfk_1` FOREIGN KEY (`aeroport_vyleta`) REFERENCES `Aeroport` (`kod`),
  ADD CONSTRAINT `Rejs_ibfk_2` FOREIGN KEY (`aeroport_prileta`) REFERENCES `Aeroport` (`kod`),
  ADD CONSTRAINT `Rejs_ibfk_3` FOREIGN KEY (`Samolet_nomer`) REFERENCES `Samolet` (`nomer`);

--
-- Ограничения внешнего ключа таблицы `Samolet`
--
ALTER TABLE `Samolet`
  ADD CONSTRAINT `Samolet_ibfk_1` FOREIGN KEY (`Kompanja_kod`) REFERENCES `Kompanja` (`kod`);

--
-- Ограничения внешнего ключа таблицы `Sotrudnik`
--
ALTER TABLE `Sotrudnik`
  ADD CONSTRAINT `Sotrudnik_ibfk_1` FOREIGN KEY (`Ekipazh_kod`) REFERENCES `Ekipazh` (`kod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
