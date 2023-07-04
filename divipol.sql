-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2023 a las 23:32:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `divipol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `id` int(11) NOT NULL,
  `c_dpto` varchar(10) NOT NULL,
  `mm` varchar(10) NOT NULL,
  `zz` varchar(10) NOT NULL,
  `pp` varchar(5) NOT NULL,
  `c_divipol` varchar(30) NOT NULL,
  `c_anexos` varchar(30) DEFAULT NULL,
  `nro` varchar(10) DEFAULT NULL,
  `codigo_pd_cad` varchar(30) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `mujeres` int(10) DEFAULT NULL,
  `hombres` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `mesas` int(10) DEFAULT NULL,
  `comuna` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tipo_cad` varchar(30) DEFAULT NULL,
  `clase` varchar(30) DEFAULT NULL,
  `nombre_cad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divipol`
--

CREATE TABLE `divipol` (
  `id` int(11) NOT NULL,
  `dd` varchar(10) DEFAULT NULL,
  `mm` varchar(10) DEFAULT NULL,
  `zz` varchar(10) DEFAULT NULL,
  `pp` varchar(10) DEFAULT NULL,
  `c_divipol` varchar(50) DEFAULT NULL,
  `departamento` varchar(30) DEFAULT NULL,
  `municipio` varchar(30) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `mujeres` int(10) DEFAULT NULL,
  `hombres` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `mesas` int(10) DEFAULT NULL,
  `comuna` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tipo_cad` varchar(50) DEFAULT NULL,
  `nombre_cad` varchar(50) DEFAULT NULL,
  `estado` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contraseña` varchar(30) NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `contraseña`, `rol`) VALUES
(1, 'tecnologia', 'tecnologia', 'TECNOLOGIA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `divipol`
--
ALTER TABLE `divipol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `divipol`
--
ALTER TABLE `divipol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
