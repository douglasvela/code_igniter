-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2018 a las 02:48:57
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mtps`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vyp_actividades`
--

CREATE TABLE `vyp_actividades` (
  `id_vyp_actividades` int(9) NOT NULL,
  `nombre_vyp_actividades` varchar(125) NOT NULL,
  `depende_vyp_actividades` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vyp_actividades`
--

INSERT INTO `vyp_actividades` (`id_vyp_actividades`, `nombre_vyp_actividades`, `depende_vyp_actividades`) VALUES
(1, 'INSPECCIÓN  PROGRAMADA', 0),
(2, 'REINSPECCIÓN ', 0),
(3, 'CAPACITACIÓN', 0),
(4, 'PROYECTO', 0),
(5, 'VISITAS TÉCNICAS DE HIGIENE OCUPACIONAL', 0),
(6, 'NOTIFICAR', 0),
(7, 'TRANSPORTANDO AL PERSONAL', 0),
(8, 'FERIA DE EMPLEO', 0),
(9, 'MANTENIMIENTO Y REPARACIÓN', 0),
(10, 'ENTREGA DE DOCUMENTACIÓN ', 0),
(11, 'ENTREGA DE INSUMOS CENTROS RECREATIVOS', 0),
(12, 'SUPERVISIÓN DE OBRA', 0),
(13, 'RETIRO DE VALE COMBUSTIBLE', 0),
(14, 'RETIRO DE PAPELERIA', 0),
(15, 'REUNIONES', 0),
(16, 'HACIENDO TURNO DE VIGILANCIA', 0),
(17, 'SOPORTE TÉCNICO', 0),
(18, 'RECOLECCIÓN DE FONDOS A LOS CENTROS RECREATIVOS DE MTPS', 0),
(19, 'ENTREGAR OFICIO DE EMBARGO A LOS JUZGADOS', 0),
(20, 'TOMA MEDIDA DE UNIFORMES DEL PERSONAL  MTPS', 0),
(21, 'SEGUIMIENTO DEL FUNCIONAMIENTO DE COMITÉ Y VERIFICACIÓN DE CUMPLIMIENTO DE ART. 10  DEL   R.G.P.L.T', 0),
(22, 'INTERMEDIACIÓN LABORAL', 0),
(23, 'ENTREGA DE ACREDITACIONES DE COMITÉ DE SEGURIDAD Y SALUD OCUPACIONAL', 0),
(24, 'ASISTENCIA A ENTREGA DE JEFATURA ', 0),
(25, 'ARQUEO DE CAJA CHICA, REVISIÓN DE DOCUMENTACIÓN ANUAL', 0),
(26, 'REALIZANDO ASESORIA  EN LAS OFICINAS DEPARTAMENTALES MTPS', 0),
(27, 'AUDITORIA INTERNA', 0),
(28, 'ENTREGA DE PAQUETE DE MATERNIDAD,CLAUSULA N°56 DEL CONTRATO COLECTIVO MTPS', 0),
(29, 'ENTREGA DE UNIFORMES AL PERSONAL  MTPS', 0),
(30, 'ENTREGA DE CERTIFICADOS DEL SUPERMERCADO, CLAUSULA N°57 DEL CONTRATO  COLECTIVO  MTPS', 0),
(31, 'REPRESENTACIÓN POR FALLECIMIENTO DE LA TRABAJADORA O TRABAJADOR', 0),
(32, 'INVENTARIO ANUAL DE ACTIVO FIJO ', 0),
(33, 'PROGRAMA DE REFUERZO DE CAPACIDADES TÉCNICAS NUEVAS EN LOS FORMATOS ICS-AG', 0),
(34, 'CENSO DE CONTRATACION COLECTIVA DE TRABAJO', 0),
(35, 'CHARLAS INFORMATIVAS SOBRE ENCUESTAS DE ESTABLECIMIENTOS EMPLEOS,HORAS ,SALARIOS', 0),
(36, 'PROTOCOLO  INSTITUCIONALES Y GUBERNAMENTALES', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vyp_actividades`
--
ALTER TABLE `vyp_actividades`
  ADD PRIMARY KEY (`id_vyp_actividades`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vyp_actividades`
--
ALTER TABLE `vyp_actividades`
  MODIFY `id_vyp_actividades` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
