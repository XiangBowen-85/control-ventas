-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-03-11 15:07:57
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `control-ventas`
--

-- --------------------------------------------------------

--
-- 表的结构 `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(255) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nombre_usuario`, `password`, `email`) VALUES
(1, 'manolo', '1234', 'manolo@gmail.com'),
(2, 'beatriz', '5678', '');

-- --------------------------------------------------------

--
-- 表的结构 `vendedores`
--

CREATE TABLE `vendedores` (
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `vendedores`
--

INSERT INTO `vendedores` (`nombre`, `apellidos`, `email`, `telefono`) VALUES
('Manolo', 'Rodriguez llopis', 'Rodriguez@gmail.com', '114514'),
('Manolo', 'Rodriguez llopis', 'Rodriguez@gmail.com', '114514'),
('Manolo', 'Rodriguez llopis', 'Rodriguez@gmail.com', '114514'),
('Manolo', 'Rodriguez LLopis', 'manolo.r.ll@gmail.com', ''),
('Manolo', 'Rodriguez LLopis', 'manolo.r.ll@gmail.com', ''),
('Manolo', 'Rodriguez llopis', 'Rodriguez@gmail.com', '114514');

--
-- 转储表的索引
--

--
-- 表的索引 `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`,`password`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
