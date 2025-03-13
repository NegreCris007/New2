-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2025 a las 22:23:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alkosto_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `idalmacen` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `idtienda` int(11) NOT NULL,
  `observacion` text DEFAULT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`idalmacen`, `nombre`, `descripcion`, `idtienda`, `observacion`, `createdate`, `update_at`, `delete_at`) VALUES
(1, 'Almacen', 'Almacen', 18, NULL, '2025-03-06 14:53:55', '2025-03-06 14:54:48', NULL),
(2, 'Almacen 1', 'Almacen 1', 18, NULL, '2025-03-06 14:54:11', '2025-03-06 14:55:00', NULL),
(3, 'Almacen 2', 'Almacen 2', 47, NULL, '2025-03-06 14:54:34', '2025-03-06 14:55:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `puerto` varchar(50) DEFAULT NULL,
  `generacion` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `rom` varchar(50) DEFAULT NULL,
  `serial` varchar(255) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `fechacreada` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `create_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  `update_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `delete_at` timestamp(5) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `nombre`, `codigo`, `descripcion`, `marca`, `modelo`, `puerto`, `generacion`, `ram`, `rom`, `serial`, `idcategoria`, `fechacreada`, `idusuario`, `estado`, `create_at`, `update_at`, `delete_at`) VALUES
(5, 'Pc', 'w757', 'Pc', 'w7w57', 'rwate', 'w7w575', 'w66w7', '5e75w7', '', '', 1, '2025-02-08 10:10:55', 1, 1, '2025-02-10 21:41:19.03287', '2025-03-13 18:30:19.44111', NULL),
(6, 'Rauter1', '3457345', 'Rauter', '4357547', '43q45243', '37547', '4254256', '34574', '5437542', '', 1, '2025-02-08 10:13:12', 1, 1, '2025-02-10 21:41:19.03287', '2025-02-10 21:41:19.03287', NULL),
(9, 'Pc3', 'w757', 'Pc', '42424', '353464', '5434364', '25364', '5e75w7', 'w75', '', 3, '2025-02-10 15:38:47', 1, 1, '2025-02-10 21:41:19.03287', '2025-02-12 18:28:34.09341', NULL),
(10, 'Mause', '1234', 'Mause Primera generación', '42424', '353464', '5434364', 'w66w7', '5e75w7', 'w75', '', 1, '2025-02-12 12:24:55', 1, 1, '2025-02-12 18:24:55.65156', '2025-02-12 22:03:02.15746', NULL),
(11, 'Pc6', 'w757', 'Pc', '42424', '353464', '5434364', '25364', '5e75w7', '', '', 23, '2025-02-12 12:39:10', 1, 0, '2025-02-12 18:39:10.80506', '2025-03-13 18:26:33.49318', NULL),
(12, 'Pc7', 'w757', 'Pc', '42424', '353464', '5434364', '25364', '5e75w7', 'w75', '', 23, '2025-02-12 19:49:52', 0, 1, '2025-02-12 18:49:52.31046', '2025-02-12 18:49:52.31046', NULL),
(13, 'Pc7', 'w757', 'Pc', '42424', '353464', '5434364', '25364', '5e75w7', '246f', '', 23, '2025-02-12 19:52:21', 0, 1, '2025-02-12 18:52:21.20143', '2025-02-12 18:52:21.20143', NULL),
(14, 'Pc8', 'w757', 'Pc', '42424', '353464', '5434364', '25364', '5e75w7', 'w75', '', 1, '2025-02-12 14:54:40', 0, 1, '2025-02-12 18:54:40.73604', '2025-02-12 18:54:40.73604', NULL),
(15, 'Teclado', 'w757', 'Teclado', '42424', '353464', '5434364', '25364', '5e75w7', 'w75', '', 23, '2025-02-15 11:32:18', 0, 1, '2025-02-15 15:32:18.91232', '2025-02-15 15:32:18.91232', NULL),
(16, 'Teclado', 'w757', 'Teclado', '42424', '353464', '5434364', '25364', '5e75w7', 'ytryytr', '', 23, '2025-02-15 11:33:09', 0, 1, '2025-02-15 15:33:09.85816', '2025-02-15 15:33:09.85816', NULL),
(17, 'Teclado', 'w757', 'Teclado', '42424', '353464', '5434364', '25364', '5e75w7', 'dad', '', 23, '2025-02-15 11:33:55', 0, 1, '2025-02-15 15:33:55.32683', '2025-02-15 15:33:55.32683', NULL),
(18, 'Teclado', 'w757', 'Teclado', '42424', '353464', '5434364', '25364', '5e75w7', '', '', 1, '2025-02-15 11:35:36', 0, 1, '2025-02-15 15:35:36.29118', '2025-02-15 15:35:36.29118', NULL),
(19, 'Teclado', 'w757', 'Teclado', '42424', '353464', '5434364', '25364', '5e75w7', '', '', 23, '2025-02-15 11:36:01', 1, 1, '2025-02-15 15:36:01.99274', '2025-03-13 18:27:15.46575', NULL),
(20, 'Teclado 2', 'w757', 'Teclado2', '42424', '353464', '5434364', '25364', '5e75w7', '', '', 2, '2025-02-15 11:37:29', 1, 1, '2025-02-15 15:37:29.90442', '2025-02-15 15:37:29.90442', NULL),
(21, 'Almacen 2', 'wrywyuju', 'Almacen 1', 'atetyrsy', 'adsvsdaf', 'sryydyu', 'adgaghga', 'wrysah', 'gagay354', '', 1, '2025-03-08 11:27:31', 1, 1, '2025-03-08 15:27:31.94846', '2025-03-08 15:27:31.94846', NULL),
(22, 'Almacen 2', 'wrywyuju', 'Almacen 1', 'atetyrsy', 'adsvsdaf', 'sryydyu', 'adgaghga', 'wrysah', 'dfjdjkd', '5555555', 2, '2025-03-08 11:39:12', 1, 1, '2025-03-08 15:39:12.53728', '2025-03-08 15:39:12.53728', NULL),
(23, 'Silla', 'wrywyuju', 'Almacen 1', 'atetyrsy', 'adsvsdaf', 'sryydyu', 'adgaghga', 'wrysah', 'dfjdjkd', '1111111', 2, '2025-03-08 11:41:56', 1, 1, '2025-03-08 15:41:56.31085', '2025-03-08 15:41:56.31085', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fechacreada` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `create_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  `update_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `delete_at` timestamp(5) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `fechacreada`, `idusuario`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Nuevo', 'Nuevo', '2025-02-08 09:42:35', 1, '2025-02-10 21:42:02.62964', '2025-02-12 19:37:53.10508', NULL),
(2, 'Usados', 'Usados', '2025-02-08 09:42:54', 1, '2025-02-10 21:42:02.62964', '2025-02-12 19:37:58.97153', NULL),
(3, 'Defectuoso', 'Defectuoso', '2025-02-08 11:36:36', 1, '2025-02-10 21:42:02.62964', '2025-02-12 19:38:04.61356', NULL),
(23, 'Dañados', 'Dañados', '2025-02-11 13:37:49', NULL, '2025-02-11 19:37:49.53183', '2025-02-12 19:59:18.33953', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `fechacreada` datetime NOT NULL,
  `idusuario` varchar(45) NOT NULL,
  `create_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  `update_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `delete_at` timestamp(5) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `nombre`, `descripcion`, `fechacreada`, `idusuario`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Administración', 'administración', '2020-01-18 00:00:00', '1', '2025-02-10 21:42:41.38765', '2025-02-10 21:42:41.38765', NULL),
(2, 'Informática', 'informática', '2020-01-19 00:15:24', '1', '2025-02-10 21:42:41.38765', '2025-02-10 21:42:41.38765', NULL),
(3, 'Logística', 'Logística', '2020-01-28 21:24:52', '1', '2025-02-10 21:42:41.38765', '2025-02-11 19:23:33.72541', NULL),
(11, 'Almacen', 'Almacen', '2025-02-12 15:05:42', '1', '2025-02-12 19:05:42.48037', '2025-02-12 19:05:42.48037', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `identrada` int(11) NOT NULL,
  `idorganizacion` int(11) NOT NULL,
  `idtienda` int(11) NOT NULL,
  `idalmacen` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` varchar(255) NOT NULL,
  `idmac` int(11) NOT NULL,
  `idserial` int(11) NOT NULL,
  `update_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `delete_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`identrada`, `idorganizacion`, `idtienda`, `idalmacen`, `idarticulo`, `cantidad`, `idmac`, `idserial`, `update_at`, `delete_at`) VALUES
(20, 2, 18, 1, 21, '1000', 14, 16, '2025-03-13 20:03:41.115148', NULL),
(22, 3, 49, 2, 22, '1000', 23, 14, '2025-03-13 20:03:41.115148', NULL),
(54, 7, 47, 3, 11, '400', 9, 19, '2025-03-13 20:03:41.115148', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizacion`
--

CREATE TABLE `organizacion` (
  `idorganizacion` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fechacreada` datetime DEFAULT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizacion`
--

INSERT INTO `organizacion` (`idorganizacion`, `nombre`, `descripcion`, `fechacreada`, `createdate`, `update_at`, `delete_at`) VALUES
(2, 'Organización 1', 'Organización 1', '2025-02-14 17:11:56', '2025-02-14 17:11:56', '2025-02-15 09:30:44', NULL),
(3, 'Organización 2', 'Organización 2', '2025-02-14 17:24:52', '2025-02-14 17:24:52', NULL, NULL),
(7, 'Organización 3', 'Organización 3', '2025-02-15 09:39:08', '2025-02-15 09:39:08', NULL, NULL),
(8, 'Organización 4', 'Organización 4', '2025-02-15 12:49:47', '2025-02-15 12:49:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `idtienda` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `idorganizacion` int(11) DEFAULT NULL,
  `fechacreada` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`idtienda`, `nombre`, `descripcion`, `idorganizacion`, `fechacreada`, `idusuario`, `createdate`, `update_at`, `delete_at`) VALUES
(18, 'Alkosto', 'Alkosto', 2, NULL, 0, '2025-02-15 10:03:20', NULL, NULL),
(47, 'Alkosto 2', 'Alkosto 2', 3, NULL, 1, '2025-02-15 13:08:16', '2025-03-06 16:20:03', NULL),
(49, 'Alkosto 1', 'Alkosto 1', 2, '2025-03-06 14:56:49', 1, '2025-03-06 14:56:49', '2025-03-06 14:57:01', NULL),
(51, 'Almacen 3', 'Almacen 3', 7, '2025-03-06 16:20:20', 1, '2025-03-06 16:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idtipousuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `fechacreada` datetime NOT NULL,
  `idusuario` varchar(45) NOT NULL,
  `create_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  `update_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `delete_at` timestamp(5) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idtipousuario`, `nombre`, `descripcion`, `fechacreada`, `idusuario`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Administrador', 'administración', '2020-01-18 00:00:00', '1', '2025-02-10 21:43:22.57066', '2025-02-10 21:43:22.57066', NULL),
(2, 'Usuario', 'Usuario', '2020-01-19 00:30:13', '1', '2025-02-10 21:43:22.57066', '2025-02-10 21:43:22.57066', NULL),
(3, 'Invitado', 'Invitado', '0000-00-00 00:00:00', '1', '2025-02-10 21:43:22.57066', '2025-02-10 21:43:22.57066', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `idtipousuario` int(11) NOT NULL,
  `password` varchar(160) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fechacreado` datetime NOT NULL,
  `usuariocreado` varchar(45) NOT NULL,
  `create_at` datetime(5) NOT NULL DEFAULT current_timestamp(5),
  `update_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `delete_at` timestamp(5) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `apellidos`, `login`, `iddepartamento`, `idtipousuario`, `password`, `estado`, `fechacreado`, `usuariocreado`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, 1, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1, '2020-01-18 00:00:00', 'admin', '2025-02-10 15:13:29.78346', '2025-02-10 19:15:47.79318', '2025-02-10 19:16:32.33847'),
(18, 'Usuario', 'Uasuario', 'usuario', 2, 2, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1, '2025-02-10 12:40:05', 'Usuario', '2025-02-10 15:13:29.78346', '2025-03-06 19:00:46.14707', '2025-02-10 19:16:32.33847'),
(23, 'Invitado', 'Invitado', 'invitado', 2, 3, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1, '2025-03-06 15:46:50', 'Invitado', '2025-03-06 15:46:50.72309', '2025-03-06 19:46:50.72309', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`idalmacen`),
  ADD KEY `id_tienda` (`idtienda`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`identrada`),
  ADD UNIQUE KEY `idcodigoArti` (`idarticulo`),
  ADD UNIQUE KEY `idarticulo` (`idarticulo`),
  ADD UNIQUE KEY `idmac` (`idmac`),
  ADD UNIQUE KEY `idserial` (`idserial`),
  ADD UNIQUE KEY `idtienda` (`idtienda`),
  ADD UNIQUE KEY `idorganizacion` (`idorganizacion`),
  ADD UNIQUE KEY `idalmacen` (`idalmacen`);

--
-- Indices de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  ADD PRIMARY KEY (`idorganizacion`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`idtienda`),
  ADD KEY `id_orga` (`idorganizacion`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idtipousuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `fk_departamento` (`iddepartamento`),
  ADD KEY `fk_tiposusario` (`idtipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `idalmacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `identrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  MODIFY `idorganizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `idtienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idtipousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`idtienda`) REFERENCES `tienda` (`idtienda`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `entrada_ibfk_2` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrada_ibfk_3` FOREIGN KEY (`idserial`) REFERENCES `articulo` (`idarticulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrada_ibfk_4` FOREIGN KEY (`idmac`) REFERENCES `articulo` (`idarticulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrada_ibfk_5` FOREIGN KEY (`idorganizacion`) REFERENCES `organizacion` (`idorganizacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrada_ibfk_6` FOREIGN KEY (`idtienda`) REFERENCES `tienda` (`idtienda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrada_ibfk_7` FOREIGN KEY (`idalmacen`) REFERENCES `almacen` (`idalmacen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`idorganizacion`) REFERENCES `organizacion` (`idorganizacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`idtipousuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
