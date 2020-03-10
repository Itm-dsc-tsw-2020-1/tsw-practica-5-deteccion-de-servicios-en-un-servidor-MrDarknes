-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2020 a las 17:02:26
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datospuertos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `puerto` text NOT NULL,
  `estado` text NOT NULL,
  `servicio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `ip`, `puerto`, `estado`, `servicio`) VALUES
(27, '200.33.171.77', '22/tcp', 'open', 'ssh'),
(28, '200.33.171.77', '25/tcp', 'filtered', 'smtp'),
(29, '200.33.171.77', '80/tcp', 'open', 'http'),
(30, '200.33.171.77', '110/tcp', 'open', 'pop3'),
(31, '200.33.171.77', '119/tcp', 'open', 'nntp'),
(32, '200.33.171.77', '135/tcp', 'filtered', 'msrpc'),
(33, '200.33.171.77', '139/tcp', 'filtered', 'netbios-ssn'),
(34, '200.33.171.77', '143/tcp', 'open', 'imap'),
(35, '200.33.171.77', '443/tcp', 'open', 'https'),
(36, '200.33.171.77', '445/tcp', 'filtered', 'microsoft-ds'),
(37, '200.33.171.77', '1025/tcp', 'filtered', 'NFS-or-IIS'),
(38, '200.33.171.77', '6129/tcp', 'filtered', 'unknown'),
(39, '200.33.171.77', '8008/tcp', 'open', 'http'),
(40, '200.33.171.77', '22/tcp', 'open', 'ssh'),
(41, '200.33.171.77', '25/tcp', 'open', 'smtp'),
(42, '200.33.171.77', '80/tcp', 'open', 'http'),
(43, '200.33.171.77', '110/tcp', 'open', 'pop3'),
(44, '200.33.171.77', '119/tcp', 'open', 'nntp'),
(45, '200.33.171.77', '143/tcp', 'open', 'imap'),
(46, '200.33.171.77', '443/tcp', 'open', 'https'),
(47, '200.33.171.77', '2000/tcp', 'open', 'cisco-sccp'),
(48, '200.33.171.77', '5060/tcp', 'open', 'sip'),
(49, '200.33.171.77', '8008/tcp', 'open', 'http');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
