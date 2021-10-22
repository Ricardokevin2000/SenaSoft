-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2021 a las 17:37:46
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `senasoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `car_cargo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `car_cargo`) VALUES
(1, 'Enfermera'),
(2, 'Profesional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `emp_cedula` varchar(30) DEFAULT NULL,
  `emp_nombre` varchar(30) DEFAULT NULL,
  `emp_apellido` varchar(30) DEFAULT NULL,
  `emp_telefono` int(11) DEFAULT NULL,
  `cargo_id_cargo` int(11) DEFAULT NULL,
  `jornada_id_jornada` int(11) DEFAULT NULL,
  `turno_id_turno` int(11) DEFAULT NULL,
  `especialidad_id_especialidad` int(11) DEFAULT NULL,
  `meses_id_meses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `emp_cedula`, `emp_nombre`, `emp_apellido`, `emp_telefono`, `cargo_id_cargo`, `jornada_id_jornada`, `turno_id_turno`, `especialidad_id_especialidad`, `meses_id_meses`) VALUES
(2, '987654321', 'luisa', 'casillas ', 321547364, 1, 1, 1, 2, 5),
(3, '2315642137', 'luisa', 'Peralta', 32134434, 1, 1, 2, 3, 8),
(4, '9086345321', 'maria', 'benitez', 42423444, 1, 2, 3, 4, 5),
(5, '4531325765', 'paula', 'ruiz', 543534534, 1, 2, 4, 2, 2),
(6, '123', 'lucas', 'ruiz', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `esp_especialidad` varchar(30) DEFAULT NULL,
  `servicio_id_servicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `esp_especialidad`, `servicio_id_servicio`) VALUES
(1, 'paciente ventilado', 1),
(2, 'Paciente Infante(niñ@) ', 2),
(3, 'Administracion de medicamentos', 3),
(4, 'General', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horariosdemesescon28dias`
--

CREATE TABLE `horariosdemesescon28dias` (
  `id_horhorariosdemesescon28dias` int(11) NOT NULL,
  `hor_dia1` varchar(30) DEFAULT NULL,
  `hor_dia2` varchar(30) DEFAULT NULL,
  `hor_dia3` varchar(30) DEFAULT NULL,
  `hor_dia4` varchar(30) DEFAULT NULL,
  `hor_dia5` varchar(30) DEFAULT NULL,
  `hor_dia6` varchar(30) DEFAULT NULL,
  `hor_dia7` varchar(30) DEFAULT NULL,
  `hor_dia8` varchar(30) DEFAULT NULL,
  `hor_dia9` varchar(30) DEFAULT NULL,
  `hor_dia10` varchar(30) DEFAULT NULL,
  `hor_dia11` varchar(30) DEFAULT NULL,
  `hor_dia12` varchar(30) DEFAULT NULL,
  `hor_dia13` varchar(30) DEFAULT NULL,
  `hor_dia14` varchar(30) DEFAULT NULL,
  `hor_dia15` varchar(30) DEFAULT NULL,
  `hor_dia16` varchar(30) DEFAULT NULL,
  `hor_dia17` varchar(30) DEFAULT NULL,
  `hor_dia18` varchar(30) DEFAULT NULL,
  `hor_dia19` varchar(30) DEFAULT NULL,
  `hor_dia20` varchar(30) DEFAULT NULL,
  `hor_dia21` varchar(30) DEFAULT NULL,
  `hor_dia22` varchar(30) DEFAULT NULL,
  `hor_dia23` varchar(30) DEFAULT NULL,
  `hor_dia24` varchar(30) DEFAULT NULL,
  `hor_dia25` varchar(30) DEFAULT NULL,
  `hor_dia26` varchar(30) DEFAULT NULL,
  `hor_dia27` varchar(30) DEFAULT NULL,
  `hor_dia28` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horariosdemesescon28dias`
--

INSERT INTO `horariosdemesescon28dias` (`id_horhorariosdemesescon28dias`, `hor_dia1`, `hor_dia2`, `hor_dia3`, `hor_dia4`, `hor_dia5`, `hor_dia6`, `hor_dia7`, `hor_dia8`, `hor_dia9`, `hor_dia10`, `hor_dia11`, `hor_dia12`, `hor_dia13`, `hor_dia14`, `hor_dia15`, `hor_dia16`, `hor_dia17`, `hor_dia18`, `hor_dia19`, `hor_dia20`, `hor_dia21`, `hor_dia22`, `hor_dia23`, `hor_dia24`, `hor_dia25`, `hor_dia26`, `hor_dia27`, `hor_dia28`) VALUES
(1, 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D'),
(2, 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horariosdemesescon30dias`
--

CREATE TABLE `horariosdemesescon30dias` (
  `id_horhorariosdemesescon30dias` int(11) NOT NULL,
  `hor_dia1` varchar(30) DEFAULT NULL,
  `hor_dia2` varchar(30) DEFAULT NULL,
  `hor_dia3` varchar(30) DEFAULT NULL,
  `hor_dia4` varchar(30) DEFAULT NULL,
  `hor_dia5` varchar(30) DEFAULT NULL,
  `hor_dia6` varchar(30) DEFAULT NULL,
  `hor_dia7` varchar(30) DEFAULT NULL,
  `hor_dia8` varchar(30) DEFAULT NULL,
  `hor_dia9` varchar(30) DEFAULT NULL,
  `hor_dia10` varchar(30) DEFAULT NULL,
  `hor_dia11` varchar(30) DEFAULT NULL,
  `hor_dia12` varchar(30) DEFAULT NULL,
  `hor_dia13` varchar(30) DEFAULT NULL,
  `hor_dia14` varchar(30) DEFAULT NULL,
  `hor_dia15` varchar(30) DEFAULT NULL,
  `hor_dia16` varchar(30) DEFAULT NULL,
  `hor_dia17` varchar(30) DEFAULT NULL,
  `hor_dia18` varchar(30) DEFAULT NULL,
  `hor_dia19` varchar(30) DEFAULT NULL,
  `hor_dia20` varchar(30) DEFAULT NULL,
  `hor_dia21` varchar(30) DEFAULT NULL,
  `hor_dia22` varchar(30) DEFAULT NULL,
  `hor_dia23` varchar(30) DEFAULT NULL,
  `hor_dia24` varchar(30) DEFAULT NULL,
  `hor_dia25` varchar(30) DEFAULT NULL,
  `hor_dia26` varchar(30) DEFAULT NULL,
  `hor_dia27` varchar(30) DEFAULT NULL,
  `hor_dia28` varchar(30) DEFAULT NULL,
  `hor_dia29` varchar(30) DEFAULT NULL,
  `hor_dia30` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horariosdemesescon30dias`
--

INSERT INTO `horariosdemesescon30dias` (`id_horhorariosdemesescon30dias`, `hor_dia1`, `hor_dia2`, `hor_dia3`, `hor_dia4`, `hor_dia5`, `hor_dia6`, `hor_dia7`, `hor_dia8`, `hor_dia9`, `hor_dia10`, `hor_dia11`, `hor_dia12`, `hor_dia13`, `hor_dia14`, `hor_dia15`, `hor_dia16`, `hor_dia17`, `hor_dia18`, `hor_dia19`, `hor_dia20`, `hor_dia21`, `hor_dia22`, `hor_dia23`, `hor_dia24`, `hor_dia25`, `hor_dia26`, `hor_dia27`, `hor_dia28`, `hor_dia29`, `hor_dia30`) VALUES
(1, 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L'),
(2, 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horariosdemesescon31dias`
--

CREATE TABLE `horariosdemesescon31dias` (
  `id_horhorariosdemesescon31dias` int(11) NOT NULL,
  `hor_dia1` varchar(30) DEFAULT NULL,
  `hor_dia2` varchar(30) DEFAULT NULL,
  `hor_dia3` varchar(30) DEFAULT NULL,
  `hor_dia4` varchar(30) DEFAULT NULL,
  `hor_dia5` varchar(30) DEFAULT NULL,
  `hor_dia6` varchar(30) DEFAULT NULL,
  `hor_dia7` varchar(30) DEFAULT NULL,
  `hor_dia8` varchar(30) DEFAULT NULL,
  `hor_dia9` varchar(30) DEFAULT NULL,
  `hor_dia10` varchar(30) DEFAULT NULL,
  `hor_dia11` varchar(30) DEFAULT NULL,
  `hor_dia12` varchar(30) DEFAULT NULL,
  `hor_dia13` varchar(30) DEFAULT NULL,
  `hor_dia14` varchar(30) DEFAULT NULL,
  `hor_dia15` varchar(30) DEFAULT NULL,
  `hor_dia16` varchar(30) DEFAULT NULL,
  `hor_dia17` varchar(30) DEFAULT NULL,
  `hor_dia18` varchar(30) DEFAULT NULL,
  `hor_dia19` varchar(30) DEFAULT NULL,
  `hor_dia20` varchar(30) DEFAULT NULL,
  `hor_dia21` varchar(30) DEFAULT NULL,
  `hor_dia22` varchar(30) DEFAULT NULL,
  `hor_dia23` varchar(30) DEFAULT NULL,
  `hor_dia24` varchar(30) DEFAULT NULL,
  `hor_dia25` varchar(30) DEFAULT NULL,
  `hor_dia26` varchar(30) DEFAULT NULL,
  `hor_dia27` varchar(30) DEFAULT NULL,
  `hor_dia28` varchar(30) DEFAULT NULL,
  `hor_dia29` varchar(30) DEFAULT NULL,
  `hor_dia30` varchar(30) DEFAULT NULL,
  `hor_dia31` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horariosdemesescon31dias`
--

INSERT INTO `horariosdemesescon31dias` (`id_horhorariosdemesescon31dias`, `hor_dia1`, `hor_dia2`, `hor_dia3`, `hor_dia4`, `hor_dia5`, `hor_dia6`, `hor_dia7`, `hor_dia8`, `hor_dia9`, `hor_dia10`, `hor_dia11`, `hor_dia12`, `hor_dia13`, `hor_dia14`, `hor_dia15`, `hor_dia16`, `hor_dia17`, `hor_dia18`, `hor_dia19`, `hor_dia20`, `hor_dia21`, `hor_dia22`, `hor_dia23`, `hor_dia24`, `hor_dia25`, `hor_dia26`, `hor_dia27`, `hor_dia28`, `hor_dia29`, `hor_dia30`, `hor_dia31`) VALUES
(1, 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'L'),
(2, 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'L', 'L', 'D', 'D', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id_jornada` int(11) NOT NULL,
  `jor_jornada` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id_jornada`, `jor_jornada`) VALUES
(1, 'Dia'),
(2, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `log_usuario` varchar(30) DEFAULT NULL,
  `log_contrasena` varchar(30) DEFAULT NULL,
  `log_rol` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_login`, `log_usuario`, `log_contrasena`, `log_rol`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `id_meses` int(11) NOT NULL,
  `mes_mes` varchar(30) DEFAULT NULL,
  `horariosdemesescon31dias_id_horhorariosdemesescon31dias` int(11) DEFAULT NULL,
  `horariosdemesescon30dias_id_horhorariosdemesescon30dias` int(11) DEFAULT NULL,
  `horariosdemesescon28dias_id_horhorariosdemesescon28dias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`id_meses`, `mes_mes`, `horariosdemesescon31dias_id_horhorariosdemesescon31dias`, `horariosdemesescon30dias_id_horhorariosdemesescon30dias`, `horariosdemesescon28dias_id_horhorariosdemesescon28dias`) VALUES
(1, 'Enero', 1, NULL, NULL),
(2, 'Febrero', NULL, NULL, 2),
(3, 'Marzo', 2, NULL, NULL),
(4, 'Abril', NULL, 1, NULL),
(5, 'Mayo', 1, NULL, NULL),
(6, 'Junio', NULL, 1, NULL),
(7, 'Julio', 1, NULL, NULL),
(8, 'Agosto', 2, NULL, NULL),
(9, 'Septiembre', NULL, 2, NULL),
(10, 'Octubre', 2, NULL, NULL),
(11, 'Noviembre', NULL, 1, NULL),
(12, 'Diciembre', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `pac_cantidad` int(11) DEFAULT NULL,
  `pac_ventilados` int(11) DEFAULT NULL,
  `pac_niños12horas` int(11) DEFAULT NULL,
  `pac_niños24horas` int(11) DEFAULT NULL,
  `pac_medicamentos12horas` int(11) DEFAULT NULL,
  `pac_medicamentos24horas` int(11) DEFAULT NULL,
  `pac_general12horas` int(11) DEFAULT NULL,
  `pac_fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicios` int(11) NOT NULL,
  `ser_servicios` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicios`, `ser_servicios`) VALUES
(1, 'Neumología'),
(2, 'Servicio Para Niños Salud A Primera Infancia'),
(3, 'Farmacología '),
(4, 'Atención Integral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `tur_turno` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `tur_turno`) VALUES
(1, '7 Am - 7 Pm'),
(2, '9 Am - 9 Pm'),
(3, '7 Pm - 7 Am '),
(4, '9 Pm - 9 Am ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `cargo_id_cargo` (`cargo_id_cargo`),
  ADD KEY `jornada_id_jornada` (`jornada_id_jornada`),
  ADD KEY `turno_id_turno` (`turno_id_turno`),
  ADD KEY `especialidad_id_especialidad` (`especialidad_id_especialidad`),
  ADD KEY `meses_id_meses` (`meses_id_meses`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`),
  ADD KEY `servicio_id_servicio` (`servicio_id_servicio`);

--
-- Indices de la tabla `horariosdemesescon28dias`
--
ALTER TABLE `horariosdemesescon28dias`
  ADD PRIMARY KEY (`id_horhorariosdemesescon28dias`);

--
-- Indices de la tabla `horariosdemesescon30dias`
--
ALTER TABLE `horariosdemesescon30dias`
  ADD PRIMARY KEY (`id_horhorariosdemesescon30dias`);

--
-- Indices de la tabla `horariosdemesescon31dias`
--
ALTER TABLE `horariosdemesescon31dias`
  ADD PRIMARY KEY (`id_horhorariosdemesescon31dias`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id_jornada`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indices de la tabla `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`id_meses`),
  ADD KEY `horariosdemesescon31dias_id_horhorariosdemesescon31dias` (`horariosdemesescon31dias_id_horhorariosdemesescon31dias`),
  ADD KEY `horariosdemesescon30dias_id_horhorariosdemesescon30dias` (`horariosdemesescon30dias_id_horhorariosdemesescon30dias`),
  ADD KEY `horariosdemesescon28dias_id_horhorariosdemesescon28dias` (`horariosdemesescon28dias_id_horhorariosdemesescon28dias`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicios`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `horariosdemesescon28dias`
--
ALTER TABLE `horariosdemesescon28dias`
  MODIFY `id_horhorariosdemesescon28dias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `horariosdemesescon30dias`
--
ALTER TABLE `horariosdemesescon30dias`
  MODIFY `id_horhorariosdemesescon30dias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `horariosdemesescon31dias`
--
ALTER TABLE `horariosdemesescon31dias`
  MODIFY `id_horhorariosdemesescon31dias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id_jornada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `meses`
--
ALTER TABLE `meses`
  MODIFY `id_meses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`cargo_id_cargo`) REFERENCES `cargo` (`id_cargo`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`jornada_id_jornada`) REFERENCES `jornada` (`id_jornada`),
  ADD CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`turno_id_turno`) REFERENCES `turno` (`id_turno`),
  ADD CONSTRAINT `empleado_ibfk_4` FOREIGN KEY (`especialidad_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`),
  ADD CONSTRAINT `empleado_ibfk_5` FOREIGN KEY (`meses_id_meses`) REFERENCES `meses` (`id_meses`);

--
-- Filtros para la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD CONSTRAINT `especialidad_ibfk_1` FOREIGN KEY (`servicio_id_servicio`) REFERENCES `servicios` (`id_servicios`);

--
-- Filtros para la tabla `meses`
--
ALTER TABLE `meses`
  ADD CONSTRAINT `meses_ibfk_1` FOREIGN KEY (`horariosdemesescon31dias_id_horhorariosdemesescon31dias`) REFERENCES `horariosdemesescon31dias` (`id_horhorariosdemesescon31dias`),
  ADD CONSTRAINT `meses_ibfk_2` FOREIGN KEY (`horariosdemesescon30dias_id_horhorariosdemesescon30dias`) REFERENCES `horariosdemesescon30dias` (`id_horhorariosdemesescon30dias`),
  ADD CONSTRAINT `meses_ibfk_3` FOREIGN KEY (`horariosdemesescon28dias_id_horhorariosdemesescon28dias`) REFERENCES `horariosdemesescon28dias` (`id_horhorariosdemesescon28dias`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
