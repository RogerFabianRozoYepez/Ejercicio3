-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2020 a las 22:29:59
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercicio 3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `codigo_ciudad` int(11) NOT NULL,
  `desc_ciudad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de documento`
--

CREATE TABLE `tipo de documento` (
  `id_doc` int(11) NOT NULL,
  `nombre_doc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_us` int(11) NOT NULL,
  `primer_nombre_us` varchar(45) NOT NULL,
  `segundo_nombre_us` varchar(45) DEFAULT NULL,
  `primer_apellido_us` varchar(45) NOT NULL,
  `segundo_apellido_us` varchar(45) DEFAULT NULL,
  `Fk_codigo_ciudad` int(11) NOT NULL,
  `Fk_id_doc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`codigo_ciudad`);

--
-- Indices de la tabla `tipo de documento`
--
ALTER TABLE `tipo de documento`
  ADD PRIMARY KEY (`id_doc`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_us`),
  ADD KEY `Fk_id_doc` (`Fk_id_doc`),
  ADD KEY `Fk_codigo_ciudad` (`Fk_codigo_ciudad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`codigo_ciudad`) REFERENCES `usuario` (`Fk_codigo_ciudad`);

--
-- Filtros para la tabla `tipo de documento`
--
ALTER TABLE `tipo de documento`
  ADD CONSTRAINT `tipo de documento_ibfk_1` FOREIGN KEY (`id_doc`) REFERENCES `usuario` (`Fk_id_doc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
