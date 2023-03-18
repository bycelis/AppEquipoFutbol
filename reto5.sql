CREATE TABLE `equipos` (
 `id` int(11) NOT NULL,
 `nombre` varchar(30) NOT NULL,
 `dt` varchar(30) NOT NULL,
 `municipio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `jugadores` (
 `id` int(11) NOT NULL,
 `nombre` varchar(30) NOT NULL,
 `numero` int(11) NOT NULL,
 `equipo_id` int(11) NOT NULL,
 `posicion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `municipios` (
 `id` int(11) NOT NULL,
 `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `posiciones` (
 `id` int(11) NOT NULL,
 `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE `equipos`
 ADD PRIMARY KEY (`id`),
 ADD KEY `FK_municipios_equipos` (`municipio_id`);
ALTER TABLE `jugadores`
 ADD PRIMARY KEY (`id`),
 ADD KEY `FK_equipos_jugadores` (`equipo_id`),
 ADD KEY `FK_posiciones_jugadores` (`posicion_id`);
ALTER TABLE `municipios`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `posiciones`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `equipos`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `jugadores`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `municipios`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `posiciones`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `equipos`
 ADD CONSTRAINT `FK_municipios_equipos` FOREIGN KEY (`municipio_id`) REFERENCES
`municipios` (`id`);
ALTER TABLE `jugadores`
 ADD CONSTRAINT `FK_equipos_jugadores` FOREIGN KEY (`equipo_id`) REFERENCES
`equipos` (`id`),
 ADD CONSTRAINT `FK_posiciones_jugadores` FOREIGN KEY (`posicion_id`) REFERENCES
`posiciones` (`id`);