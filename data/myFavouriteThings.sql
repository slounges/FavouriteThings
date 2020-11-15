-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 15, 2020 at 11:13 PM
-- Server version: 5.7.30
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myFavouriteThings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favourite_things`
--

CREATE TABLE `tbl_favourite_things` (
  `ID` tinyint(4) NOT NULL,
  `image` varchar(20) NOT NULL,
  `title` varchar(15) NOT NULL,
  `description` varchar(140) NOT NULL,
  `reccomend` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favourite_things`
--

INSERT INTO `tbl_favourite_things` (`ID`, `image`, `title`, `description`, `reccomend`) VALUES
(1, 'boy_pablo.jpg', 'boy pablo', 'my fav indie-pop artist!', 'Song rec: Feeling Lonely'),
(2, 'pocky.jpg', 'pocky', 'my fav (also the best) snack', 'Flavour rec: ~the strawberry~ '),
(3, 'mangas.jpg', 'mangas', 'my fav form of literature ;-;', 'Manga rec: Mob Psycho 100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_favourite_things`
--
ALTER TABLE `tbl_favourite_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_favourite_things`
--
ALTER TABLE `tbl_favourite_things`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
