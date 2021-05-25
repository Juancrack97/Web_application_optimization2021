-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-04-2021 a las 05:24:45
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

DROP TABLE IF EXISTS `entradas`;
CREATE TABLE IF NOT EXISTS `entradas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` text COLLATE utf8_bin NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL,
  `Categoria` text COLLATE utf8_bin NOT NULL,
  `Link` text COLLATE utf8_bin NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`ID`, `Titulo`, `Descripcion`, `Categoria`, `Link`, `Fecha`) VALUES
(84, 'Guillermo Lasso: Conservative ex-banker elected Ecuador president', 'Guillermo Lasso, 65, has vowed to attract foreign investment and break away from leftist policies.', '', 'https://www.bbc.co.uk/news/world-latin-america-56713570', '2021-04-12'),
(85, 'St Vincent volcano: Eruptions likely in coming days, experts warn', 'The Caribbean island of St Vincent has been blanketed in ash after the La Soufrière volcano erupted.', '', 'https://www.bbc.co.uk/news/world-latin-america-56713564', '2021-04-12'),
(86, 'Chinese official says local vaccines \'don\'t have high protection rates\'', 'However he later appeared to backtrack, saying his comments were a \"complete misunderstanding\".', '', 'https://www.bbc.co.uk/news/world-asia-china-56713663', '2021-04-12'),
(87, 'Alibaba accepts record China fine and vows to change', 'China\'s regulators slapped a $2.8bn fine on the e-commerce giant over monopoly concerns', '', 'https://www.bbc.co.uk/news/business-56713508', '2021-04-12'),
(88, 'Cyclone Seroja: Storm makes landfall in Western Australia', 'Strong winds tore across the state on Sunday, damaging homes and leaving thousands without power.', '', 'https://www.bbc.co.uk/news/world-australia-56707977', '2021-04-12'),
(89, 'Iran says key Natanz nuclear facility hit by \'sabotage\'', 'The country\'s top nuclear official says a power outage at its Natanz site was \"nuclear terrorism\".', '', 'https://www.bbc.co.uk/news/world-middle-east-56708778', '2021-04-12'),
(90, 'Being mixed race like Kamala Harris: \'I feel just as Indian as I feel black\'', 'Three women who share Kamala Harris\' mixed parentage open up about balancing the two sides of their lives.', '', 'https://www.bbc.co.uk/news/world-56597925', '2021-04-11'),
(91, 'Yuri Gagarin: Sixty years since the first man went into space', 'The BBC speaks to the woman who, as a child, witnessed Yuri Gagarin\'s return to Earth 60 years ago.', '', 'https://www.bbc.co.uk/news/science-environment-56690949', '2021-04-11'),
(92, 'Why India\'s forest fires are worrying scientists', 'Activists say authorities in India and Nepal seem underprepared to fight forest fires.', '', 'https://www.bbc.co.uk/news/world-asia-india-56671148', '2021-04-11'),
(93, 'Camille Pissarro: Transatlantic struggle for painting stolen by Nazis', 'A Pissarro painting is the focus of a custody battle involving a Holocaust survivor and a US museum.', '', 'https://www.bbc.co.uk/news/world-europe-56688032', '2021-04-11'),
(94, 'Cambodia criticises edited photos of Khmer Rouge victims', 'Some of the images colourised by an Irish artist appear to have been edited to show them smiling.', '', 'https://www.bbc.co.uk/news/world-asia-56707984', '2021-04-11'),
(95, 'Markus Söder joins German chancellor race', 'Bavaria\'s premier finally says he may be the conservatives\' candidate to replace Angela Merkel.', '', 'https://www.bbc.co.uk/news/world-europe-56710349', '2021-04-11'),
(96, 'Benin elections: The fight for a democratic future', 'Several opposition leaders are barred from Sunday\'s poll in a country once seen as a model for Africa.', '', 'https://www.bbc.co.uk/news/world-africa-56690689', '2021-04-11'),
(97, 'New Christ statue in Brazil\'s Encantado to be taller than Rio\'s', 'A head and outstretched arms have been added to Christ the Protector in the southern city of Encantado.', '', 'https://www.bbc.co.uk/news/world-latin-america-56710354', '2021-04-11'),
(98, 'Sydney remembers Prince Philip: ‘We feel more connected now’', 'More than 500 people attended a church service in Sydney, Australia, where Prince Philip was remembered.', '', 'https://www.bbc.co.uk/news/world-australia-56708296', '2021-04-11'),
(99, 'US army officer sues police over violent traffic stop', 'A black army lieutenant files a lawsuit against two policemen in Virginia after being pepper-sprayed.', '', 'https://www.bbc.co.uk/news/world-us-canada-56707979', '2021-04-11'),
(100, 'US soldier faces guns and pepper spray in traffic stop', 'A black army lieutenant is suing police after he was pulled over by two officers in Virginia.', '', 'https://www.bbc.co.uk/news/world-us-canada-56707864', '2021-04-11'),
(101, 'Jordan royal family pictured together following \'royal rift\'', 'They appear in public a week after Prince Hamzah was accused of plotting to destabilise the kingdom.', '', 'https://www.bbc.co.uk/news/world-middle-east-56676274', '2021-04-11'),
(102, 'Elephant calf rescued from bottom of well in India', 'An elephant calf has been rescued from the bottom of a dug well in India\'s Odisha state.', '', 'https://www.bbc.co.uk/news/world-south-asia-56709546', '2021-04-11'),
(103, 'Ghana\'s farmers eye sweet success from chocolate', 'Ghana is the world\'s second largest cocoa producer but sees little of the profits from chocolate - for now.', '', 'https://www.bbc.co.uk/news/world-africa-56687427', '2021-04-10'),
(104, 'Moscow\'s palatial Yeliseyevsky food hall closes after 120 years', 'The iconic supermarket on Tverskaya Street in central Moscow first opened its doors 120 years ago.', '', 'https://www.bbc.co.uk/news/world-europe-56683249', '2021-04-10'),
(105, 'Saving green turtles... by cooling their eggs', 'Warmer sand temperatures from climate change are leading to way more females being hatched than males.', '', 'https://www.bbc.co.uk/news/science-environment-56690950', '2021-04-10'),
(106, 'Ash falls like snow after St Vincent volcano eruption', 'Huge plumes of smoke filled the sky above the Caribbean island, forcing thousands from their homes.', '', 'https://www.bbc.co.uk/news/world-latin-america-56704752', '2021-04-10'),
(107, 'South African artists struggle with Covid theatre closures', 'The permanent closure of a top venue symbolises the struggle many performers are facing.', '', 'https://www.bbc.co.uk/news/world-africa-56651742', '2021-04-09'),
(108, 'Sexual health: \'I can\'t tell my mum I\'m having sex\'', 'In conservative Singapore, start-ups give young adults discreet access to sexual health products.', '', 'https://www.bbc.co.uk/news/world-asia-56480094', '2021-04-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feeds`
--

DROP TABLE IF EXISTS `feeds`;
CREATE TABLE IF NOT EXISTS `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feeds`
--

INSERT INTO `feeds` (`id`, `link`) VALUES
(1, 'https://www.aljazeera.com/xml/rss/all.xml'),
(2, 'http://feeds.bbci.co.uk/news/world/rss.xml'),
(3, 'http://rss.cnn.com/rss/edition_world.rss');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
