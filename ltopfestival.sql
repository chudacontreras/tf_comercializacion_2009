-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-10-2009 a las 16:19:27
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6-1+lenny3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tf_comercializacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abono`
--

CREATE TABLE IF NOT EXISTS `abono` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `rif` varchar(15) NOT NULL default '',
  `nombre` varchar(45) NOT NULL default '',
  `direccion` varchar(45) NOT NULL default '',
  `telf` varchar(45) default NULL,
  `fecha` date NOT NULL default '0000-00-00',
  `cant` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `abono`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anno`
--

CREATE TABLE IF NOT EXISTS `anno` (
  `an` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`an`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `anno`
--

INSERT INTO `anno` (`an`) VALUES
('1960'),
('1961'),
('1962'),
('1963'),
('1964'),
('1965'),
('1966'),
('1967'),
('1968'),
('1969'),
('1970'),
('1971'),
('1972'),
('1973'),
('1974'),
('1975'),
('1976'),
('1977'),
('1978'),
('1979'),
('1980'),
('1981'),
('1982'),
('1983'),
('1984'),
('1985'),
('1986'),
('1987'),
('1988'),
('1989'),
('1990'),
('1991'),
('1992'),
('1993'),
('1994'),
('1995'),
('1996'),
('1997'),
('1998'),
('1999'),
('2000'),
('2001'),
('2002'),
('2003'),
('2004'),
('2005'),
('2006'),
('2007'),
('2008'),
('2009'),
('2010'),
('2011');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantacredita`
--

CREATE TABLE IF NOT EXISTS `cantacredita` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nrocontrato` varchar(10) NOT NULL default '',
  `codcate` int(10) unsigned NOT NULL default '0',
  `tipoacre` int(10) unsigned NOT NULL default '0',
  `cant` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `cantacredita`
--

INSERT INTO `cantacredita` (`id`, `nrocontrato`, `codcate`, `tipoacre`, `cant`) VALUES
(4, 'FB070008', 1, 2, 2),
(5, 'FB070008', 1, 2, 2),
(6, 'FB070010', 2, 6, 2),
(7, 'FB070010', 2, 8, 2),
(8, 'FB070012', 1, 1, 2),
(9, 'FB070012', 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `codcate` int(10) unsigned NOT NULL auto_increment,
  `descrip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codcate`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`codcate`, `descrip`) VALUES
(1, 'Aliados'),
(2, 'Comerciante'),
(3, 'Gobernación'),
(4, 'Logistica'),
(5, 'Invitados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE IF NOT EXISTS `contrato` (
  `rif` varchar(15) NOT NULL default '',
  `numero` varchar(10) NOT NULL default '',
  `fecha` date NOT NULL default '0000-00-00',
  `productos` varchar(100) default NULL,
  `stand` varchar(100) NOT NULL default '',
  `total` double NOT NULL default '0',
  `resta` double NOT NULL default '0',
  `Statu` varchar(45) NOT NULL default '',
  `ramo` varchar(100) default NULL,
  `totalacred` int(10) unsigned NOT NULL default '0',
  `maxacred` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`rif`, `numero`, `fecha`, `productos`, `stand`, `total`, `resta`, `Statu`, `ramo`, `totalacred`, `maxacred`) VALUES
('V15960266', 'FB070001', '2007-08-09', 'ropa intima femenina y masculina', 'PB-AI02', 9000000, 9000000, '1', 'Comercializacion', 0, 0),
('V15960266', 'FB070002', '2007-08-09', 'ropa intima femenina y masculina', 'PB-AE01', 4000000, 0, '3', 'Comercializacion', 0, 0),
('V15960266', 'FB070003', '2007-08-09', 'roaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'PB-AE05', 4000000, 1000000, '1', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, 0),
('V15960266', 'FB070004', '2007-08-09', 'qwww', 'PB-AE06', 4000000, 1000000, '2', 'weee', 0, 0),
('V15960266', 'FB070005', '2007-08-09', '13', 'PB-AE09', 4000000, 9390, '2', '12', 0, 0),
('G20000207-7', 'FB070006', '2007-08-10', 'ropa intima femenina y masculina', 'PB-AE01,PB-AE03', 8000000, 4000000, '1', 'Comercializacion', 0, 0),
('V15960266', 'FB070007', '2007-08-10', 'Ropa Intima Colombiana', 'AI-AE163,AI-AE164', 8000000, 6000000, '1', 'Ropa', 0, 0),
('V15960266', 'FB070008', '2007-08-10', 'carros', 'AI-AE165,AI-AE166,AI-AE167', 12000000, 1000000, '1', 'carros', 15, 6),
('V15960266', 'FB070009', '2007-08-11', 'casas', 'AI-AE168,AI-AE169,AI-AE170', 12000000, 11000000, '1', 'casas', 15, 9),
('V15960266', 'FB070010', '2007-08-11', 's', 'AI-AE171,AI-AE175', 8000000, 6000000, '1', 's', 10, 6),
('V15960266', 'FB070011', '2007-08-11', 'd', 'AI-AE172,AI-AE173,AI-AE174', 12000000, 10000000, '1', 'd', 15, 9),
('V15960266', 'FB070012', '2007-08-11', 'd', 'AI-AE176,AI-AE177,AI-AE178', 12000000, -1000000, '', 'd', 15, 9),
('V15960266', 'FB070013', '2007-08-11', 's', 'AI-AE179,AI-AE180,AI-AE181', 12000000, 10800000, '1', 'd', 15, 9),
('V15960266', 'FB070014', '2007-08-11', 'dd', 'AI-AE182,AI-AE183,AI-AE184', 12000000, 11999996, '1', 'dd', 15, 9),
('V15960266', 'FB070015', '2007-08-11', 'df', 'AI-AE185,AI-AE186,AI-AE187', 12000000, 1000000, '1', 'ff', 15, 9),
('V15960266', 'FB070016', '2007-08-11', 'f', 'AI-AE189,AI-AE190,AI-AE191', 12000000, 10000000, '1', 'f', 15, 9),
('V15960266', 'FB070017', '2007-08-11', 'f', 'AI-AE188,AI-AE192,AI-AE193', 12000000, -1000000, '', 'g', 15, 9),
('V15960266', 'FB070018', '2007-08-11', 'd', 'AI-AE194,AI-AE195,AI-AE196,AI-AE197', 16000000, 4000000, '1', 'd', 20, 12),
('V15960266', 'FB070019', '2007-08-11', 'd', 'AI-AE198,AI-AE199', 8000000, 6000000, '1', 'd', 10, 6),
('V15960266', 'FB070020', '2007-08-11', 'w', 'AI-AE200,AI-AE201,AI-AE202', 12000000, 11000000, '1', 'e', 15, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costoabono`
--

CREATE TABLE IF NOT EXISTS `costoabono` (
  `precio` double NOT NULL auto_increment,
  PRIMARY KEY  (`precio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `costoabono`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `rif` varchar(15) NOT NULL default '',
  `nombre` varchar(100) NOT NULL default '',
  `direccion` varchar(100) NOT NULL default '',
  `telf` varchar(45) NOT NULL default '',
  `replegal` varchar(100) default NULL,
  `cedrepre` varchar(15) default NULL,
  `statu` varchar(15) default NULL,
  `regismercan` varchar(100) default NULL,
  `fecharegis` date default '0000-00-00',
  `nrotomo` varchar(10) default NULL,
  `cargo` varchar(100) default NULL,
  `categoria` int(2) unsigned zerofill NOT NULL COMMENT 'Categoria de la empresa',
  PRIMARY KEY  (`rif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`rif`, `nombre`, `direccion`, `telf`, `replegal`, `cedrepre`, `statu`, `regismercan`, `fecharegis`, `nrotomo`, `cargo`, `categoria`) VALUES
('V15960266', 'Ambar Mendoza', 'Calle 24 con av. ribereña final cuesta lara casa s/n', '02512312560,04161505335', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 00),
('G20000207-7', 'Alcaldia de Iribarren', 'Calle 25 con carrera 17 y 18', '02517101820', 'Alcalde', '15300222', 'registro', '021', '1963-01-04', '0215', 'Alcalde', 00),
('V14878735', 'Gerardo', 'Figueroa', '123456', NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 00),
('J14878735', 'Gerardo Figueroa', 'Cualquiera', '212121', '5454', '545454', 'registro', '221', '1960-01-01', '454', '455', 01);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formapago`
--

CREATE TABLE IF NOT EXISTS `formapago` (
  `codpago` int(10) unsigned NOT NULL auto_increment,
  `descrip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codpago`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `formapago`
--

INSERT INTO `formapago` (`codpago`, `descrip`) VALUES
(1, 'Cheque'),
(2, 'Baucher');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `usuario` varchar(12) NOT NULL default '',
  `clave` varchar(10) NOT NULL default '',
  `codtipo` int(11) NOT NULL default '0',
  `nombre` varchar(50) NOT NULL default '',
  `rifemp` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`usuario`,`clave`),
  KEY `Index_2` (`rifemp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `clave`, `codtipo`, `nombre`, `rifemp`) VALUES
('chuda', '11235/', 1, 'Jesús Contreras', 'V11395811'),
('lestat', '123456', 6, 'Lestat de Lioncourt', 'G20000000-0'),
('mostro', '123456', 2, 'mostro', ''),
('ggil', '123456', 6, 'Lic. Gisela Gil', ''),
('eperez', '123456', 6, 'Lic. Erick Perez', ''),
('beto', '123456', 1, 'beto contreras', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes`
--

CREATE TABLE IF NOT EXISTS `mes` (
  `nro` varchar(5) NOT NULL default '',
  `descrip` varchar(45) default NULL,
  PRIMARY KEY  (`nro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `mes`
--

INSERT INTO `mes` (`nro`, `descrip`) VALUES
('01', 'Enero'),
('02', 'Febrero'),
('07', 'Julio'),
('03', 'Marzo'),
('04', 'Abril'),
('05', 'Mayo'),
('06', 'Junio'),
('08', 'Agosto'),
('09', 'Septiembre'),
('10', 'Octubre'),
('11', 'Noviembre'),
('12', 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stand`
--

CREATE TABLE IF NOT EXISTS `stand` (
  `codstand` varchar(10) NOT NULL default '',
  `status` varchar(45) NOT NULL default '',
  `codubi` varchar(45) NOT NULL default '',
  `costo` double NOT NULL default '0',
  PRIMARY KEY  (`codstand`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `stand`
--

INSERT INTO `stand` (`codstand`, `status`, `codubi`, `costo`) VALUES
('AI-AE163', 'Activo', '1', 0),
('AI-AE164', 'vendido', '1', 0),
('AI-AE165', 'vendido', '1', 0),
('AI-AE166', 'vendido', '1', 0),
('AI-AE167', 'vendido', '1', 0),
('AI-AE168', 'vendido', '1', 0),
('AI-AE169', 'vendido', '1', 0),
('AI-AE170', 'vendido', '1', 0),
('AI-AE171', 'vendido', '1', 0),
('AI-AE172', 'vendido', '1', 0),
('AI-AE173', 'vendido', '1', 0),
('AI-AE174', 'vendido', '1', 0),
('AI-AE175', 'vendido', '1', 0),
('AI-AE176', 'vendido', '1', 0),
('AI-AE177', 'vendido', '1', 0),
('AI-AE178', 'vendido', '1', 0),
('AI-AE179', 'vendido', '1', 0),
('AI-AE180', 'vendido', '1', 0),
('AI-AE181', 'vendido', '1', 0),
('AI-AE182', 'vendido', '1', 0),
('AI-AE183', 'vendido', '1', 0),
('AI-AE184', 'vendido', '1', 0),
('AI-AE185', 'vendido', '1', 0),
('AI-AE186', 'vendido', '1', 0),
('AI-AE187', 'vendido', '1', 0),
('AI-AE188', 'vendido', '1', 0),
('AI-AE189', 'vendido', '1', 0),
('AI-AE190', 'vendido', '1', 0),
('AI-AE191', 'vendido', '1', 0),
('AI-AE192', 'vendido', '1', 0),
('AI-AE193', 'vendido', '1', 0),
('AI-AE194', 'vendido', '1', 0),
('AI-AE195', 'vendido', '1', 0),
('AI-AE196', 'vendido', '1', 0),
('AI-AE197', 'vendido', '1', 0),
('AI-AE198', 'vendido', '1', 0),
('AI-AE199', 'vendido', '1', 0),
('AI-AE200', 'vendido', '1', 0),
('AI-AE201', 'vendido', '1', 0),
('AI-AE202', 'vendido', '1', 0),
('AI-AE203', 'Activo', '1', 0),
('AI-AE204', 'Activo', '1', 0),
('AI-AE205', 'Activo', '1', 0),
('AI-AE206', 'Activo', '1', 0),
('AI-AE207', 'Activo', '1', 0),
('AI-AE208', 'Activo', '1', 0),
('AI-AE209', 'Activo', '1', 0),
('AI-AE210', 'Activo', '1', 0),
('AI-AE211', 'Activo', '1', 0),
('AI-AE212', 'Activo', '1', 0),
('AI-AE213', 'Activo', '1', 0),
('AI-AE214', 'Activo', '1', 0),
('AI-AE215', 'Activo', '1', 0),
('AI-AE216', 'Activo', '1', 0),
('AI-AE217', 'Activo', '1', 0),
('AI-AE218', 'Activo', '1', 0),
('AI-AE219', 'Activo', '1', 0),
('AI-AE220', 'Activo', '1', 0),
('AI-AE221', 'Activo', '1', 0),
('AI-AE222', 'Activo', '1', 0),
('AI-AE223', 'Activo', '1', 0),
('AI-AE224', 'Activo', '1', 0),
('AI-AE225', 'Activo', '1', 0),
('AI-AE226', 'Activo', '1', 0),
('AI-AE227', 'Activo', '1', 0),
('AI-AE228', 'Activo', '1', 0),
('AI-AE229', 'Activo', '1', 0),
('AI-AE230', 'Activo', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuspago`
--

CREATE TABLE IF NOT EXISTS `statuspago` (
  `codpago` int(10) unsigned NOT NULL default '0',
  `descrip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codpago`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `statuspago`
--

INSERT INTO `statuspago` (`codpago`, `descrip`) VALUES
(1, 'Inicial'),
(2, 'Abono'),
(3, 'Cancelado'),
(4, 'Eliminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipacr`
--

CREATE TABLE IF NOT EXISTS `tipacr` (
  `codtacr` int(10) unsigned NOT NULL default '0',
  `descrip` varchar(45) NOT NULL default '',
  `codcateg` int(11) NOT NULL default '0',
  PRIMARY KEY  (`codtacr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tipacr`
--

INSERT INTO `tipacr` (`codtacr`, `descrip`, `codcateg`) VALUES
(1, 'Patocinante VIP', 1),
(2, 'Concesionario', 1),
(3, 'Ayudante Concesionario', 1),
(4, 'Supervisor Concesionario', 1),
(5, 'Promotor', 1),
(6, 'Comision Agropecuaria', 2),
(7, 'Logistica Agropecuaria', 2),
(8, 'Exp Ganadero', 2),
(9, 'Exp Caprino', 2),
(10, 'Exp Western', 2),
(11, 'Exp Rodeo', 2),
(12, 'Exp Canino', 2),
(13, 'Exp Caballo/Paso', 2),
(14, 'Jurado Exposicion', 2),
(15, 'Exp Artesanal', 3),
(16, 'Exp Agropecuario', 3),
(17, 'Exp Comercial', 3),
(18, 'Exp Industrial', 3),
(19, 'Exp Institucional', 3),
(20, 'Exp Ambulante', 3),
(21, 'Director FUNFETUR', 4),
(22, 'Empleado FUNFETUR', 4),
(23, 'Gabinete Mcpal', 4),
(24, 'Empleado Mcpal', 4),
(25, 'Personal de Control', 4),
(26, 'Organizador', 5),
(27, 'Logistica', 5),
(28, 'Mantenimiento', 5),
(29, 'Seguridad', 5),
(30, 'Asistencia Medica', 5),
(31, 'Produccion Artistica', 5),
(32, 'Personalidad', 6),
(33, 'VIP', 6),
(34, 'Honorario', 6),
(35, 'Prensa', 6),
(36, 'Apoyo Personalidades', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE IF NOT EXISTS `transacciones` (
  `nrocontrato` varchar(15) NOT NULL default '',
  `codstatus` int(10) unsigned NOT NULL default '0',
  `nrocheque` varchar(25) NOT NULL default '',
  `banco` varchar(45) NOT NULL default '',
  `fecha` date NOT NULL default '0000-00-00',
  `monto` double NOT NULL default '0',
  PRIMARY KEY  (`nrocheque`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`nrocontrato`, `codstatus`, `nrocheque`, `banco`, `fecha`, `monto`) VALUES
('FB070002', 1, '147', 'Provincial', '2007-08-09', 3000000),
('FB070002', 3, '14569', 'Mercantil', '2007-08-09', 1000000),
('FB070004', 1, '1236987', 'Provincial', '2007-08-09', 2000000),
('FB070004', 2, '1239', 'Provincial', '2007-08-09', 1000000),
('FB070005', 1, '1458', 'Canarias', '2007-08-09', 2000000),
('FB070005', 2, '25896547', 'Casa propia', '2007-08-09', 1000000),
('FB070005', 2, '1258', 'b', '2007-08-09', 500),
('FB070005', 2, '1472583654', 'Canarias', '2007-08-09', 900000),
('FB070005', 2, '2365', 'Canarias', '2007-08-09', 90000),
('FB070005', 2, '3258', 'Mercantil', '2007-08-09', 90),
('FB070005', 2, '1478', 'Mercantil', '2007-08-09', 20),
('FB070006', 1, '123-456-78910', 'Central', '2007-08-10', 4000000),
('FB070007', 1, '123456-987', 'Canarias', '2007-08-10', 2000000),
('FB070008', 1, '23', 'p', '2007-08-10', 11000000),
('FB070009', 1, 's', 's', '2007-08-11', 1000000),
('FB070010', 1, 'd', 'd', '2007-08-11', 2000000),
('FB070012', 0, '120', 'f', '2007-08-11', 13000000),
('FB070014', 1, 'f', 'ff4', '2007-08-11', 4),
('FB070015', 1, 'fdf', 'fdf', '2007-08-11', 11000000),
('FB070017', 0, 'gg', 'g', '2007-08-11', 13000000),
('FB070018', 1, 'dd', 'dd', '2007-08-11', 12000000),
('FB070020', 1, 'df', 'ff', '2007-08-11', 1000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE IF NOT EXISTS `tusuario` (
  `codigo` int(10) unsigned NOT NULL default '0',
  `descripcion` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`codigo`, `descripcion`) VALUES
(1, 'Usuario Administrador General'),
(2, 'Usuario Administrador Acreditacion'),
(3, 'Usuario Acreditador'),
(4, 'Usuario Administrador Abonos'),
(5, 'Usuario Venta de Abonos'),
(6, 'Usuario Administrador Comercializacion'),
(7, 'Usuario Comercializacion'),
(10, 'Usuario Internet de Acreditacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
  `codubi` int(10) unsigned NOT NULL default '0',
  `descrip` varchar(45) NOT NULL default '',
  `cant` int(11) NOT NULL default '0',
  `metros` double NOT NULL default '0',
  `costo` double NOT NULL default '0',
  `preventa` double NOT NULL default '0',
  `fechainicio` date NOT NULL default '0000-00-00',
  `fechafin` date NOT NULL default '0000-00-00',
  `nroacredi` int(10) unsigned default NULL,
  `maxacred` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`codubi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`codubi`, `descrip`, `cant`, `metros`, `costo`, `preventa`, `fechainicio`, `fechafin`, `nroacredi`, `maxacred`) VALUES
(1, 'Barquisimeto Arena AI-AE', 15, 7.5, 4500000, 4000000, '2007-08-01', '2007-08-17', 5, 3),
(2, 'Anillo Inferior AI-AI', 19, 25, 9000000, 8000000, '2007-08-01', '2007-08-17', 3, 2),
(3, 'Anillo Inferior  AI-SE', 2, 127, 35000000, 0, '2007-08-01', '2007-08-17', 0, 2),
(4, 'Anillo Superior AS- PA', 68, 6, 3000000, 0, '2007-08-01', '2007-08-17', 2, 2),
(5, 'Areas Externas AE', 6, 100, 20000000, 0, '0000-00-00', '0000-00-00', NULL, 2),
(6, 'Pabellon Lara PL-1', 94, 6, 2100000, 0, '2007-08-01', '2007-08-17', 2, 2),
(7, 'Pabellon Lara PL-SE', 2, 18, 4500000, 2100000, '2007-08-01', '2007-08-17', 2, 2),
(8, 'Cubiro CB', 37, 7.2, 2500000, 2500000, '2007-08-01', '2007-08-17', 3, 2),
(9, 'Rio Claro RC', 37, 7.2, 2500000, 2500000, '2007-08-01', '2007-08-17', 5, 2),
(10, 'Pabellon Artesanal PA', 40, 6, 1200000, 1200000, '2007-08-01', '2007-08-17', 0, 2);
