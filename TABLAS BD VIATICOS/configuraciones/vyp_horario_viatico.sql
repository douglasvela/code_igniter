
DROP TABLE IF EXISTS `vyp_horario_viatico`;
CREATE TABLE `vyp_horario_viatico` (
  `id_horario_viatico` int(10) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `hora_inicio` time NOT NULL DEFAULT '00:00:00',
  `hora_fin` time NOT NULL DEFAULT '00:00:00',
  `monto` float NOT NULL,
  `id_tipo` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vyp_horario_viatico`
--

INSERT INTO `vyp_horario_viatico` (`id_horario_viatico`, `descripcion`, `hora_inicio`, `hora_fin`, `monto`, `id_tipo`, `estado`) VALUES
(1, 'Desayuno', '05:00:00', '06:30:00', 3, 1, 1),
(2, 'Almuerzo', '06:31:00', '18:29:00', 4, 1, 1),
(3, 'Cena', '18:30:00', '23:59:00', 4, 1, 1);

--
-- Indices de la tabla `vyp_horario_viatico`
--
ALTER TABLE `vyp_horario_viatico`
  ADD PRIMARY KEY (`id_horario_viatico`);

--
-- AUTO_INCREMENT de la tabla `vyp_horario_viatico`
--
ALTER TABLE `vyp_horario_viatico`
  MODIFY `id_horario_viatico` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
