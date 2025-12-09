-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 19 2025 г., 11:28
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `asdku`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abonement`
--

CREATE TABLE `abonement` (
  `ID_Abonim` int(30) NOT NULL,
  `ID_Client` int(30) NOT NULL,
  `ID_Trener` int(30) NOT NULL,
  `Coast` int(30) NOT NULL,
  `Date_Pay` date NOT NULL,
  `N_Phone` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `ID_Client` int(30) NOT NULL,
  `N_Phone` varchar(18) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `B_Date` date NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `trener`
--

CREATE TABLE `trener` (
  `ID_Trener` int(30) NOT NULL,
  `Class` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abonement`
--
ALTER TABLE `abonement`
  ADD PRIMARY KEY (`ID_Abonim`);

--
-- Индексы таблицы `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`ID_Trener`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abonement`
--
ALTER TABLE `abonement`
  MODIFY `ID_Abonim` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `trener`
--
ALTER TABLE `trener`
  MODIFY `ID_Trener` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
