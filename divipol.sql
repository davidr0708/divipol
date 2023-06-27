-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 22:11:50
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
-- Estructura de tabla para la tabla `cruce_divipol`
--

CREATE TABLE `cruce_divipol` (
  `c_dpto` int(10) NOT NULL,
  `mm` int(10) NOT NULL,
  `zz` int(10) NOT NULL,
  `pp` int(10) NOT NULL,
  `divipol` int(20) NOT NULL,
  `c_anexos` int(20) NOT NULL,
  `nro` int(10) NOT NULL,
  `c_pd_cad` varchar(30) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `municipio` varchar(30) NOT NULL,
  `puesto` varchar(30) NOT NULL,
  `mujeres` int(10) NOT NULL,
  `hombres` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `mesas` int(10) NOT NULL,
  `comuna` varchar(40) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `tipo_acopio` varchar(10) NOT NULL,
  `clase_pd` varchar(10) NOT NULL,
  `nombre_cad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cruce_divipol`
--

INSERT INTO `cruce_divipol` (`c_dpto`, `mm`, `zz`, `pp`, `divipol`, `c_anexos`, `nro`, `c_pd_cad`, `departamento`, `municipio`, `puesto`, `mujeres`, `hombres`, `total`, `mesas`, `comuna`, `direccion`, `tipo_acopio`, `clase_pd`, `nombre_cad`) VALUES
(1, 1, 1, 1, 10010101, 10010201, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. LA ESPERANZA No 2', 4977, 7436, 12413, 32, '01COMUNA 1 POPULAR', 'KR 29 # 102 - 20', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 2, 10010102, 10010202, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'INST.EDUC. LA CANDELARIA', 10599, 6751, 17350, 45, '01COMUNA 1 POPULAR', 'CL 106 # 32-100', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 3, 10010103, 10010203, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'IE.MARIA DE LOS ANGELES CANO M', 4142, 3393, 7535, 20, '01COMUNA 1 POPULAR', 'CL 103 # 33D-75', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 4, 10010104, 10010204, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. MEDELLIN', 4657, 3717, 8374, 22, '01COMUNA 1 POPULAR', 'CL 96 # 36-45', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 5, 10010105, 10010205, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'I.E.FE Y ALEGRIA GRANIZAL', 1567, 1400, 2967, 8, '01COMUNA 1 POPULAR', 'Cra 39A N° 104-23', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 6, 10010106, 10010206, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'IE LA AVANZADA', 664, 449, 1113, 3, '01COMUNA 1 POPULAR', 'CRA 27 No 106BB-65', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 7, 10010107, 10010207, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. CARPINELO AMAPOLITA', 467, 356, 823, 3, '01COMUNA 1 POPULAR', 'CLL 97 No 23-12', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 1, 8, 10010108, 10010208, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'IE ANTONIO DERKA', 1824, 1550, 3374, 9, '01COMUNA 1 POPULAR', 'CRA 28 No 107-425', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE'),
(1, 1, 2, 1, 10010201, 10010209, 1, 'PD297', 'ANTIOQUIA', 'MEDELLIN', 'SEC.ESC. PABLO VI', 5548, 17568, 23116, 59, '01COMUNA 1 POPULAR', 'KR 42B # 110 A 28', 'PD', '0', 'SEC.ESC. PABLO VI'),
(1, 1, 2, 2, 10010202, 10010210, 1, 'CAD17', 'ANTIOQUIA', 'MEDELLIN', 'SEC. ESC. DIVINA PROVIDENCIA', 9036, 2723, 11759, 30, '01COMUNA 1 POPULAR', 'CL 108 NO 43B - 17', 'CAD', '0', 'MEDELLIN CAD 1 /NORTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divipol`
--

CREATE TABLE `divipol` (
  `dd` int(10) DEFAULT NULL,
  `mm` int(10) DEFAULT NULL,
  `zz` int(5) DEFAULT NULL,
  `pp` int(10) DEFAULT NULL,
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

INSERT INTO `divipol` (`dd`, `mm`, `zz`, `pp`, `departamento`, `municipio`, `puesto`, `mujeres`, `hombres`, `total`, `mesas`, `comuna`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '010010101', NULL, '1', 0, 0, 0, 0, '4977', '7436', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 2, '010010102', NULL, '1', 0, 0, 0, 0, '10599', '6751', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 3, '010010103', NULL, '1', 0, 0, 0, 0, '4142', '3393', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 4, '010010104', NULL, '1', 0, 0, 0, 0, '4657', '3717', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 5, '010010105', NULL, '1', 0, 0, 0, 0, '1567', '1400', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 6, '010010106', NULL, '1', 0, 0, 0, 0, '664', '449', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 7, '010010107', NULL, '1', 0, 0, 0, 0, '467', '356', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 1, 8, '010010108', NULL, '1', 0, 0, 0, 0, '1824', '1550', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 2, 1, '010010201', '010010201', '1', 0, 0, 0, 0, '5548', '17568', '2023-06-26 20:41:12', '2023-06-26 20:41:12'),
(1, 1, 2, 2, '010010202', NULL, '1', 0, 0, 0, 0, '9036', '2723', '2023-06-26 20:41:12', '2023-06-26 20:41:12');

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
