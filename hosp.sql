-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2020 a las 08:28:24
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hosp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `numero_serie` int(8) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `numero_serie`, `descripcion`) VALUES
(1, 'Aspirina', 84596320, 'Mejrora casi todos los dolores'),
(2, 'Simvastatibna', 89514036, 'Control de colesterol'),
(3, 'Omeprazol', 89456287, 'Para la acides del estomago'),
(4, 'Lexotirixina', 84721953, 'Para reemplazar la tiroxina'),
(5, 'Ramipril', 84100230, 'Para la ipertension'),
(6, 'Amlodipina', 87745920, 'Para la hipertension y la anginia'),
(7, 'Paracetamol', 84114592, 'Para aloviar el dolor'),
(8, 'Atorvastatina', 89965522, 'Para el control del colesterol'),
(9, 'Salbutamol', 88522202, 'Para el asma'),
(10, 'Lansoprazol', 88995544, 'Para el controlar el acido del estomago'),
(11, 'Ramipril', 84100230, 'Para la ipertension'),
(12, 'Amlodipina', 87745920, 'Para la hipertension y la anginia'),
(13, 'Paracetamol', 84114592, 'Para aloviar el dolor'),
(14, 'Atorvastatina', 89965522, 'Para el control del colesterol'),
(15, 'Aspirina', 84596320, 'Mejrora casi todos los dolores'),
(16, 'Paracetamol', 84114592, 'Para aloviar el dolor'),
(17, 'Atorvastatina', 89965522, 'Para el control del colesterol'),
(18, 'Salbutamol', 88522202, 'Para el asma'),
(19, 'Lansoprazol', 88995544, 'Para el controlar el acido del estomago'),
(20, 'Aspirina', 84596320, 'Mejrora casi todos los dolores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `app` varchar(60) NOT NULL,
  `apm` varchar(50) NOT NULL,
  `edad` int(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `app`, `apm`, `edad`, `direccion`) VALUES
(1, 'Allen', 'Salgado', 'Contreras', 22, 'Av. Tecnologico'),
(2, 'Jarek', 'Salgado', 'Lopez', 20, 'Av. Tecnologico'),
(3, 'Alan', 'Hernandez', 'Medina', 19, 'Benito Juarez'),
(4, 'David', 'Mata', 'Contreras', 20, 'Av. Carranza'),
(5, 'Alicia', 'Hernandez', 'Romero', 19, 'Americas'),
(6, 'Karina', 'Hernandez', 'Romero', 20, 'Americas'),
(7, 'Josefina', 'Romero', 'Aguilar', 30, 'Av. Tecnologico'),
(8, 'Jose Luis', 'Hernandez', 'Figueroa', 35, 'Artrga y juan alvarez'),
(9, 'Pedro', 'Hernandez', 'Montiel', 40, 'Juan Alvares'),
(10, 'Daniela', 'Ezquivel', 'Mendoza', 21, 'Bravo'),
(11, 'Ana Karen', 'Garcia', 'Colin', 22, 'And. Arbol'),
(12, 'Lilibeth', 'Beltran', 'Agular', 45, '8 Cedros'),
(13, 'Francisco', 'Garcia', 'Lopez', 40, 'Morelos'),
(14, 'Eduardo', 'Carmona ', 'Santos', 25, 'Andes'),
(15, 'Hector', 'Quiroz', 'Sanchez', 30, 'Jesus Carranza'),
(16, 'Jesus', 'Mendez', 'Romero', 22, 'Jiquipilco'),
(17, 'Irene ', 'Garcia ', 'Colin', 33, 'Joaquin Villa'),
(18, 'Ricardo', 'Casas', 'Dominguez', 45, 'Jose Clark'),
(19, 'Marcus', 'Dominguez', 'Finix', 40, 'Jose Maria Morelos'),
(20, 'Guillermo', 'Hurtado', 'Lopez', 28, 'Juan Aldama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `id_productos` varchar(255) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
