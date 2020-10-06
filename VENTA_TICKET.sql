-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2020 a las 07:46:11
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta_ticket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_evento` int(5) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `lugar` varchar(60) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria` enum('conciertos','culturales','especiales','familiares','deportes') DEFAULT 'especiales',
  `imagen` blob DEFAULT NULL,
  `capacidad` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `nombre`, `fecha`, `hora`, `lugar`, `descripcion`, `categoria`, `imagen`, `capacidad`) VALUES
(1, 'Mega Ramada 18chera', '2020-09-18', '18:00:00', 'plaza victoria', 'Ramadas para celebrar el 18 de septiembre', 'familiares', NULL, 20),
(2, 'Bad Bunny', '2020-09-22', '10:00:00', 'Sport club', 'Concierto de artista Bad Bunny', 'conciertos', NULL, 20),
(3, 'Bad Bunny', '2020-09-22', '19:00:00', 'Sporting Viña del Mar', 'Concierto de artista Bad Bunny', 'conciertos', NULL, 20),
(4, 'Lollapalooza', '2020-09-24', '10:00:00', 'Movistar Arena', 'Festival internacional de musica', 'conciertos', NULL, 20),
(5, 'Lollapalooza', '2020-09-25', '10:00:00', 'Movistar Arena', 'Festival internacional de musica', 'conciertos', NULL, 20),
(6, 'Lollapalooza', '2020-09-26', '16:00:00', 'Movistar Arena', 'Festival internacional de musica', 'conciertos', NULL, 20),
(7, 'Festival musical 3ra edicion', '2020-09-26', '21:00:00', 'plaza viña del mar', 'Festival nacional de Rock', 'especiales', NULL, 20),
(8, 'Discurso nacional', '2020-09-27', '14:00:00', 'reloj de flores', 'Discurso Presidencial nueva constitucion', 'especiales', NULL, 20),
(9, 'Santiago Wanders vs Everton', '2020-10-01', '14:00:00', 'Estadio Sausalito', 'Superclasico de futboll Valparaiso', 'deportes', NULL, 20),
(10, '100 años Locomotora ', '2020-10-02', '16:00:00', 'plaza manuel mont', 'Celebracion del aniversario 100 de la Locomotora', 'especiales', NULL, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(5) NOT NULL,
  `id_usuario` int(5) DEFAULT NULL,
  `id_evento` int(5) NOT NULL,
  `precio` int(10) DEFAULT 0,
  `disponible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `id_usuario`, `id_evento`, `precio`, `disponible`) VALUES
(1, 1, 1, 1000, 0),
(2, 1, 1, 1000, 0),
(3, 1, 1, 1000, 0),
(4, NULL, 1, 1000, 1),
(5, NULL, 1, 1000, 1),
(6, NULL, 1, 1000, 1),
(7, NULL, 1, 1000, 1),
(8, NULL, 1, 1000, 1),
(9, NULL, 1, 1000, 1),
(10, NULL, 1, 1000, 1),
(11, NULL, 1, 1000, 1),
(12, NULL, 1, 1000, 1),
(13, NULL, 1, 1000, 1),
(14, NULL, 1, 1000, 1),
(15, NULL, 1, 1000, 1),
(16, NULL, 1, 1000, 1),
(17, NULL, 1, 1000, 1),
(18, NULL, 1, 1000, 1),
(19, NULL, 1, 1000, 1),
(20, NULL, 1, 1000, 1),
(21, 2, 2, 2000, 0),
(22, 2, 2, 2000, 0),
(23, 2, 2, 2000, 0),
(24, NULL, 2, 2000, 1),
(25, NULL, 2, 2000, 1),
(26, NULL, 2, 2000, 1),
(27, NULL, 2, 2000, 1),
(28, NULL, 2, 2000, 1),
(29, NULL, 2, 2000, 1),
(30, NULL, 2, 2000, 1),
(31, NULL, 2, 2000, 1),
(32, NULL, 2, 2000, 1),
(33, NULL, 2, 2000, 1),
(34, NULL, 2, 2000, 1),
(35, NULL, 2, 2000, 1),
(36, NULL, 2, 2000, 1),
(37, NULL, 2, 2000, 1),
(38, NULL, 2, 2000, 1),
(39, NULL, 2, 2000, 1),
(40, NULL, 2, 2000, 1),
(41, 3, 3, 3000, 0),
(42, 3, 3, 3000, 0),
(43, 3, 3, 3000, 0),
(44, NULL, 3, 3000, 1),
(45, NULL, 3, 3000, 1),
(46, NULL, 3, 3000, 1),
(47, NULL, 3, 3000, 1),
(48, NULL, 3, 3000, 1),
(49, NULL, 3, 3000, 1),
(50, NULL, 3, 3000, 1),
(51, NULL, 3, 3000, 1),
(52, NULL, 3, 3000, 1),
(53, NULL, 3, 3000, 1),
(54, NULL, 3, 3000, 1),
(55, NULL, 3, 3000, 1),
(56, NULL, 3, 3000, 1),
(57, NULL, 3, 3000, 1),
(58, NULL, 3, 3000, 1),
(59, NULL, 3, 3000, 1),
(60, NULL, 3, 3000, 1),
(61, 4, 4, 4000, 0),
(62, 4, 4, 4000, 0),
(63, 4, 4, 4000, 0),
(64, NULL, 4, 4000, 1),
(65, NULL, 4, 4000, 1),
(66, NULL, 4, 4000, 1),
(67, NULL, 4, 4000, 1),
(68, NULL, 4, 4000, 1),
(69, NULL, 4, 4000, 1),
(70, NULL, 4, 4000, 1),
(71, NULL, 4, 4000, 1),
(72, NULL, 4, 4000, 1),
(73, NULL, 4, 4000, 1),
(74, NULL, 4, 4000, 1),
(75, NULL, 4, 4000, 1),
(76, NULL, 4, 4000, 1),
(77, NULL, 4, 4000, 1),
(78, NULL, 4, 4000, 1),
(79, NULL, 4, 4000, 1),
(80, NULL, 4, 4000, 1),
(81, 5, 5, 5000, 0),
(82, 5, 5, 5000, 0),
(83, 5, 5, 5000, 0),
(84, NULL, 5, 5000, 1),
(85, NULL, 5, 5000, 1),
(86, NULL, 5, 5000, 1),
(87, NULL, 5, 5000, 1),
(88, NULL, 5, 5000, 1),
(89, NULL, 5, 5000, 1),
(90, NULL, 5, 5000, 1),
(91, NULL, 5, 5000, 1),
(92, NULL, 5, 5000, 1),
(93, NULL, 5, 5000, 1),
(94, NULL, 5, 5000, 1),
(95, NULL, 5, 5000, 1),
(96, NULL, 5, 5000, 1),
(97, NULL, 5, 5000, 1),
(98, NULL, 5, 5000, 1),
(99, NULL, 5, 5000, 1),
(100, NULL, 5, 5000, 1),
(101, 6, 6, 5000, 0),
(102, 6, 6, 5000, 0),
(103, 6, 6, 5000, 0),
(104, NULL, 6, 5000, 1),
(105, NULL, 6, 5000, 1),
(106, NULL, 6, 5000, 1),
(107, NULL, 6, 5000, 1),
(108, NULL, 6, 5000, 1),
(109, NULL, 6, 5000, 1),
(110, NULL, 6, 5000, 1),
(111, NULL, 6, 5000, 1),
(112, NULL, 6, 5000, 1),
(113, NULL, 6, 5000, 1),
(114, NULL, 6, 5000, 1),
(115, NULL, 6, 5000, 1),
(116, NULL, 6, 5000, 1),
(117, NULL, 6, 5000, 1),
(118, NULL, 6, 5000, 1),
(119, NULL, 6, 5000, 1),
(120, NULL, 6, 5000, 1),
(121, 7, 7, 7000, 0),
(122, 7, 7, 7000, 0),
(123, 7, 7, 7000, 0),
(124, NULL, 7, 7000, 1),
(125, NULL, 7, 7000, 1),
(126, NULL, 7, 7000, 1),
(127, NULL, 7, 7000, 1),
(128, NULL, 7, 7000, 1),
(129, NULL, 7, 7000, 1),
(130, NULL, 7, 7000, 1),
(131, NULL, 7, 7000, 1),
(132, NULL, 7, 7000, 1),
(133, NULL, 7, 7000, 1),
(134, NULL, 7, 7000, 1),
(135, NULL, 7, 7000, 1),
(136, NULL, 7, 7000, 1),
(137, NULL, 7, 7000, 1),
(138, NULL, 7, 7000, 1),
(139, NULL, 7, 7000, 1),
(140, NULL, 7, 7000, 1),
(141, 8, 8, 10000, 0),
(142, 8, 8, 10000, 0),
(143, 8, 8, 10000, 0),
(144, NULL, 8, 10000, 1),
(145, NULL, 8, 10000, 1),
(146, NULL, 8, 10000, 1),
(147, NULL, 8, 10000, 1),
(148, NULL, 8, 10000, 1),
(149, NULL, 8, 10000, 1),
(150, NULL, 8, 10000, 1),
(151, NULL, 8, 10000, 1),
(152, NULL, 8, 10000, 1),
(153, NULL, 8, 10000, 1),
(154, NULL, 8, 10000, 1),
(155, NULL, 8, 10000, 1),
(156, NULL, 8, 10000, 1),
(157, NULL, 8, 10000, 1),
(158, NULL, 8, 10000, 1),
(159, NULL, 8, 10000, 1),
(160, NULL, 8, 10000, 1),
(161, 9, 9, 10000, 0),
(162, 9, 9, 10000, 0),
(163, 9, 9, 10000, 0),
(164, NULL, 9, 10000, 1),
(165, NULL, 9, 10000, 1),
(166, NULL, 9, 10000, 1),
(167, NULL, 9, 10000, 1),
(168, NULL, 9, 10000, 1),
(169, NULL, 9, 10000, 1),
(170, NULL, 9, 10000, 1),
(171, NULL, 9, 10000, 1),
(172, NULL, 9, 10000, 1),
(173, NULL, 9, 10000, 1),
(174, NULL, 9, 10000, 1),
(175, NULL, 9, 10000, 1),
(176, NULL, 9, 10000, 1),
(177, NULL, 9, 10000, 1),
(178, NULL, 9, 10000, 1),
(179, NULL, 9, 10000, 1),
(180, NULL, 9, 10000, 1),
(181, 10, 10, 15000, 0),
(182, 10, 10, 15000, 0),
(183, 10, 10, 15000, 0),
(184, NULL, 10, 15000, 1),
(185, NULL, 10, 15000, 1),
(186, NULL, 10, 15000, 1),
(187, NULL, 10, 15000, 1),
(188, NULL, 10, 15000, 1),
(189, NULL, 10, 15000, 1),
(190, NULL, 10, 15000, 1),
(191, NULL, 10, 15000, 1),
(192, NULL, 10, 15000, 1),
(193, NULL, 10, 15000, 1),
(194, NULL, 10, 15000, 1),
(195, NULL, 10, 15000, 1),
(196, NULL, 10, 15000, 1),
(197, NULL, 10, 15000, 1),
(198, NULL, 10, 15000, 1),
(199, NULL, 10, 15000, 1),
(200, NULL, 10, 15000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_venta`
--

CREATE TABLE `ticket_venta` (
  `id_venta` int(5) NOT NULL,
  `id_ticket` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ticket_venta`
--

INSERT INTO `ticket_venta` (`id_venta`, `id_ticket`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 21),
(2, 22),
(2, 23),
(3, 41),
(3, 42),
(3, 43),
(4, 61),
(4, 62),
(4, 63),
(5, 81),
(5, 82),
(5, 83),
(6, 101),
(6, 102),
(6, 103),
(7, 121),
(7, 122),
(7, 123),
(8, 141),
(8, 142),
(8, 143),
(9, 161),
(9, 162),
(9, 163),
(10, 181),
(10, 182),
(10, 183);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(5) NOT NULL,
  `rut` varchar(9) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `num_telefono` int(10) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `password` varchar(16) NOT NULL,
  `tipo` enum('admin','comprador') DEFAULT 'comprador'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `rut`, `correo`, `nombre`, `apellido`, `num_telefono`, `sexo`, `password`, `tipo`) VALUES
(1, '10123123', 'juan.matinez@gmail.com', 'Juan', 'Martinez', 943564534, 'M', 'xyw123xyw', 'comprador'),
(2, '11111111', 'maria.sandoval@gmail.com', 'Maria', 'Sandoval', 953432539, 'F', '24ff24ff', 'comprador'),
(3, '12222222', 'pedro.rojas@gmail.com', 'Pedro', 'Rojas', 992637856, 'M', '12345abc', 'comprador'),
(4, '22222222', 'barbara.prieto@gmail.com', 'Barbara', 'Prieto', 958834256, 'F', '12a34b56c', 'comprador'),
(5, '12345678', 'sofia.perez@gmail.com', 'Sofia', 'Perez', 958834256, 'F', '20aa20hh', 'comprador'),
(6, '12211221', 'manuel.peña@gmail.com', 'Manuel', 'Peña', 987656741, 'M', '67890abc', 'comprador'),
(7, '33333333', 'natalia.bernal@gmail.com', 'Natalia', 'Bernal', 911974556, 'F', '21b43c65a', 'comprador'),
(8, '12124545', 'marcelo.olmos@gmail.com', 'Marcelo', 'Olmos', 987654888, 'M', '483kk44kk', 'comprador'),
(9, '99999999', 'leon.carreno@gmail.com', 'Leon', 'Carreno', 945556634, 'M', '4543gg543', 'admin'),
(10, '88889999', 'luis.vera@gmail.com', 'Luis', 'Vera', 945776655, 'M', '123adcd123', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `hora` time NOT NULL,
  `monto_total` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fecha`, `direccion`, `hora`, `monto_total`) VALUES
(1, '2020-08-16', 'Avenida San Fernando', '16:00:00', 3000),
(2, '2020-08-16', 'Avenida San Nicolás', '20:00:00', 6000),
(3, '2020-08-17', 'Avenida San Miguel', '22:00:00', 9000),
(4, '2020-08-17', 'Avenida San Jose', '17:00:00', 12000),
(5, '2020-08-17', 'Avenida San Alejandro', '15:00:00', 15000),
(6, '2020-08-17', 'Avenida San Manuel', '21:00:00', 15000),
(7, '2020-08-17', 'Avenida San Bernando', '23:00:00', 21000),
(8, '2020-08-17', 'Avenida San Hurtado', '12:00:00', 30000),
(9, '2020-08-17', 'Avenida San Fernando', '13:00:00', 30000),
(10, '2020-08-17', 'Avenida San Jose', '11:00:00', 45000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `ticket_venta`
--
ALTER TABLE `ticket_venta`
  ADD PRIMARY KEY (`id_ticket`,`id_venta`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`,`correo`,`rut`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket_venta`
--
ALTER TABLE `ticket_venta`
  ADD CONSTRAINT `ticket_venta_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_venta_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
