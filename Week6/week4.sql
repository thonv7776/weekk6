-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2026 at 02:27 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `week4`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `email`) VALUES
(1, 'Jonny Cage', 'hello@gmail.com'),
(2, 'lulu bi', 'namebingu@gmail.com'),
(3, 'Sub Zero', 'lululu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `joke`
--

DROP TABLE IF EXISTS `joke`;
CREATE TABLE IF NOT EXISTS `joke` (
  `id` int NOT NULL AUTO_INCREMENT,
  `joketext` text,
  `jokedate` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `authorid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authorid` (`authorid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `joke`
--

INSERT INTO `joke` (`id`, `joketext`, `jokedate`, `image`, `authorid`) VALUES
(1, 'matt joke 1', '2022-10-11', 'chicken.jpg', 0),
(2, 'another joke, who cares', '2022-10-18', 'doctor.png', 0),
(3, 'so funny', '2022-10-24', 'dragon.jpg', 0),
(4, 'matt joke 4', '2022-10-18', 'water.jpg', 0),
(18, 'hello my name is Thong', '2026-06-12', 'OIP (1).jpg', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
