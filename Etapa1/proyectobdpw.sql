-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2020 a las 12:24:09
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
-- Base de datos: `proyectobdpw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente1`
--

CREATE TABLE `cliente1` (
  `RUTCl` varchar(12) NOT NULL COMMENT 'rut del cliente',
  `NombreCl` varchar(20) NOT NULL COMMENT 'nombre del cliente',
  `ApellidoCl` varchar(20) NOT NULL COMMENT 'apellido del cliente',
  `DireccionCl` varchar(50) NOT NULL COMMENT 'direccion del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente1`
--

INSERT INTO `cliente1` (`RUTCl`, `NombreCl`, `ApellidoCl`, `DireccionCl`) VALUES
('11111111-1', 'nombre1', 'apellido1', 'direccion1'),
('11221122-1', 'nombre10', 'apellido10', 'direccion10'),
('22222222-2', 'nombre2', 'apellido2', 'direccion2'),
('22332233-2', 'nombre11', 'apellido11', 'direccion11'),
('33333333-3', 'nombre3', 'apellido3', 'direccion3'),
('33443344-3', 'nombre12', 'apellido12', 'direccion12'),
('44444444-4', 'nombre4', 'apellido4', 'direccion4'),
('44554455-4', 'nombre13', 'apellido13', 'direccion13'),
('55555555-5', 'nombre5', 'apellido5', 'direccion5'),
('55665566-5', 'nombre14', 'apellido14', 'direccion14'),
('66666666-6', 'nombre6', 'apellido6', 'direccion6'),
('66776677-6', 'nombre15', 'apellido15', 'direccion15'),
('77777777-7', 'nombre7', 'apellido7', 'direccion7'),
('88888888-8', 'nombre8', 'apellido8', 'direccion8'),
('99999999-9', 'nombre9', 'apellido9', 'direccion9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente2`
--

CREATE TABLE `cliente2` (
  `RUTCl` varchar(12) NOT NULL COMMENT 'rut del cliente',
  `telefonosCL` int(10) NOT NULL COMMENT 'telefonos del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente2`
--

INSERT INTO `cliente2` (`RUTCl`, `telefonosCL`) VALUES
('11111111-1', 111111111),
('11221122-1', 112211221),
('22222222-2', 222222222),
('22332233-2', 223322332),
('33333333-3', 333333333),
('33443344-3', 334433443),
('44444444-4', 444444444),
('44554455-4', 445544554),
('55555555-5', 555555555),
('55665566-5', 556655665),
('66666666-6', 666666666),
('66776677-6', 667766776),
('77777777-7', 777777777),
('88888888-8', 888888888),
('99999999-9', 999999999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `NumFac` int(3) NOT NULL COMMENT 'numero de la factura del cliente',
  `Fecha` date NOT NULL COMMENT 'fecha en la que se hizo la compra',
  `RUTT` varchar(12) NOT NULL COMMENT 'rut del vendedor asociado a la factura'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`NumFac`, `Fecha`, `RUTT`) VALUES
(1, '0000-00-00', '112211221'),
(2, '0000-00-00', '223322332'),
(3, '0000-00-00', '334433443'),
(4, '0000-00-00', '445544554'),
(5, '0000-00-00', '556655665'),
(6, '0000-00-00', '667766776');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe1`
--

CREATE TABLE `jefe1` (
  `RUTje` varchar(12) NOT NULL COMMENT 'Rut del jefe',
  `Nombreje` varchar(20) NOT NULL COMMENT 'nombre del jefe',
  `Apellidoje` varchar(20) NOT NULL COMMENT 'apellido del jefe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jefe1`
--

INSERT INTO `jefe1` (`RUTje`, `Nombreje`, `Apellidoje`) VALUES
('00000000-0', 'nombrejefe1', 'apellidojefe1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe2`
--

CREATE TABLE `jefe2` (
  `RUTje` varchar(12) NOT NULL COMMENT 'Rut del jefe',
  `Telefonoje` int(10) NOT NULL COMMENT 'numero telefonico del jefe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jefe2`
--

INSERT INTO `jefe2` (`RUTje`, `Telefonoje`) VALUES
('00000000-0', 101010101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `IdPlan` tinyint(1) NOT NULL COMMENT 'verificador de los planes',
  `Nombre` varchar(20) NOT NULL COMMENT 'nombre del plan',
  `Descripcion` varchar(70) NOT NULL COMMENT 'descipcion del plan',
  `Precio` smallint(5) NOT NULL COMMENT 'precio del plan',
  `Mas contratado` varchar(20) NOT NULL COMMENT 'plan con mayor taza de contratacion',
  `RUTCl` varchar(12) NOT NULL COMMENT 'rut del cliente asociado al plan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`IdPlan`, `Nombre`, `Descripcion`, `Precio`, `Mas contratado`, `RUTCl`) VALUES
(10, 'plan1', 'descripcion1', 100, '', '11111111-1'),
(20, 'plan2', 'descripcion2', 200, '', '22222222-2'),
(30, 'plan3', 'descripcion3', 300, '', '33333333-3'),
(40, 'plan4', 'descripcion4', 400, '', '44444444-4'),
(50, 'plan5', 'descripcion5', 500, '', '55555555-5'),
(60, 'plan6', 'descripcion6', 600, '', '66666666-6'),
(70, 'plan7', 'descripcion7', 700, '', '77777777-7'),
(80, 'plan8', 'descripcion8', 800, '', '88888888-8'),
(90, 'plan9', 'descripcion9', 900, '', '99999999-9'),
(100, 'plan10', 'descripcion10', 1000, '', '11221122-1'),
(110, 'plan11', 'descripcion11', 1100, '', '22332233-2'),
(120, 'plan12', 'descripcion12', 1200, '', '33443344-3'),
(127, 'plan13', 'descripcion13', 1300, '', '44554455-4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio de instalacion`
--

CREATE TABLE `servicio de instalacion` (
  `RUTT` varchar(12) NOT NULL COMMENT 'dijito verificador del tecnico asociado a la instalacion del servicio',
  `Area de servicio` enum('Telefonia','Internet','TVCable') NOT NULL COMMENT 'tipo de tecnico qeu se necesitara para el servicio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `RUTT` varchar(12) NOT NULL COMMENT 'rut del tecnico',
  `especialidad` varchar(20) NOT NULL COMMENT 'especialidad del soporte del tecnico'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tecnico`
--

INSERT INTO `tecnico` (`RUTT`, `especialidad`) VALUES
('111111111', 'especialidad1'),
('222222222', 'especialidad2'),
('333333333', 'especialidad3'),
('444444444', 'especialidad3'),
('555555555', 'especialidad2'),
('666666666', 'especialidad1'),
('777777777', 'especialidad2'),
('888888888', 'especialidad3'),
('999999999', 'especialidad1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador1`
--

CREATE TABLE `trabajador1` (
  `RUTT` varchar(12) NOT NULL COMMENT 'rut del trabajador',
  `NombreT` varchar(20) NOT NULL COMMENT 'nombre del trabajador',
  `ApellidoT` varchar(20) NOT NULL COMMENT 'apellido del trabajador',
  `RUTje` varchar(12) NOT NULL COMMENT 'rut del jefe asociado al trabajador'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador1`
--

INSERT INTO `trabajador1` (`RUTT`, `NombreT`, `ApellidoT`, `RUTje`) VALUES
('111111111', 'Nombretrabajador1', 'Apellidotrabajador1', '00000000-0'),
('112211221', 'Nombretrabajador10', 'Apellidotrabajador10', '00000000-0'),
('222222222', 'Nombretrabajador2', 'Apellidotrabajador2', '00000000-0'),
('223322332', 'Nombretrabajador11', 'Apellidotrabajador11', '00000000-0'),
('333333333', 'Nombretrabajador3', 'Apellidotrabajador3', '00000000-0'),
('334433443', 'Nombretrabajador12', 'Apellidotrabajador12', '00000000-0'),
('444444444', 'Nombretrabajador4', 'Apellidotrabajador4', '00000000-0'),
('445544554', 'Nombretrabajador13', 'Apellidotrabajador13', '00000000-0'),
('555555555', 'Nombretrabajador5', 'Apellidotrabajador5', '00000000-0'),
('556655665', 'Nombretrabajador14', 'Apellidotrabajador14', '00000000-0'),
('666666666', 'Nombretrabajador6', 'Apellidotrabajador6', '00000000-0'),
('667766776', 'Nombretrabajador15', 'Apellidotrabajador15', '00000000-0'),
('777777777', 'Nombretrabajador7', 'Apellidotrabajador7', '00000000-0'),
('888888888', 'Nombretrabajador8', 'Apellidotrabajador8', '00000000-0'),
('999999999', 'Nombretrabajador9', 'Apellidotrabajador9', '00000000-0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador2`
--

CREATE TABLE `trabajador2` (
  `RUTT` varchar(12) NOT NULL COMMENT 'Rut del trabajador',
  `TelefonosT` int(10) NOT NULL COMMENT 'Telefono trabajador'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador2`
--

INSERT INTO `trabajador2` (`RUTT`, `TelefonosT`) VALUES
('111111111', 111111111),
('112211221', 112211221),
('222222222', 222222222),
('223322332', 223322332),
('333333333', 333333333),
('334433443', 334433443),
('444444444', 444444444),
('445544554', 445544554),
('555555555', 555555555),
('556655665', 556655665),
('666666666', 666666666),
('667766776', 667766776),
('777777777', 777777777),
('888888888', 888888888),
('999999999', 999999999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `RUTT` varchar(12) NOT NULL COMMENT 'Rut del vendedor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`RUTT`) VALUES
('112211221'),
('223322332'),
('334433443'),
('445544554'),
('556655665'),
('667766776');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NºVenta` int(5) NOT NULL COMMENT 'numero de ventas que se han generado',
  `DireccionVcl` varchar(20) NOT NULL COMMENT 'direccion del cliente',
  `NombreVcl` varchar(20) NOT NULL COMMENT 'nombre del cliente',
  `ApellidoVcl` varchar(20) NOT NULL COMMENT 'apellido del cliente',
  `IdPlan` tinyint(1) NOT NULL COMMENT 'digito verificador del plan asociado a la venta',
  `RUTT` varchar(12) NOT NULL COMMENT 'dijito verificador del tecnico asociado '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente1`
--
ALTER TABLE `cliente1`
  ADD PRIMARY KEY (`RUTCl`);

--
-- Indices de la tabla `cliente2`
--
ALTER TABLE `cliente2`
  ADD PRIMARY KEY (`RUTCl`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`NumFac`),
  ADD KEY `RUTT` (`RUTT`);

--
-- Indices de la tabla `jefe1`
--
ALTER TABLE `jefe1`
  ADD PRIMARY KEY (`RUTje`);

--
-- Indices de la tabla `jefe2`
--
ALTER TABLE `jefe2`
  ADD PRIMARY KEY (`RUTje`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`IdPlan`),
  ADD KEY `RUTCl` (`RUTCl`);

--
-- Indices de la tabla `servicio de instalacion`
--
ALTER TABLE `servicio de instalacion`
  ADD PRIMARY KEY (`RUTT`),
  ADD KEY `RUTT` (`RUTT`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`RUTT`),
  ADD KEY `RUTT` (`RUTT`);

--
-- Indices de la tabla `trabajador1`
--
ALTER TABLE `trabajador1`
  ADD PRIMARY KEY (`RUTT`),
  ADD KEY `RUTje` (`RUTje`);

--
-- Indices de la tabla `trabajador2`
--
ALTER TABLE `trabajador2`
  ADD PRIMARY KEY (`RUTT`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`RUTT`),
  ADD KEY `RUTT` (`RUTT`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NºVenta`),
  ADD KEY `IdPlan` (`IdPlan`),
  ADD KEY `RUTT` (`RUTT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `NumFac` int(3) NOT NULL AUTO_INCREMENT COMMENT 'numero de la factura del cliente', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NºVenta` int(5) NOT NULL AUTO_INCREMENT COMMENT 'numero de ventas que se han generado', AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`RUTT`) REFERENCES `vendedor` (`RUTT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`RUTCl`) REFERENCES `cliente1` (`RUTCl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicio de instalacion`
--
ALTER TABLE `servicio de instalacion`
  ADD CONSTRAINT `servicio de instalacion_ibfk_1` FOREIGN KEY (`RUTT`) REFERENCES `tecnico` (`RUTT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD CONSTRAINT `tecnico_ibfk_1` FOREIGN KEY (`RUTT`) REFERENCES `trabajador1` (`RUTT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `trabajador1`
--
ALTER TABLE `trabajador1`
  ADD CONSTRAINT `trabajador1_ibfk_1` FOREIGN KEY (`RUTje`) REFERENCES `jefe1` (`RUTje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`RUTT`) REFERENCES `trabajador1` (`RUTT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`IdPlan`) REFERENCES `plan` (`IdPlan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`RUTT`) REFERENCES `servicio de instalacion` (`RUTT`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
