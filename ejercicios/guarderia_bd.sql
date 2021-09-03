-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2021 a las 04:18:41
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guarderia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudiente`
--

CREATE TABLE `acudiente` (
  `acudiente_id` int(11) NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `tel_contacto` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acudiente`
--

INSERT INTO `acudiente` (`acudiente_id`, `dni`, `nombres`, `apellidos`, `direccion`, `tel_contacto`) VALUES
(1, 4, 'Vérane', 'Persitt', '32328 Red Cloud Plaza', '3473918377'),
(2, 21, 'Åsa', 'Gristwood', '205 Milwaukee Drive', '3014832981'),
(3, 1, 'Mélina', 'Demicoli', '119 Atwood Court', '3504098409'),
(4, 7, 'Léane', 'Halvorsen', '7 Jenifer Circle', '3350152902'),
(5, 3, 'Andrée', 'Folder', '39 Oxford Center', '3013210065'),
(6, 8, 'Naéva', 'Stelli', '1268 Bowman Street', '3392117964'),
(7, 25, 'Miléna', 'McReedy', '94784 Fulton Alley', '3496680314'),
(8, 21, 'Cléa', 'Gilliat', '249 Morrow Circle', '3152003856'),
(9, 3, 'Marylène', 'Blyde', '2 Calypso Center', '3168321158'),
(10, 6, 'Marie-françoise', 'Ilyas', '383 Artisan Point', '3304565753'),
(11, 12, 'Rébecca', 'Broadbent', '8 Eggendart Road', '3249325192'),
(12, 17, 'Audréanne', 'Blakes', '8 Crest Line Place', '3140475450'),
(13, 8, 'Pénélope', 'Gomby', '0 Melby Lane', '3458490888'),
(14, 2, 'Médiamass', 'Vinecombe', '2988 Waubesa Way', '3277178197'),
(15, 27, 'Maïté', 'Rehor', '250 Emmet Terrace', '3172836927'),
(16, 16, 'Örjan', 'Ackwood', '11 Loftsgordon Drive', '3318358743'),
(17, 13, 'Tán', 'Ingledew', '6289 Browning Parkway', '3072295186'),
(18, 13, 'Audréanne', 'Liverock', '69374 Waywood Crossing', '3198410072'),
(19, 24, 'Mylène', 'Casotti', '1 Butterfield Drive', '3237185613'),
(20, 26, 'Örjan', 'Willison', '5 Bashford Point', '3300033379'),
(21, 28, 'Anaïs', 'Wayne', '6962 Pierstorff Parkway', '3429884898'),
(22, 6, 'Dà', 'Pirrone', '3 Lighthouse Bay Circle', '3374340209'),
(23, 3, 'Dà', 'Silby', '01 Bluejay Junction', '3145392161'),
(24, 9, 'Cunégonde', 'Stolz', '07575 Golf View Way', '3449266424'),
(25, 17, 'Dù', 'Gorler', '5109 School Place', '3518284052'),
(26, 20, 'Naëlle', 'Weld', '87853 Roxbury Drive', '3360807073'),
(27, 8, 'Véronique', 'Westhofer', '46 Hanover Parkway', '3539241494'),
(28, 28, 'Léandre', 'Andriolli', '8004 Ilene Drive', '3173612464'),
(29, 7, 'Åsa', 'Duigenan', '59089 Rutledge Court', '3124522553'),
(30, 4, 'Edmée', 'Rathjen', '360 Lake View Center', '3591797883');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alergia_ingrediente_nino`
--

CREATE TABLE `alergia_ingrediente_nino` (
  `alergia_ingrediente_nino_id` int(11) NOT NULL,
  `nino_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alergia_ingrediente_nino`
--

INSERT INTO `alergia_ingrediente_nino` (`alergia_ingrediente_nino_id`, `nino_id`, `ingrediente_id`) VALUES
(1, 1, 20),
(2, 6, 17),
(3, 7, 8),
(4, 7, 19),
(5, 6, 11),
(6, 6, 15),
(7, 1, 15),
(8, 1, 18),
(9, 9, 15),
(10, 6, 5),
(11, 8, 2),
(12, 3, 18),
(13, 9, 18),
(14, 5, 4),
(15, 6, 14),
(16, 2, 9),
(17, 3, 15),
(18, 8, 5),
(19, 2, 2),
(20, 8, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `asistencia_id` int(11) NOT NULL,
  `fecha_ingreso` timestamp NULL DEFAULT NULL,
  `hora_ingreso` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `nino_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`asistencia_id`, `fecha_ingreso`, `hora_ingreso`, `hora_salida`, `nino_id`) VALUES
(1, '2021-01-26 05:00:00', '06:29:55', '16:16:23', 4),
(2, '2021-01-31 05:00:00', '08:08:48', '16:20:40', 8),
(3, '2021-05-30 05:00:00', '08:08:51', '16:19:22', 2),
(4, '2021-06-26 05:00:00', '08:36:18', '15:04:05', 7),
(5, '2021-07-07 05:00:00', '06:30:22', '17:12:16', 5),
(6, '2021-04-16 05:00:00', '08:43:04', '15:31:34', 2),
(7, '2021-03-16 05:00:00', '06:23:08', '15:25:26', 3),
(8, '2021-01-10 05:00:00', '08:14:57', '15:56:10', 9),
(9, '2021-01-01 05:00:00', '08:23:02', '15:50:33', 8),
(10, '2021-03-10 05:00:00', '08:56:56', '17:31:53', 4),
(11, '2021-05-11 05:00:00', '06:58:44', '17:19:15', 3),
(12, '2021-05-23 05:00:00', '08:36:34', '17:59:52', 5),
(13, '2021-07-13 05:00:00', '07:26:06', '17:53:42', 5),
(14, '2021-07-29 05:00:00', '08:58:46', '16:08:05', 2),
(15, '2021-01-30 05:00:00', '07:49:27', '17:45:34', 10),
(16, '2021-01-11 05:00:00', '08:12:23', '15:18:28', 9),
(17, '2021-03-20 05:00:00', '07:12:51', '15:10:55', 7),
(18, '2021-08-04 05:00:00', '06:37:48', '15:03:40', 1),
(19, '2021-04-28 05:00:00', '08:03:10', '15:08:27', 1),
(20, '2021-05-26 05:00:00', '08:04:59', '15:28:57', 10),
(21, '2021-06-23 05:00:00', '08:46:03', '16:36:55', 8),
(22, '2021-07-02 05:00:00', '07:48:27', '16:11:53', 8),
(23, '2021-05-01 05:00:00', '06:13:49', '17:53:15', 3),
(24, '2021-06-21 05:00:00', '07:53:54', '17:27:45', 10),
(25, '2021-07-04 05:00:00', '07:37:14', '16:50:32', 5),
(26, '2021-03-28 05:00:00', '08:46:40', '15:44:01', 3),
(27, '2021-02-17 05:00:00', '07:58:00', '17:07:37', 10),
(28, '2021-07-16 05:00:00', '07:51:09', '17:59:16', 3),
(29, '2021-06-19 05:00:00', '08:41:22', '16:40:32', 4),
(30, '2021-02-15 05:00:00', '06:55:42', '16:49:43', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_cuenta`
--

CREATE TABLE `info_cuenta` (
  `info_cuenta_id` int(11) NOT NULL,
  `numero_cuenta` varchar(15) DEFAULT NULL,
  `tipo_cuenta_id` int(11) NOT NULL,
  `acudiente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `info_cuenta`
--

INSERT INTO `info_cuenta` (`info_cuenta_id`, `numero_cuenta`, `tipo_cuenta_id`, `acudiente_id`) VALUES
(1, '1232149472', 2, 1),
(2, '1077578393', 1, 2),
(3, '1672413121', 2, 3),
(4, '1448163396', 2, 4),
(5, '1280296753', 1, 5),
(6, '1181757183', 2, 6),
(7, '1075125319', 1, 7),
(8, '1945002191', 1, 8),
(9, '1390456322', 2, 9),
(10, '1249519932', 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE `ingrediente` (
  `ingrediente_id` int(11) NOT NULL,
  `nombre_ingrediente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`ingrediente_id`, `nombre_ingrediente`) VALUES
(1, 'Agueweed'),
(2, 'Wildginger'),
(3, 'Amur Silvergrass'),
(4, 'Azure Blue Sage'),
(5, 'Ice Cold Buttercup'),
(6, 'Treculia'),
(7, 'Indian Parsley'),
(8, 'Curaciao Bush'),
(9, 'Yolla Bolly Biscuitroot'),
(10, 'Monterey Spineflower'),
(11, 'Mule-ears'),
(12, 'Bluehead Gilia'),
(13, 'Common Selfheal'),
(14, 'Little Reddish Indian Paintbrush'),
(15, 'Charleston Mountain Goldenbush'),
(16, 'Polargrass'),
(17, 'Arkansas Yucca'),
(18, 'Sugarcane'),
(19, 'Pseudoleskea Moss'),
(20, 'Nosegaytree'),
(21, 'Serpentine Hill Raintree'),
(22, 'Seifriz\'s Chamaedorea'),
(23, 'James\' Cryptantha'),
(24, 'Lindheimer\'s Indigo'),
(25, 'Green And Gold'),
(26, 'Fringed Orchid'),
(27, 'Elegant Bristle Fern'),
(28, 'Catawba Dermiscellum Lichen'),
(29, 'Howell\'s Lupine'),
(30, 'Oreganillo Falso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente_plato`
--

CREATE TABLE `ingrediente_plato` (
  `ingrediente_plato_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL,
  `plato_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingrediente_plato`
--

INSERT INTO `ingrediente_plato` (`ingrediente_plato_id`, `ingrediente_id`, `plato_id`) VALUES
(1, 2, 4),
(2, 18, 5),
(3, 29, 19),
(4, 24, 7),
(5, 12, 6),
(6, 4, 2),
(7, 19, 16),
(8, 17, 1),
(9, 28, 3),
(10, 21, 13),
(11, 19, 6),
(12, 5, 4),
(13, 6, 7),
(14, 30, 13),
(15, 24, 9),
(16, 2, 16),
(17, 1, 18),
(18, 2, 15),
(19, 19, 13),
(20, 7, 12),
(21, 12, 17),
(22, 28, 15),
(23, 12, 9),
(24, 26, 18),
(25, 16, 9),
(26, 15, 18),
(27, 26, 1),
(28, 12, 6),
(29, 18, 9),
(30, 5, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `matricula_id` int(11) NOT NULL,
  `valor_matricula` int(6) DEFAULT NULL,
  `nino_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`matricula_id`, `valor_matricula`, `nino_id`) VALUES
(1, 90000, 1),
(2, 90000, 2),
(3, 90000, 3),
(4, 90000, 4),
(5, 90000, 5),
(6, 90000, 6),
(7, 90000, 7),
(8, 90000, 8),
(9, 90000, 9),
(10, 90000, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `descripcion_menu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menu_id`, `descripcion_menu`) VALUES
(1, 'Cardify'),
(2, 'Hatity'),
(3, 'Zaam-Dox'),
(4, 'Ronstring'),
(5, 'Stringtough'),
(6, 'Bytecard'),
(7, 'Cardguard'),
(8, 'Voyatouch'),
(9, 'Holdlamis'),
(10, 'Bitchip');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_asistencia`
--

CREATE TABLE `menu_asistencia` (
  `menu_asistencia_id` int(11) NOT NULL,
  `asistencia_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_asistencia`
--

INSERT INTO `menu_asistencia` (`menu_asistencia_id`, `asistencia_id`, `menu_id`) VALUES
(1, 19, 3),
(2, 26, 8),
(3, 18, 2),
(4, 28, 3),
(5, 26, 3),
(6, 15, 1),
(7, 29, 9),
(8, 11, 5),
(9, 28, 3),
(10, 1, 1),
(11, 3, 1),
(12, 18, 1),
(13, 22, 8),
(14, 14, 4),
(15, 14, 2),
(16, 2, 8),
(17, 11, 8),
(18, 28, 5),
(19, 7, 1),
(20, 13, 1),
(21, 20, 1),
(22, 23, 1),
(23, 12, 2),
(24, 2, 9),
(25, 20, 2),
(26, 22, 7),
(27, 12, 6),
(28, 9, 7),
(29, 3, 7),
(30, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_plato`
--

CREATE TABLE `menu_plato` (
  `menu_plato_id` int(11) NOT NULL,
  `plato_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_plato`
--

INSERT INTO `menu_plato` (`menu_plato_id`, `plato_id`, `menu_id`) VALUES
(1, 12, 10),
(2, 1, 7),
(3, 15, 9),
(4, 13, 7),
(5, 15, 6),
(6, 12, 2),
(7, 8, 2),
(8, 19, 3),
(9, 9, 4),
(10, 16, 6),
(11, 17, 5),
(12, 4, 6),
(13, 10, 7),
(14, 11, 4),
(15, 8, 1),
(16, 8, 9),
(17, 16, 2),
(18, 5, 5),
(19, 5, 7),
(20, 20, 3),
(21, 11, 1),
(22, 16, 9),
(23, 9, 6),
(24, 1, 3),
(25, 14, 1),
(26, 4, 10),
(27, 4, 6),
(28, 16, 2),
(29, 13, 4),
(30, 13, 9),
(31, 7, 1),
(32, 10, 9),
(33, 8, 3),
(34, 19, 10),
(35, 8, 9),
(36, 10, 4),
(37, 13, 7),
(38, 14, 5),
(39, 18, 9),
(40, 18, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nino`
--

CREATE TABLE `nino` (
  `nino_id` int(11) NOT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `activo` varchar(2) DEFAULT NULL,
  `direccion_residencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nino`
--

INSERT INTO `nino` (`nino_id`, `identificacion`, `nombres`, `apellidos`, `fecha_nacimiento`, `fecha_ingreso`, `activo`, `direccion_residencia`) VALUES
(1, '144888519', 'Ninnette', 'Wildey', '2014-09-02', '2021-08-26', 'si', 'calle13'),
(2, '115821530', 'Zia', 'Demetr', '2018-09-10', '2021-01-10', 'si', 'calle12'),
(3, '187917324', 'Rem', 'Andree', '2018-03-01', '2020-04-01', 'si', 'calle12'),
(4, '148628121', 'Carmelita', 'Pioli', '2015-01-22', '2020-10-15', 'si', 'calle12'),
(5, '159309169', 'Eveleen', 'Oosthout de Vree', '2017-10-15', '2020-07-26', 'si', 'calle12'),
(6, '158948546', 'Dur', 'Geoghegan', '2018-10-01', '2020-01-28', 'si', 'calle12'),
(7, '181876099', 'Dionis', 'Huntingford', '2016-11-15', '2021-05-02', 'si', 'calle12'),
(8, '139817584', 'Arlyne', 'Booth-Jarvis', '2018-05-27', '2020-12-02', 'si', 'calle12'),
(9, '147157469', 'Fannie', 'Gepheart', '2015-10-25', '2021-01-19', 'si', 'calle13'),
(10, '159156065', 'Massimiliano', 'Kem', '2018-03-28', '2020-05-17', 'si', 'calle13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nino_acudiente`
--

CREATE TABLE `nino_acudiente` (
  `nino_acudiente_id` int(11) NOT NULL,
  `parentezco_estudiante` varchar(15) DEFAULT NULL,
  `nino_id` int(11) NOT NULL,
  `acudiente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nino_acudiente`
--

INSERT INTO `nino_acudiente` (`nino_acudiente_id`, `parentezco_estudiante`, `nino_id`, `acudiente_id`) VALUES
(1, 'mama', 1, 1),
(2, 'mama', 2, 2),
(3, 'mama', 3, 3),
(4, 'mama', 4, 4),
(5, 'mama', 5, 5),
(6, 'papa', 6, 6),
(7, 'papa', 7, 7),
(8, 'papa', 8, 8),
(9, 'ICBF', 9, 9),
(10, 'ICBF', 10, 10),
(11, 'ICBF', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `plato_id` int(11) NOT NULL,
  `nombre_plato` varchar(25) DEFAULT NULL,
  `valor_plato` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`plato_id`, `nombre_plato`, `valor_plato`) VALUES
(1, 'Realbuzz', 14298),
(2, 'Chatterbridge', 17065),
(3, 'Thoughtbeat', 13589),
(4, 'Yodo', 12055),
(5, 'Wordify', 13061),
(6, 'Photobug', 17681),
(7, 'Katz', 10517),
(8, 'Thoughtbridge', 12306),
(9, 'Thoughtbridge', 14580),
(10, 'Tazzy', 16913),
(11, 'Wordify', 19361),
(12, 'Jaloo', 14394),
(13, 'Yakijo', 18497),
(14, 'Blogtags', 12653),
(15, 'Flashdog', 18559),
(16, 'DabZ', 15037),
(17, 'Twitterwire', 14645),
(18, 'Yakidoo', 13799),
(19, 'Fiveclub', 14862),
(20, 'Wikibox', 17168);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retiro_nino`
--

CREATE TABLE `retiro_nino` (
  `retiro_nino_id` int(11) NOT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `nino_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `tipo_cuenta_id` int(11) NOT NULL,
  `cuenta` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`tipo_cuenta_id`, `cuenta`) VALUES
(1, 'ahorros'),
(2, 'corriente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD PRIMARY KEY (`acudiente_id`);

--
-- Indices de la tabla `alergia_ingrediente_nino`
--
ALTER TABLE `alergia_ingrediente_nino`
  ADD PRIMARY KEY (`alergia_ingrediente_nino_id`),
  ADD KEY `fk_alergia_ingrediente_nino_nino1_idx` (`nino_id`),
  ADD KEY `fk_alergia_ingrediente_nino_ingrediente1_idx` (`ingrediente_id`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`asistencia_id`),
  ADD KEY `fk_asistencia_nino1_idx` (`nino_id`);

--
-- Indices de la tabla `info_cuenta`
--
ALTER TABLE `info_cuenta`
  ADD PRIMARY KEY (`info_cuenta_id`),
  ADD KEY `fk_info_cuenta_tipo_cuenta1_idx` (`tipo_cuenta_id`),
  ADD KEY `fk_info_cuenta_acudiente1_idx` (`acudiente_id`);

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`ingrediente_id`);

--
-- Indices de la tabla `ingrediente_plato`
--
ALTER TABLE `ingrediente_plato`
  ADD PRIMARY KEY (`ingrediente_plato_id`),
  ADD KEY `fk_ingrediente_plato_ingrediente1_idx` (`ingrediente_id`),
  ADD KEY `fk_ingrediente_plato_plato1_idx` (`plato_id`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`matricula_id`),
  ADD KEY `fk_matricula_nino1_idx` (`nino_id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indices de la tabla `menu_asistencia`
--
ALTER TABLE `menu_asistencia`
  ADD PRIMARY KEY (`menu_asistencia_id`),
  ADD KEY `fk_menu_asistencia_asistencia1_idx` (`asistencia_id`),
  ADD KEY `fk_menu_asistencia_menu1_idx` (`menu_id`);

--
-- Indices de la tabla `menu_plato`
--
ALTER TABLE `menu_plato`
  ADD PRIMARY KEY (`menu_plato_id`),
  ADD KEY `fk_menu_plato_plato1_idx` (`plato_id`),
  ADD KEY `fk_menu_plato_menu1_idx` (`menu_id`);

--
-- Indices de la tabla `nino`
--
ALTER TABLE `nino`
  ADD PRIMARY KEY (`nino_id`);

--
-- Indices de la tabla `nino_acudiente`
--
ALTER TABLE `nino_acudiente`
  ADD PRIMARY KEY (`nino_acudiente_id`),
  ADD KEY `fk_nino_acudiente_nino1_idx` (`nino_id`),
  ADD KEY `fk_nino_acudiente_acudiente1_idx` (`acudiente_id`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`plato_id`);

--
-- Indices de la tabla `retiro_nino`
--
ALTER TABLE `retiro_nino`
  ADD PRIMARY KEY (`retiro_nino_id`),
  ADD KEY `fk_retiro_niño_nino1_idx` (`nino_id`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`tipo_cuenta_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alergia_ingrediente_nino`
--
ALTER TABLE `alergia_ingrediente_nino`
  ADD CONSTRAINT `fk_alergia_ingrediente_nino_ingrediente1` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingrediente` (`ingrediente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alergia_ingrediente_nino_nino1` FOREIGN KEY (`nino_id`) REFERENCES `nino` (`nino_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `fk_asistencia_nino1` FOREIGN KEY (`nino_id`) REFERENCES `nino` (`nino_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `info_cuenta`
--
ALTER TABLE `info_cuenta`
  ADD CONSTRAINT `fk_info_cuenta_acudiente1` FOREIGN KEY (`acudiente_id`) REFERENCES `acudiente` (`acudiente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_info_cuenta_tipo_cuenta1` FOREIGN KEY (`tipo_cuenta_id`) REFERENCES `tipo_cuenta` (`tipo_cuenta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ingrediente_plato`
--
ALTER TABLE `ingrediente_plato`
  ADD CONSTRAINT `fk_ingrediente_plato_ingrediente1` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingrediente` (`ingrediente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingrediente_plato_plato1` FOREIGN KEY (`plato_id`) REFERENCES `plato` (`plato_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_nino1` FOREIGN KEY (`nino_id`) REFERENCES `nino` (`nino_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu_asistencia`
--
ALTER TABLE `menu_asistencia`
  ADD CONSTRAINT `fk_menu_asistencia_asistencia1` FOREIGN KEY (`asistencia_id`) REFERENCES `asistencia` (`asistencia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_asistencia_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu_plato`
--
ALTER TABLE `menu_plato`
  ADD CONSTRAINT `fk_menu_plato_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_plato_plato1` FOREIGN KEY (`plato_id`) REFERENCES `plato` (`plato_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nino_acudiente`
--
ALTER TABLE `nino_acudiente`
  ADD CONSTRAINT `fk_nino_acudiente_acudiente1` FOREIGN KEY (`acudiente_id`) REFERENCES `acudiente` (`acudiente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nino_acudiente_nino1` FOREIGN KEY (`nino_id`) REFERENCES `nino` (`nino_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `retiro_nino`
--
ALTER TABLE `retiro_nino`
  ADD CONSTRAINT `fk_retiro_niño_nino1` FOREIGN KEY (`nino_id`) REFERENCES `nino` (`nino_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
