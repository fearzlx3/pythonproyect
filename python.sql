-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-04-2020 a las 22:48:57
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `python`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `Rut_paciente` varchar(13) NOT NULL,
  `Nombre_paciente` varchar(150) DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`Rut_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`Rut_paciente`, `Nombre_paciente`, `Fecha_nacimiento`) VALUES
(' 18411130-6', 'Iskra Mandiola', '2020-04-15'),
('10102347-8', 'juan rioseco', '2020-04-23'),
('10222291-1', 'Laura Elgueta', '2020-04-18'),
('11830575-2', 'Gerardo Cea', '2000-02-24'),
('12233445', 'victor rioseco', '2018-06-05'),
('1233', 'dada', '2020-04-14'),
('1234', '323', '2020-04-14'),
('12568394-0', 'erefscfs', '2020-04-23'),
('13341', 'afsgsffasdaw', '2020-03-28'),
('18107913-4', 'fabian rioseco', '2020-04-22'),
('18411130-6', 'Iskra Mandiola', '2020-04-23'),
('18811069-K', 'feaf', '2020-04-21'),
('18811069k', 'vianka', '2020-03-02'),
('18814447', '565', '2020-04-08'),
('18814447-0', 'feaf', '2020-04-21'),
('188144470', 'boris rioseco', '2020-04-23'),
('18823242', 'boris rioseco', '2020-04-14'),
('2', 'f', '2020-04-08'),
('24856104-1', 'Gerardo Catalan', '2018-04-10'),
('4', 'ff', '2020-04-15'),
('456', 'mmmmm', '2020-04-14'),
('45677', 'mmmmm', '2020-04-22'),
('victor', '11221381', '2019-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_v`
--

DROP TABLE IF EXISTS `paciente_v`;
CREATE TABLE IF NOT EXISTS `paciente_v` (
  `Rut_pv` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `Enfermedad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha_vacuna` date NOT NULL,
  KEY `Rut_pv` (`Rut_pv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `paciente_v`
--

INSERT INTO `paciente_v` (`Rut_pv`, `Enfermedad`, `Fecha_vacuna`) VALUES
('188144470', 'peste negra', '2020-03-31'),
('13341', 'malaria', '2020-03-31'),
('18811069k', 'hermosura', '2020-03-31'),
('13341', '', '2020-04-01'),
('13341', '', '2020-04-01'),
('13341', '', '2020-04-01'),
('18811069k', '', '2020-04-01'),
('18811069k', '', '2020-04-01'),
('13341', 'amargura', '2020-04-01'),
('13341', 'amargura', '2020-04-01'),
('13341', '', '2020-04-01'),
('13341', '', '2020-04-01'),
('13341', '', '2020-04-01'),
('18811069k', 'sfsefsfe', '2020-04-01'),
('18811069k', 'sfsefsfe', '2020-04-01'),
('18811069k', 'sfsefsfe', '2020-04-01'),
('18811069k', 'sfsefsfe', '2020-04-01'),
('188144470', 'jjyjyjy', '2020-04-01'),
('188144470', 'jjyjyjy', '2020-04-01'),
('188144470', 'jjyjyjy', '2020-04-01'),
('13341', 'malaria', '2020-04-01'),
('18811069k', 'malaria', '2020-04-01'),
('13341', '76433', '2020-04-01'),
('18811069k', 'hermosura', '2020-04-01'),
('18811069k', '', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'sars', '2020-04-01'),
('13341', 'peste negra', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('188144470', 'sars', '2020-04-01'),
('victor', 'hepatitis', '2020-04-01'),
('victor', 'hepatitis', '2020-04-01'),
('12233445', 'hepatitis', '2020-04-01'),
('12233445', 'hepatitis', '2020-04-01'),
('12233445', 'hepatitis', '2020-04-01'),
('12233445', 'hepatitis', '2020-04-01'),
('12233445', 'coronavirus', '2020-04-01'),
('18814447-0', 'hepatitis', '2020-04-02'),
('18107913-4', 'influenza', '2020-04-02'),
('10102347-8', 'enojo', '2020-04-02'),
('12233445', 'covid19', '2020-04-02'),
('11830575-2', 'coronavirus', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'amargura', '2020-04-02'),
('11830575-2', 'Coronavirus', '2020-04-02'),
('11830575-2', 'covi-19', '2020-04-02'),
('11830575-2', 'Malaria', '2020-04-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

DROP TABLE IF EXISTS `vacuna`;
CREATE TABLE IF NOT EXISTS `vacuna` (
  `Enfermedad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Enfermedad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `vacuna`
--

INSERT INTO `vacuna` (`Enfermedad`) VALUES
('Coronavirus'),
('covi-19'),
('Malaria');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
