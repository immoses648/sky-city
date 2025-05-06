-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2025-05-06 18:11:34
-- 服务器版本： 8.0.12
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xgbxgb`
--

-- --------------------------------------------------------

--
-- 表的结构 `game_rank`
--

CREATE TABLE `game_rank` (
  `id` int(11) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `score` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `game_rank`
--

INSERT INTO `game_rank` (`id`, `nickname`, `score`, `time`) VALUES
(1, '1', 1, 1),
(2, '2', 2, 2),
(3, '3', 3, 3),
(4, '3', 3, 3),
(5, '3', 3, 3),
(6, '3', 3, 3),
(7, '3', 3, 3),
(8, '3', 3, 3),
(9, '3', 3, 3),
(10, '3', 3, 3),
(11, '3', 3, 3),
(12, '3', 3, 3),
(13, '3', 3, 3),
(14, '3', 3, 3),
(15, '3', 3, 3),
(16, '3', 3, 3),
(17, '3', 3, 3),
(18, '3', 3, 3),
(19, '3', 3, 3),
(20, '3', 3, 3),
(21, '3', 3, 3),
(22, '3', 3, 3),
(23, '3', 3, 3),
(24, '3', 3, 3),
(25, '3', 3, 3),
(26, '3', 3, 3),
(27, '3', 3, 3),
(28, '3', 3, 3),
(29, '3', 1, 3),
(30, '3', 1, 3),
(31, '3', 1, 3),
(32, '3', 1, 3),
(33, '3', 1, 3),
(34, '3', 1, 3),
(35, '3', 1, 3),
(36, '3', 1, 3),
(37, '3', 1, 3),
(38, '3', 1, 3),
(39, '3', 1, 3),
(40, '3', 1, 3),
(41, '3', 1, 3),
(42, '3', 1, 3),
(43, '3', 1, 3),
(44, '3', 1, 3),
(45, '3', 1, 3),
(46, '3', 1, 3),
(47, '3', 1, 3),
(48, '3', 1, 3),
(49, '3', 1, 3),
(50, '3', 1, 3),
(51, '3', 1, 3),
(52, '3', 1, 3),
(53, '3', 1, 3),
(54, '3', 1, 3),
(55, '3', 1, 3),
(56, '3', 1, 3),
(57, '3', 1, 3),
(58, '3', 1, 3),
(59, '3', 1, 3),
(60, '3', 1, 3),
(61, '3', 1, 3),
(62, '3', 1, 3),
(63, '3', 1, 3),
(64, '3', 1, 3),
(65, '3', 1, 3),
(66, '3', 1, 3),
(67, '3', 1, 3),
(68, '3', 1, 3),
(69, '3', 1, 3),
(70, '3', 1, 3),
(71, '3', 1, 3),
(72, '3', 1, 3),
(73, '3', 1, 3),
(74, '3', 1, 3),
(75, '3', 1, 3),
(76, '3', 1, 3),
(77, '3', 1, 3),
(78, '3', 1, 3);

--
-- 转储表的索引
--

--
-- 表的索引 `game_rank`
--
ALTER TABLE `game_rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `score` (`score`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `game_rank`
--
ALTER TABLE `game_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
