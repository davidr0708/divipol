-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2023 a las 23:41:42
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
  `c_dpto` int(10) NOT NULL,
  `mm` int(10) NOT NULL,
  `zz` int(10) NOT NULL,
  `pp` int(5) NOT NULL,
  `c_divipol` int(30) NOT NULL,
  `c_anexos` int(30) DEFAULT NULL,
  `nro` int(10) DEFAULT NULL,
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

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`c_dpto`, `mm`, `zz`, `pp`, `c_divipol`, `c_anexos`, `nro`, `codigo_pd_cad`, `departamento`, `municipio`, `puesto`, `mujeres`, `hombres`, `total`, `mesas`, `comuna`, `direccion`, `tipo_cad`, `clase`, `nombre_cad`) VALUES
(1, 1, 1, 1, 10010101, NULL, 1, 'CAD1', 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. LA ESPERANZA No 2', 5185, 7682, 12867, 39, '01COMUNA 1 POPULAR', 'KR 29 # 102 - 20', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 2, 10010102, NULL, 1, 'CAD1', 'ANTIOQUIA', 'MEDELLIN', 'INST.EDUC. LA CANDELARIA', 10587, 6836, 17423, 53, '01COMUNA 1 POPULAR', 'CL 106 # 32-100', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 3, 10010103, NULL, 1, 'CAD2', 'ANTIOQUIA', 'MEDELLIN', 'IE.MARIA DE LOS ANGELES CANO MARQUEZ', 4251, 3571, 7822, 24, '01COMUNA 1 POPULAR', 'CALLE 103 #33 B 75', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 4, 10010104, NULL, 1, 'CAD2', 'ANTIOQUIA', 'MEDELLIN', 'SEC.ESC.MEDELLIN', 4729, 3826, 8555, 26, '01COMUNA 1 POPULAR', 'CL 96 # 36-45', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 5, 10010105, NULL, 1, 'CAD3', 'ANTIOQUIA', 'MEDELLIN', 'I.E.FE Y ALEGRIA GRANIZAL', 1929, 1736, 3665, 11, '01COMUNA 1 POPULAR', 'Cra 39A N° 104-23', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 6, 10010106, NULL, 1, 'CAD3', 'ANTIOQUIA', 'MEDELLIN', 'IE LA AVANZADA', 752, 573, 1325, 4, '01COMUNA 1 POPULAR', 'CRA 27 No 106BB-65', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 7, 10010107, NULL, 1, 'CAD4', 'ANTIOQUIA', 'MEDELLIN', 'SEC.ESC.CARPINELO AMAPOLITA', 545, 476, 1021, 4, '01COMUNA 1 POPULAR', 'CALLE 97 # 23-12', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 8, 10010108, NULL, 1, 'CAD4', 'ANTIOQUIA', 'MEDELLIN', 'IE ANTONIO DERKA', 2369, 2108, 4477, 14, '01COMUNA 1 POPULAR', 'CRA 28 No 107-425', 'CAD', NULL, 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 9, 10010109, NULL, 1, 'PD1', 'ANTIOQUIA', 'MEDELLIN', 'IE NUEVO HORIZONTE No 2', 1622, 10114, 11736, 36, '01COMUNA 1 POPULAR', 'CARRERA 37 No 107AA 21', 'PD', NULL, 'SEC.ESC. PABLO VI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cruce_divipol`
--

CREATE TABLE `cruce_divipol` (
  `dd` int(10) NOT NULL,
  `mm` int(10) NOT NULL,
  `zz` int(10) NOT NULL,
  `pp` int(10) NOT NULL,
  `c_divipol` int(30) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `mesas` int(10) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `cruce_divipol` int(30) NOT NULL,
  `tipo_cad` varchar(30) NOT NULL,
  `nombre_cad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divi`
--

CREATE TABLE `divi` (
  `c_dpto` int(5) NOT NULL,
  `mm` int(5) NOT NULL,
  `zz` int(5) NOT NULL,
  `pp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divipol`
--

CREATE TABLE `divipol` (
  `dd` int(10) DEFAULT NULL,
  `mm` int(10) DEFAULT NULL,
  `zz` int(5) DEFAULT NULL,
  `pp` int(10) DEFAULT NULL,
  `c_divipol` int(30) DEFAULT NULL,
  `departamento` varchar(30) DEFAULT NULL,
  `municipio` varchar(30) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `mujeres` int(10) DEFAULT NULL,
  `hombres` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `mesas` int(10) DEFAULT NULL,
  `comuna` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `divipol`
--

INSERT INTO `divipol` (`dd`, `mm`, `zz`, `pp`, `c_divipol`, `departamento`, `municipio`, `puesto`, `mujeres`, `hombres`, `total`, `mesas`, `comuna`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. LA ESPERANZA No 2', 5185, 7682, 0, 39, '01COMUNA 1 POPULAR', 'KR 29 # 102 - 20', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 2, NULL, 'ANTIOQUIA', 'MEDELLIN', 'INST.EDUC. LA CANDELARIA', 10587, 6836, 0, 53, '01COMUNA 1 POPULAR', 'CL 106 # 32-100', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 3, NULL, 'ANTIOQUIA', 'MEDELLIN', 'IE.MARIA DE LOS ANGELES CANO MARQUEZ', 4251, 3571, 0, 24, '01COMUNA 1 POPULAR', 'CALLE 103 #33 B 75', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 4, NULL, 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. MEDELLIN', 4729, 3826, 0, 26, '01COMUNA 1 POPULAR', 'CL 96 # 36-45', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 5, NULL, 'ANTIOQUIA', 'MEDELLIN', 'I.E.FE Y ALEGRIA GRANIZAL', 1929, 1736, 0, 11, '01COMUNA 1 POPULAR', 'Cra 39A N° 104-23', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 6, NULL, 'ANTIOQUIA', 'MEDELLIN', 'IE LA AVANZADA', 752, 573, 0, 4, '01COMUNA 1 POPULAR', 'CRA 27 No 106BB-65', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 7, NULL, 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. CARPINELO AMAPOLITA', 545, 476, 0, 4, '01COMUNA 1 POPULAR', 'CALLE 97 # 23-12', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 8, NULL, 'ANTIOQUIA', 'MEDELLIN', 'IE ANTONIO DERKA', 2369, 2108, 0, 14, '01COMUNA 1 POPULAR', 'CRA 28 No 107-425', '2023-06-28 19:58:04', '2023-06-28 19:58:04'),
(1, 1, 1, 9, NULL, 'ANTIOQUIA', 'MEDELLIN', 'IE NUEVO HORIZONTES No 2', 1622, 10114, 0, 36, '01COMUNA 1 POPULAR', 'CARRERA 37 No 107AA 21', '2023-06-28 19:58:04', '2023-06-28 19:58:04');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `c_dpto` int(5) DEFAULT NULL,
  `mm` int(5) DEFAULT NULL,
  `zz` int(5) DEFAULT NULL,
  `pp` int(5) DEFAULT NULL,
  `c_divipol` int(30) DEFAULT NULL,
  `c_anexos` int(30) DEFAULT NULL,
  `nro` int(5) DEFAULT NULL,
  `codigo_pad_cad` varchar(20) DEFAULT NULL,
  `departamento` varchar(30) DEFAULT NULL,
  `municipio` varchar(30) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `mujeres` int(10) DEFAULT NULL,
  `hombres` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `mesas` int(10) DEFAULT NULL,
  `comuna` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tipo_cad` varchar(10) DEFAULT NULL,
  `clase` varchar(20) DEFAULT NULL,
  `nombre_cad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
