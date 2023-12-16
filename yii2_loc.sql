-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 31 2019 г., 21:40
-- Версия сервера: 5.5.50-log
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_loc`
--
CREATE DATABASE IF NOT EXISTS `yii2_multishop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `yii2_multishop`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `title`, `description`, `keywords`) VALUES
(1, 0, 'Dresses', 'Dresses Foods keywords', 'Dresses Foods description'),
(2, 1, "Men's Dresses", "Men's Dresses keywords", "Men's Dresses description"),
(3, 1, "Women's Dresses", "Women's Dresses description", "Women's Dresses keywords"),
(4, 1, "Baby's Dresses", "Baby's Dresses description", "Baby's Dresses keywords"),
(5, 0, 'Shirts', 'Shirts description', 'Shirts keywords'),
(6, 0, 'Jeans', NULL, NULL),
(7, 0, 'Swimwear', NULL, NULL),
(8, 0, 'Sleepwear', NULL, NULL),
(9, 0, 'Sportswear', NULL, NULL),
(10, 0, 'Jumpsuits', NULL, NULL),
(11, 0, 'Blazers', NULL, NULL),
(12, 0, 'Jackets', NULL, NULL),
(13, 0, 'Shoes', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
