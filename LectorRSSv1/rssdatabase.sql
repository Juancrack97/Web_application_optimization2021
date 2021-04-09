-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2021 a las 05:22:45
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rssdatabase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `ID` int(11) NOT NULL,
  `Titulo` text COLLATE utf8_bin NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL,
  `Categoria` text COLLATE utf8_bin NOT NULL,
  `Link` text COLLATE utf8_bin NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`ID`, `Titulo`, `Descripcion`, `Categoria`, `Link`, `Fecha`) VALUES
(0, 'Dan licencia a Alcalde de Ecatepec', 'Para que busque ser reelecto, el Cabildo de Ecatepec autorizó dar licencia temporal al Alcalde morenista, Fernando Vilchis Contreras.', '', 'http://www.reforma.com/dan-licencia-a-alcalde-de-ecatepec/ar2158973', '2021-04-08'),
(3, 'Aumentan pruebas Covid-19 tras Semana Santa', 'El número de pruebas para detección de Covid-19 aumentaron, en la Ciudad de México, tras las vacaciones de Semana Santa.', '', 'http://www.reforma.com/aumentan-pruebas-covid-19-tras-semana-santa/ar2158739', '2021-04-07'),
(8, 'Llama IP a valorar pandemia en voto', 'Coparmex hizo un llamado a ciudadanos para valorar el manejo de la pandemia, en lo sanitario y en lo económico, a la hora de emitir su voto.', '', 'http://www.reforma.com/llama-ip-a-valorar-pandemia-en-voto/ar2158975', '2021-04-08'),
(19, 'Ven opaco Reto Verde y su efecto ambiental', 'Hasta marzo, fueron sembrados más de 14 millones de piezas de vegetación en la CDMX, sin embargo se desconoce el costo para mantenerlas.', '', 'http://www.reforma.com/ven-opaco-reto-verde-y-su-efecto-ambiental/ar2159006', '2021-04-08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
