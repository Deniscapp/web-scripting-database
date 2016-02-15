-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 15, 2016 at 12:25 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `WS-2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `CAR`
--

CREATE TABLE `CAR` (
  `ID` int(11) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CAR`
--

INSERT INTO `CAR` (`ID`, `Brand`, `Name`, `Year`) VALUES
(1, 'Audi', 'TT', 2014),
(2, 'Ford', 'Focus', 2015),
(3, 'Mercedes', 'Benz S-Class', 2016),
(4, 'Mercedes', 'Benz Z-Class', 2016),
(5, 'Lamborghini', 'Huracán LP 580-2', 2015),
(6, 'Lamborghini', 'Aventador LP 700-4', 2016),
(7, 'Ford', 'Mustang', 2012),
(8, 'Ford', 'Escape', 2013),
(9, 'Volkswagen', 'Jetta', 2016),
(10, 'Volkswagen', 'Golf', 2010),
(11, 'Audi', 'R4', 2013),
(12, 'Lamborghini', 'Asterion LPI 910-4 ', 2016),
(13, 'Volkswagen', 'Tiguan', 2012),
(14, 'Porsche', 'Cayenne', 2016),
(15, 'Audi', 'A3', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `DOG`
--

CREATE TABLE `DOG` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Kind` varchar(20) NOT NULL,
  `Sex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DOG`
--

INSERT INTO `DOG` (`ID`, `Name`, `Kind`, `Sex`) VALUES
(1, 'Lucy', 'Poodle', 'Female'),
(2, 'Bill', 'Poodle', 'Male'),
(3, 'John', 'Barbet', 'Male'),
(4, 'Daniel', 'Chow Chow', 'Male'),
(5, 'Maria', 'Cocker Spaniel', 'Female'),
(6, 'Paul', 'Barbet', 'Male'),
(7, 'George', 'Cane Corso', 'Male'),
(8, 'Nico', 'Chow Chow', 'Female'),
(9, 'Natalie', 'Dalmatian', 'Female'),
(10, 'Peter', 'French Bulldog', 'Male'),
(11, 'Heidi', 'Poodle', 'Female'),
(12, 'Hans', 'Dalmatian', 'Male'),
(13, 'Kaiser', 'Barbet', 'Male'),
(14, 'Bella', 'Barbet', 'Female'),
(15, 'Blue', 'Chow Chow', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

CREATE TABLE `PERSON` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`ID`, `FirstName`, `LastName`, `Email`) VALUES
(1, 'Denis', 'Cappelini', 'denis_cappelini@hotmail.com'),
(2, 'Matheus', 'Fernandes', 'matheus.fernandes@gmail.com'),
(3, 'Debora', 'Cappelini', 'deboracapp@hotmail.com'),
(4, 'Daniel', 'Rossi', 'daniel_rossi@gmail.com'),
(5, 'Victor', 'Grilli', 'victorgrilli@gmail.com'),
(6, 'Murilo', 'Pratavieira', 'muriloprata@gmail.com'),
(7, 'Iuri', 'Gaspar', 'iuraogasp@gmail.com'),
(8, 'Joao', 'Baldan', 'joaobaldan@gmail.com'),
(9, 'Paulo', 'Filizzola', 'paulofiliz@gmail.com'),
(10, 'Marcos', 'Cardillo', 'marcoscard@gmail.com'),
(11, 'Vera', 'Rossi', 'verarossi@hotmail.com'),
(12, 'Jennifer', 'Lu', 'jnniferlu@gmail.com'),
(13, 'Alice', 'Cheng', 'alicecheng@gmail.com'),
(14, 'Mario', 'Cappelini', 'mariocapp@gmail.com'),
(15, 'Marcus', 'Mourao', 'marcusmourao@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CAR`
--
ALTER TABLE `CAR`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `DOG`
--
ALTER TABLE `DOG`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `PERSON`
--
ALTER TABLE `PERSON`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);
