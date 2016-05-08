-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2016 at 10:56 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `allwines`
--

-- --------------------------------------------------------

--
-- Table structure for table `grapes`
--

CREATE TABLE IF NOT EXISTS `grapes` (
  `Id` int(5) NOT NULL,
  `Image` char(255) NOT NULL,
  `Name` char(50) NOT NULL,
  `Description` char(255) NOT NULL,
  `Color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grapes`
--

INSERT INTO `grapes` (`Id`, `Image`, `Name`, `Description`, `Color`) VALUES
(112, 'big_red_sangiovese_grapes.jpg', 'Sangiovese', 'Chianti by most popular name.  Tuscany region of Italy.  Great with marinara sauce', 'Red'),
(510, 'Chardonnay.jpg', 'Chardonnay', 'Very popular white wine.  Grown in many wine growing regions of the world.   When Chardonnay is fermented in oak barrels the process gives the wine a buttery, oak flavor.', 'White'),
(511, 'sauvignon_blanc.jpg', 'Sauvignon Blanc', 'A very popular white wine. Fruity flavors and aromas.  Usually fermented in stainless steel vats to give the wine it’s clear and crisp flavor.  Very common in the Bordeaux of France, commonly known as Fume.', 'White'),
(115, 'barbarossa-724-1-1.jpg', 'Barbarossa', 'Red Italian wine grown in the Piedmont region.  Compliments a spicy Italian sausage or meats.', 'Red'),
(110, 'Red_Mountain_Cabernet_Sauvignon_grapes_from_Hedge_Vineyards.jpg', 'Cabernet Sauvignon', 'The most common of the red grapes that grows in several wine growing regions of the world.  Grown in the Bordeaux region of France.   Cabernet Sauvignon is mixed with Merlot, and Cabernet Franc to produce their award winning wines.  Other wine growing reg', 'Red'),
(1, '', 'Sangiovese', 'Italy', 'You may know this grape by a more common name Chia'),
(2, '', 'Cabernet Sauvignon', 'World Wide', 'The most common of the red grapes that grows in se');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(80) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`Id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Evan', 'Grob', 'test@test.net', 'test'),
(2, 'Evan', 'Gt', 'emgrob1@yahoo.com', 'etet'),
(3, 'Test', 'Test', '7tester@games.you', 'Testing again'),
(4, 'Test', 'Test', '7tester@games.you', 'Testing again'),
(5, 'Jenn', 'Kirknel', 'JK@email.bi', 'Someone new'),
(6, 'Mike', 'Kat', 'mk@home.jk', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `ID` int(5) NOT NULL,
  `Name` char(50) NOT NULL,
  `Description` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`ID`, `Name`, `Description`) VALUES
(11, 'Northern', 'Cold'),
(121, 'Northwestern', 'Warm temperators'),
(225, 'East', 'Moderate');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`) VALUES
(2, 'Evan', 'Grob', 'test@test.net'),
(3, 'Mark', 'One', 'emgrob1@yahoo.com'),
(4, 'Mark', 'Test', 'test@test.net');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
