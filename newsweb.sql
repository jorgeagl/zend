-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2012 a las 00:56:01
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `newsweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(50) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` text NOT NULL,
  `imagen` varchar(300) NOT NULL,
  `categoria` enum('null','Diseño','Software') NOT NULL,
  `idUserPub` int(11) NOT NULL,
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`idpost`, `fecha`, `titulo`, `contenido`, `imagen`, `categoria`, `idUserPub`) VALUES
(11, '14/03/2012', 'Computadoras', '<p>\r\n	<img alt="" src="http://digitalconqurer.com/wp-content/uploads//2011/12/UNINSTALL-PROGRAMS-MAC.jpg" style="height: 81px; width: 119px; float: left;" /><b><i>Computadoras qu&aacute;nticas.</i></b></p>\r\n<p>\r\n	En 1965, el presidente em&eacute;rito y cofundador de <i>Intel</i>, Gordon E. Moore- ide&oacute;logo de la ley-, se da cuenta de que el n&uacute;mero de transistores que contiene un microchip se duplica aprox. Cada a&ntilde;o pero, esta progresi&oacute;n no es infinita.</p>\r\n<p>\r\n	La miniaturizaci&oacute;n de circuitos tiene un limite ya que el reducir tanto su tama&ntilde;o hace que produzcan demasiado calor. Por otra parte, a la escala nanom&eacute;trica entran las leyes de la f&iacute;sica qu&aacute;ntica al juego, en la que los electrones se comportan de una manera probabil&iacute;stica.</p>\r\n<p>\r\n	Algunos F&iacute;sicos en 1982 empez&oacute; a gestarse una idea que parec&iacute;a descabellada: construir una computadora qu&aacute;ntica, una maquina capaz de aprovecharse de las particulares leyes f&iacute;sicas del mundo subat&oacute;mico para procesar a gran velocidad ingentes cantidades de datos y, en definitiva, hacer que las supercomputadoras actuales parezcan simples &aacute;bacos.</p>\r\n<p>\r\n	A diferencia de las computadoras personales que han sido dise&ntilde;adas para que trabajen con informaci&oacute;n en forma de bits una computadora b&aacute;sica usa bits qu&aacute;nticos o qubits, capaces de registrar unos y ceros a la vez. Esto lo logran gracias a la una de las premisas fundamentales de la mec&aacute;nica qu&aacute;ntica: la sobreposicion, que indica que a escalas &iacute;nfimas un &uacute;nico objeto puede tener al mismo tiempo dos propiedades distintas o pueda estar en dos sitios a la vez. De esta forma la velocidad d calculo aumenta enormemente.</p>\r\n<p>\r\n	<b><i>Computadoras &Oacute;pticas:</i></b></p>\r\n<p>\r\n	<b><i>Muy r&aacute;pidas y baratas.</i></b></p>\r\n<p>\r\n	Kevin Homewood est&aacute; al frente de un grupo de expertos de la universidad de Surrey, Inglaterra, que cree que la clave se encuentra en la luz. Seg&uacute;n estos investigadores, es factible construir un dispositivo &oacute;ptico de computaci&oacute;n que se aproveche de la velocidad luz y de su gran capacidad para transportar informaci&oacute;n. El problema al que se han enfrentado estos cient&iacute;ficos es que el silicio es con el que se fabrican microchips normalmente emite energ&iacute;a calor&iacute;fica, no luminosa. Para superarlo Homewood y sus colegas construyeron trampas a escala at&oacute;mica en el interior del silicio donde consiguieron atrapar electrones y forzarlos a liberar energ&iacute;a lum&iacute;nica. A parte de miniaturizar los chips y hacerlos m&aacute;s eficientes este prototipo podr&aacute; funcionar a temperatura ambiente.</p>\r\n<p>\r\n	<b><i>Computadoras basadas en el ADN</i></b></p>\r\n<p>\r\n	California Leonard Adleman sorprendi&oacute; a la comunidad cient&iacute;fica al solventar esta cuesti&oacute;n utilizando una peque&ntilde;a gota de un liquido que conten&iacute;a ADN. Adleman ideo un m&eacute;todo de plantear el problema a partir de bases enfrentadas que forman hebras de la mol&eacute;cula del ADN: A, C, T y G, las letras del abecedario gen&eacute;tico. De esta forma, utilizando los mismos patrones qu&iacute;micos que permiten que las bases se unan de una forma especifica se identifico la soluci&oacute;n correcta en un tiempo record: hab&iacute;a nacido la computadora de ADN.</p>\r\n<p>\r\n	Y no es algo para tomarse a la ligera, pues cada cent&iacute;metro c&uacute;bico de ADN contiene mas informaci&oacute;n que un bill&oacute;n de CD&#39;s. Pero, a pesar de que tiene esta memoria masiva y de que las computadoras de ADN utilizar&iacute;an una cantidad m&iacute;nima de energ&iacute;a para funcionar, aun se desconoce como hacer una maquina &uacute;til capaz de aprovechar todas estas ventajas.</p>\r\n<p>\r\n	<b><i>Computadoras Neuroelectr&oacute;nicas</i></b></p>\r\n<p>\r\n	En el instituto Maxplanck de bioqu&iacute;mica, cerca de Munich, el profesor Peter Fromherz y sus colaboradores han conseguido hacer que el silicio interactu&eacute; con tejidos vivos. Esta tecnolog&iacute;a, conocida como neuroelectr&oacute;nica, abre una v&iacute;a de comunicaciones entre computadoras y c&eacute;lulas. El primer &ldquo;neurochip&rdquo; ha consistido en fusionar y hacer que trabajen juntos un microchip y las neuronas de un caracol. En el futuro, gracias a esta tecnolog&iacute;a, podr&iacute;an lograrse implantes que como una neuropr&oacute;tesis capaces de sustituir las funciones del tejido da&ntilde;ado del sistema nervioso.</p>\r\n', 'par.jpg', 'Diseño', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
