-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.16-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mtps
--

CREATE DATABASE IF NOT EXISTS mtps;
USE mtps;

--
-- Definition of table `org_genero`
--

DROP TABLE IF EXISTS `org_genero`;
CREATE TABLE `org_genero` (
  `id_genero` varchar(5) NOT NULL,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_genero`
--

/*!40000 ALTER TABLE `org_genero` DISABLE KEYS */;
INSERT INTO `org_genero` (`id_genero`,`genero`) VALUES 
 ('00001','MASCULINO'),
 ('00002','FEMENINO');
/*!40000 ALTER TABLE `org_genero` ENABLE KEYS */;


--
-- Definition of table `org_seccion`
--

DROP TABLE IF EXISTS `org_seccion`;
CREATE TABLE `org_seccion` (
  `id_seccion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_seccion` varchar(200) NOT NULL,
  `depende` int(10) unsigned NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_seccion`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_seccion`
--

/*!40000 ALTER TABLE `org_seccion` DISABLE KEYS */;
INSERT INTO `org_seccion` (`id_seccion`,`nombre_seccion`,`depende`,`nivel`) VALUES 
 (1,'OFICINA DE ASESORIA JURIDICA',34,1),
 (2,'LIQUIDACION LABORAL',37,2),
 (3,'ARCHIVO GENERAL',36,2),
 (4,'ADMINISTRACION DE PROYECTOS',34,1),
 (5,'CENTRO OBRERO COATEPEQUE',15,2),
 (6,'CENTRO OBRERO CONCHALIO',15,2),
 (8,'CENTRO OBRERO EL TAMARINDO',15,2),
 (9,'CENTRO OBRERO LA PALMA',15,2),
 (10,'CIUDAD MUJER',61,2),
 (11,'CLINICA EMPRESARIAL',36,2),
 (12,'CNR',37,2),
 (13,'CONSEJO NACIONAL DEL SALARIO MINIMO',34,1),
 (14,'CONSEJO SUPERIOR DEL TRABAJO',34,1),
 (15,'DEPARTAMENTO DE CENTROS DE RECREACION A TRABAJADORES',36,2),
 (16,'DEPARTAMENTO DE INSPECCION AGROPECUARIA',37,2),
 (17,'DEPARTAMENTO DE INSPECCION, INDUSTRIA, COMERCIO Y SERVICIO',37,2),
 (18,'DEPARTAMENTO DE INSPECCION AGROPECUARIA_NO USAR',37,2),
 (19,'DEPARTAMENTO DE RECURSOS HUMANOS',36,2),
 (20,'DEPARTAMENTO DE RELACIONES DE TRABAJO',43,2),
 (21,'DEPARTAMENTO DE SERVICIOS GENERALES',36,2),
 (22,'DEPARTAMENTO NACIONAL DE EMPLEO',42,2),
 (23,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO DE APOPA',42,2),
 (24,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO DE ILOPANGO',42,2),
 (25,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO DE MEJICANOS',42,2),
 (26,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO DE NEJAPA',42,2),
 (27,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO DE SAN MARCOS',42,2),
 (28,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO DE SOYAPANGO',42,2),
 (29,'DEPARTAMENTO DE EMPLEO BOLSA DE EMPLEO SAN MARTIN',42,2),
 (30,'DEPARTAMENTO NACIONAL DE ORGANIZACIONES SOCIALES',43,2),
 (31,'DEPARTAMENTO UACI',36,2),
 (32,'DEPTO DE INSPECCION AGRICOLA_NO USAR',37,2),
 (33,'DEPTO. DE SEGURIDAD E HIGIENE OCUPACIONAL',42,2),
 (34,'DESPACHO MINISTERIAL',0,2),
 (35,'DESPACHO VICE MINISTERIAL',34,2),
 (36,'DIRECCION ADMINISTRATIVA',40,2),
 (37,'DIRECCION GENERAL DE INSPECCION',40,2),
 (39,'DIRECCION DE RELACIONES INTERNACIONALES DE TRABAJO',40,2),
 (40,'DIRECCION EJECUTIVA',34,2),
 (41,'117 TRABAJO',0,2),
 (42,'DIRECCION GENERAL DE PREVISION SOCIAL',40,2),
 (43,'DIRECCION GENERAL DE TRABAJO',40,2),
 (44,'INSPECCION SUPERVISORIA 3',37,2),
 (46,'EXTRANJERIA MIGRANTES',42,2),
 (47,'INFRAESTRUCTURA',36,2),
 (48,'INSPECCION AGROPECUARIA_NO USAR',37,2),
 (49,'INSPECCION SUPERVISORIA 2',37,2),
 (51,'MINISTRO',34,2),
 (52,'OFICINA DEPARTAMENTAL DE AHUACHAPAN',35,3),
 (53,'OFICINA DEPARTAMENTAL DE CABANAS',35,3),
 (54,'OFICINA DEPARTAMENTAL DE CHALATENANGO',35,3),
 (55,'OFICINA DEPARTAMENTAL DE CUSCATLAN',35,3),
 (56,'OFICINA DEPARTAMENTAL DE LA LIBERTAD',35,3),
 (57,'OFICINA DEPARTAMENTAL DE LA UNION',35,3),
 (58,'OFICINA DEPARTAMENTAL DE MORAZAN',35,3),
 (59,'OFICINA DEPARTAMENTAL DE SAN VICENTE',35,3),
 (60,'OFICINA DEPARTAMENTAL DE SONSONATE',35,3),
 (61,'OFICINA DEPARTAMENTAL DE USULUTAN',35,3),
 (64,'OFICINA PARACENTRAL DE ZACATECOLUCA',35,3),
 (65,'OFICINA REGIONAL DE SAN MIGUEL',35,3),
 (66,'OFICINA REGIONAL DE SANTA ANA',35,3),
 (67,'PAGADURIA INSTITUCIONAL',34,2),
 (68,'RAC',43,2),
 (69,'SALA CUNA',43,2),
 (72,'SECCION DE BODEGA',36,2),
 (73,'SECCION DE COMPRAS',36,2),
 (74,'SECCION DE CONTABILIDAD',34,2),
 (75,'SECCION DE CORRESPONDENCIA',34,2),
 (76,'SECCION DE HIGIENE OCUPACIONAL',42,2),
 (77,'SECCION DE INTENDENCIA',21,2),
 (78,'SECCION DE MANTENIMIENTO',21,2),
 (79,'SECCION DE MULTAS',37,2),
 (80,'SECCION DE PRESUPUESTO',34,2),
 (81,'SECCION DE PREVENCION DE RIESGOS OCUPACIONALES',42,2),
 (84,'SECCION DE RECREACION PARA TRABAJADORES',36,2),
 (86,'SECCION DE REGLAMENTOS INTERNOS DE TRABAJO',43,2),
 (87,'SECCION DE RELACIONES COLECTIVAS DE TRABAJO',43,2),
 (89,'SECCION DE RELACIONES INDIVIDUALES DE TRABAJO',43,2),
 (90,'SECCION DE SEGURIDAD OCUPACIONAL',42,2),
 (91,'SECCION DE TRABAJADORES MIGRANTES',42,2),
 (92,'SECCION MULTAS',37,2),
 (93,'SECCION NOTIFICADORES DE INSPECCION',37,2),
 (94,'SECCION PRESUPUESTO',34,2),
 (95,'SECRETARIA DE DIRECCION GENERAL DE TRABAJO',43,2),
 (97,'INSPECCION SUPERVISORIA 1',37,2),
 (98,'SUB DIRECCION',36,2),
 (99,'SUB 36',0,2),
 (100,'UNIDAD DE ACCESO A LA INFORMACION PUBLICA',34,1),
 (101,'UNIDAD DE ACTIVO FIJO',36,2),
 (104,'UNIDAD DE ASESORIA LABORAL',37,2),
 (105,'UNIDAD DE ATENCION AL USUARIO',36,2),
 (106,'OFICINA DE AUDITORIA Y CONTROL INTERNO',34,1),
 (107,'OFICINA DE COORDINACION Y DESARROLLO INSTITUCIONAL',40,2),
 (108,'UNIDAD DE DESARROLLO TECNOLOGICO',40,1),
 (109,'OFICINA DE ESTADISTICA E INFORMATICA LABORAL',40,1),
 (111,'UNIDAD DE NOTIFICADORES',43,2),
 (112,'OFICINA DE PRENSA Y RELACIONES PUBLICAS',40,1),
 (113,'UNIDAD ESPECIAL DE GENERO Y PREV. ACTOS',37,2),
 (114,'UNIDAD ESPECIAL DE PREVENCION DE ACTOS LABORALES DISCRIMINATORIOS',37,2),
 (115,'UNIDAD FINANCIERA INSTITUCIONAL',34,1),
 (116,'UNIDAD PARA LA EQUIDAD ENTRE LOS GENEROS',34,1),
 (117,'UNIDAD DE ANALISIS E INVESTIGACION DEL MERCADO LABORAL',42,2),
 (118,'SECCION DE SECTORES VULNERABLES',22,2),
 (119,'SECCION COORDINACION DE EMPLEO JUVENIL',42,2),
 (120,'UNIDAD DE ATENCION A ADOLESCENTES TRABAJADORES',36,2),
 (121,'UNIDAD DE ADQUISICIONES Y CONTRATACIONES INSTITUCIONAL',36,1),
 (122,'INSPECCION SUPERVISORIA 4',37,2),
 (123,'RECEPCION DE SOLICITUD DE INSPECCION',37,2),
 (124,'SITRAMITPS',0,2),
 (125,'APELACIONES',37,2),
 (126,'INSCRIPCION DE ESTABLECIMIENTOS',37,2),
 (127,'COORDINACION DE INDUSTRIA DE COMERCIO',37,2),
 (128,'FERIAS DE EMPLEO',22,2),
 (129,'COORDINACION BOLSA DE EMPLEO LOCAL',22,2),
 (130,'SEMINTRAB',0,2),
 (131,'UNIDAD DE DIALOGO SOCIAL',22,2),
 (132,'SALA DE USOS MULTIPLES E4N2',36,2),
 (133,'SALA DE REUNION CONSEJO SUPERIOR DE TRABAJO',14,2),
 (134,'SALA DE REUNION CLINICA',11,2),
 (135,'SALA DE CAPACITACION RRHH',19,2),
 (136,'OFICINA DE LA PGR',0,2),
 (137,'ARCHIVO INSTITUCIONAL',40,2),
 (138,'SALA DE REUNION USOS MULTIPLES PREVISION DE RIESGOS',42,2),
 (139,'SALA DE REUNION CLINICA',36,2),
 (140,'SECCION GENERAL',0,2),
 (141,'CAFETERIA',36,2),
 (142,'CORTE DE CUENTAS',36,2),
 (143,'SECCION GENERAL',36,2),
 (144,'SECRETARIA DE DIRECCION GENERAL DE INSPECCION TRABAJO',37,2),
 (145,'UNIDAD DE ATENCION A NINOS Y NINAS ADOLESCENTES',42,2),
 (146,'UNIDAD DE APRENDICES',42,2),
 (147,'DESCARGADO Y DESALOJADO',40,2),
 (148,'SUBDIRECCION GENERAL DE INSPECCION',37,2),
 (149,'COMITE DE SEGURIDAD OCUPACIONAL',11,2),
 (150,'COORDINACION NACIONAL DE INSPECCION DE TRABAJO',37,2),
 (151,'SECCION TRANSPORTE',21,2),
 (152,'SUPERVISORIA 1',37,2),
 (153,'SUPERVISORIA 2',37,2),
 (154,'SUPERVISORIA 3',37,2),
 (155,'SUPERVISORIA 4',37,2),
 (156,'MECANICOS',21,2),
 (157,'UNIDAD ENCARGADA DE TRAMITAR CASOS PROVENIENTES DEL DESPACHO Y PROGRAMA CONVERSANDO CON EL PRESIDENTE',34,2),
 (158,'UNIDAD CALL CENTER',36,2),
 (159,'SECCION DE SEGURIDAD',21,2),
 (160,'UBICACION EXTERNA',0,2),
 (161,'MTPS',0,2),
 (162,'OFICINA RECEPTORA DE QUEJAS',37,2),
 (163,'SECCION TALLER',21,2),
 (164,'SECCION VIGILANCIA',36,2),
 (165,'UNIDAD DE MEDIO AMBIENTE',34,2),
 (166,'PLAN DE LA LAGUNA OFICINAS ADMINISTRATIVAS',36,2),
 (167,'SUB DIRECCION ADMINISTRATIVA',36,2),
 (168,'SUB DIRECCION DE PREVISION SOCIAL',42,2),
 (169,'SUB DIRECCION DE TRABAJO',43,2),
 (170,'SECRETARIA DE ACTUACIONES',43,2),
 (171,'SECCION BOLSA DE EMPLEO',22,2),
 (172,'UNIDAD DE EMPLEO JUVENIL Y FERIAS DE EMPLEO',22,2),
 (174,'SECCION DE REGISTRO Y CONTROL DE PERSONAL',19,2),
 (175,'SECCION DE CAPACITACION',19,2),
 (176,'SECCION DE BIENESTAR LABORAL',19,2),
 (177,'UNIDAD DE EMPLEO JUVENIL',22,2),
 (178,'UNIDAD DE FERIAS DE EMPLEO',22,2),
 (179,'FONDO CIRCULANTE',115,1),
 (180,'UNIDAD DE GESTION DOCUMENTAL Y ARCHIVOS',40,2);
/*!40000 ALTER TABLE `org_seccion` ENABLE KEYS */;


--
-- Definition of table `org_usuario`
--

DROP TABLE IF EXISTS `org_usuario`;
CREATE TABLE `org_usuario` (
  `id_usuario` int(10) unsigned NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `nr` varchar(5) NOT NULL,
  `sexo` varchar(5) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_seccion` varchar(5) NOT NULL,
  `estado` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_usuario`
--

/*!40000 ALTER TABLE `org_usuario` DISABLE KEYS */;
INSERT INTO `org_usuario` (`id_usuario`,`nombre_completo`,`nr`,`sexo`,`usuario`,`password`,`id_seccion`,`estado`) VALUES 
 (1,'WILLIAN RIVERA','2017','00001','willian.rivera','willian','1',1),
 (2,'DOUGLAS RECINOS','2545','00001','douglas.recinos','1df6b38df5d989e87ed053ddc5a099bf','13',1),
 (3,'PAZ ELISA ALVARADO','1218','00001','paz.alvarado','b9dd7dec8201d01ba274db91fbb5e280','97',1);
/*!40000 ALTER TABLE `org_usuario` ENABLE KEYS */;


--
-- Definition of table `sir_empleado`
--

DROP TABLE IF EXISTS `sir_empleado`;
CREATE TABLE `sir_empleado` (
  `idempleado` varchar(4) NOT NULL,
  `primer_nombre` text NOT NULL,
  `segundo_nombre` text NOT NULL,
  `tercer_nombre` text NOT NULL,
  `primer_apellido` text NOT NULL,
  `segundo_apellido` text NOT NULL,
  `apellido_casada` text NOT NULL,
  `id_genero` varchar(5) NOT NULL,
  `nr` varchar(4) NOT NULL,
  PRIMARY KEY (`idempleado`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sir_empleado`
--

/*!40000 ALTER TABLE `sir_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `sir_empleado` ENABLE KEYS */;


--
-- Definition of table `sir_empleado_informacion_laboral`
--

DROP TABLE IF EXISTS `sir_empleado_informacion_laboral`;
CREATE TABLE `sir_empleado_informacion_laboral` (
  `id_empleado_informacion_laboral` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_seccion` int(10) unsigned NOT NULL,
  `id_empleado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_empleado_informacion_laboral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sir_empleado_informacion_laboral`
--

/*!40000 ALTER TABLE `sir_empleado_informacion_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `sir_empleado_informacion_laboral` ENABLE KEYS */;


--
-- Definition of table `vyp_bancos`
--

DROP TABLE IF EXISTS `vyp_bancos`;
CREATE TABLE `vyp_bancos` (
  `id_banco` int(10) unsigned NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `caracteristicas` varchar(40) NOT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vyp_bancos`
--

/*!40000 ALTER TABLE `vyp_bancos` DISABLE KEYS */;
INSERT INTO `vyp_bancos` (`id_banco`,`nombre`,`caracteristicas`) VALUES 
 (2,'Agricola S.A de C.V','PERTENECE A EL SALVADOR CON PARTE EN COL'),
 (3,'CUSCATLAN','ALGUNOS EMPLEADOS USAN ESTE BANCO'),
 (4,'DAVIVIENDA','FORMA PARTE DE LAS PLANILLAS'),
 (5,'BANCOVI','BANCO PARA EMPLEADOS'),
 (6,'BANCO LA FINCA','BANCO FINCA DE EL SALVADOR');
/*!40000 ALTER TABLE `vyp_bancos` ENABLE KEYS */;


--
-- Definition of table `vyp_bitacora_viatico`
--

DROP TABLE IF EXISTS `vyp_bitacora_viatico`;
CREATE TABLE `vyp_bitacora_viatico` (
  `id_bitacora` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) NOT NULL,
  `modulo` varchar(45) NOT NULL,
  `accion` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `idusuario` varchar(45) NOT NULL,
  PRIMARY KEY (`id_bitacora`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vyp_bitacora_viatico`
--

/*!40000 ALTER TABLE `vyp_bitacora_viatico` DISABLE KEYS */;
/*!40000 ALTER TABLE `vyp_bitacora_viatico` ENABLE KEYS */;


--
-- Definition of table `vyp_horario_viatico`
--

DROP TABLE IF EXISTS `vyp_horario_viatico`;
CREATE TABLE `vyp_horario_viatico` (
  `id_horario_viatico` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `hora_inicio` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_fin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `monto` float NOT NULL,
  PRIMARY KEY (`id_horario_viatico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vyp_horario_viatico`
--

/*!40000 ALTER TABLE `vyp_horario_viatico` DISABLE KEYS */;
INSERT INTO `vyp_horario_viatico` (`id_horario_viatico`,`descripcion`,`hora_inicio`,`hora_fin`,`monto`) VALUES 
 (1,'Desayuno','2017-10-06 06:00:00','2017-10-06 08:00:00',3),
 (2,'Almuerzo','2017-10-06 12:00:00','2017-10-06 13:00:00',4),
 (3,'cena2','2017-10-11 18:00:00','2017-10-11 20:00:00',4);
/*!40000 ALTER TABLE `vyp_horario_viatico` ENABLE KEYS */;


--
-- Definition of table `vyp_oficinas`
--

DROP TABLE IF EXISTS `vyp_oficinas`;
CREATE TABLE `vyp_oficinas` (
  `id_oficina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_oficina` varchar(200) NOT NULL,
  `direccion_oficina` varchar(400) NOT NULL,
  `latitud_oficina` varchar(50) NOT NULL,
  `longitud_oficina` varchar(50) NOT NULL,
  PRIMARY KEY (`id_oficina`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vyp_oficinas`
--

/*!40000 ALTER TABLE `vyp_oficinas` DISABLE KEYS */;
INSERT INTO `vyp_oficinas` (`id_oficina`,`nombre_oficina`,`direccion_oficina`,`latitud_oficina`,`longitud_oficina`) VALUES 
 (1,'Oficina Central','primera direccion','13.705542923582362',' -89.20029401779175'),
 (2,'Oficina Paracentral','segunda direeccion','13.641253371576248',' -88.78463745117188'),
 (3,'Oficina regional de occidente','','13.995933662977752',' -89.55837965011597'),
 (4,'prueba','ninguna','13.70745038803979',' -89.20013576745987');
/*!40000 ALTER TABLE `vyp_oficinas` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;