-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 22-Set-2024 às 20:34
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `mesh`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `republicar`
--

CREATE TABLE IF NOT EXISTS `republicar` (
  `id_republicar` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_email` varchar(255) NOT NULL,
  `Id_Posts` int(11) NOT NULL,
  `Imgautor` longblob NOT NULL,
  `Dia` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`id_republicar`),
  KEY `Id_Posts` (`Id_Posts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `republicar`
--
ALTER TABLE `republicar`
  ADD CONSTRAINT `republicar_ibfk_1` FOREIGN KEY (`Id_Posts`) REFERENCES `tb_posts` (`Id_Posts`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
