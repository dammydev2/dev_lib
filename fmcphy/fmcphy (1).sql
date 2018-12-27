-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 11:21 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fmcphy`
--

-- --------------------------------------------------------

--
-- Table structure for table `lower`
--

CREATE TABLE `lower` (
  `id` int(11) NOT NULL,
  `tp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lower`
--

INSERT INTO `lower` (`id`, `tp`) VALUES
(1, 'Extensor Diagitrum Longus'),
(2, 'Extensor Hollucis Longus '),
(3, 'Flexor Digitorum Longus '),
(4, 'Flexor Hallucis Longus '),
(5, 'Tibialis Anterior'),
(6, 'Gastorcnemius'),
(7, 'Peroneals'),
(8, 'Quadriceps'),
(9, 'Hamstrings'),
(10, 'Hip Flexors'),
(11, 'Hip Extensors '),
(12, 'Hip Internal Rotators'),
(13, 'Hip External Rotators ');

-- --------------------------------------------------------

--
-- Table structure for table `lowerlimb`
--

CREATE TABLE `lowerlimb` (
  `id` int(11) NOT NULL,
  `Extensor Diagitrum Longus` varchar(255) NOT NULL,
  `Extensor Hollucis Longus` varchar(255) NOT NULL,
  `Flexor Digitorum Longus` varchar(255) NOT NULL,
  `Flexor Hallucis Longus` varchar(255) NOT NULL,
  `Tibialis Anterior` varchar(255) NOT NULL,
  `Gastorcnemius` varchar(255) NOT NULL,
  `Peroneals` varchar(255) NOT NULL,
  `Quadriceps` varchar(255) NOT NULL,
  `Hamstrings` varchar(255) NOT NULL,
  `Hip Flexors` varchar(255) NOT NULL,
  `Hip Extensors` varchar(255) NOT NULL,
  `Hip Internal Rotators` varchar(255) NOT NULL,
  `Hip External Rotators` varchar(255) NOT NULL,
  `date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patientnum` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `physician` varchar(100) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `diagnosis` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patientnum`, `name`, `age`, `address`, `sex`, `physician`, `ward`, `diagnosis`, `date`) VALUES
(1, 12, 'young', 27, '6 goshen street afobaje estate ota', 'female', 'adebowale', '5b', 'fever', '2018-08-09 02:02:53'),
(5, 556, 'olutayo', 45, '6 goshen street afobaje estate ota ', 'male', 'dr. jinaid', '46', 'fever', '2018-08-14 10:15:47'),
(6, 234, 'yakubu', 27, 'abeokuta', 'male', 'sdfasag', '5b', 'fever', '2018-08-10 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(200) NOT NULL,
  `issue` varchar(200) NOT NULL,
  `plain` varchar(200) NOT NULL,
  `limb` varchar(200) NOT NULL,
  `dt` varchar(10) NOT NULL,
  `num` varchar(200) NOT NULL,
  `tp` varchar(100) NOT NULL,
  `analysis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `issue`, `plain`, `limb`, `dt`, `num`, `tp`, `analysis`) VALUES
(1, ' Flexor Digitorum Longus  ', 'eeeeeeeeeeeeee', 'Right', '2018/08/10', '234', 'LOWER', ''),
(2, ' Hamstrings ', 'kkkkkkkkkkkkkkk', 'Left', '2018/08/10', '234', 'LOWER', ''),
(3, ' Hip External Rotators  ', 'yyyyyyyyyyyyyyyyyy', 'Right', '2018/08/10', '234', 'LOWER', ''),
(4, ' Elbow Flexors ', 'tttttttttttttttt', 'Left', '2018/08/10', '234', 'UPPER', ''),
(5, ' Shoulder External Rotators ', 'iiiiiiiiiiiiii', 'Right', '2018/08/10', '234', 'UPPER', ''),
(6, ' Pronators Of Forearm ', 'kkkkkkkkkkkkkk', 'Left', '2018/08/10', '234', 'UPPER', ''),
(7, ' Extensor Diagitrum Longus ', 'ggggggggggggg', 'Right', '2018/08/10', '12', 'LOWER', 'the real analysis'),
(8, ' Hip External Rotators  ', 'tttttttttttttt', 'Left', '2018/08/10', '12', 'LOWER', 'the real analysis');

-- --------------------------------------------------------

--
-- Table structure for table `upper`
--

CREATE TABLE `upper` (
  `id` int(11) NOT NULL,
  `tp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upper`
--

INSERT INTO `upper` (`id`, `tp`) VALUES
(1, 'Finger Extensor'),
(2, 'Finger Flexors'),
(3, 'Wrist Extensors'),
(4, 'Wrist Flexors'),
(5, 'Supinators Of Forearm'),
(6, 'Pronators Of Forearm'),
(7, 'Elbow Extensors'),
(8, 'Elbow Flexors'),
(9, 'Shoulder Extensors'),
(10, 'Shoulder Flexors'),
(11, 'Shoulder Abductors'),
(12, 'Shoulder Internal Rotators'),
(13, 'Shoulder External Rotators'),
(14, 'Elevator Of Shoulder Girdle'),
(15, 'Back Extensors');

-- --------------------------------------------------------

--
-- Table structure for table `upperlimb`
--

CREATE TABLE `upperlimb` (
  `id` int(11) NOT NULL,
  `Finger Extensor` varchar(255) NOT NULL,
  `Finger Flexors` varchar(255) NOT NULL,
  `Wrist Extensors` varchar(255) NOT NULL,
  `Wrist Flexors` varchar(255) NOT NULL,
  `Supinators Of Forearm` varchar(255) NOT NULL,
  `Pronators Of Forearm` varchar(255) NOT NULL,
  `Elbow Extensors` varchar(255) NOT NULL,
  `Elbow Flexors` varchar(255) NOT NULL,
  `Shoulder Extensors` varchar(255) NOT NULL,
  `Shoulder Flexors` varchar(255) NOT NULL,
  `Shoulder Abductors` varchar(255) NOT NULL,
  `Shoulder Internal Rotators` varchar(255) NOT NULL,
  `Shoulder External Rotators` varchar(255) NOT NULL,
  `Elevator Of Shoulder Girdle` varchar(255) NOT NULL,
  `Back Extensors` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `date`) VALUES
(1, 'Admin', 'Admin@gmail.com', 'Admin', '2018-08-05 21:43:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lower`
--
ALTER TABLE `lower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowerlimb`
--
ALTER TABLE `lowerlimb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phynum` (`patientnum`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upper`
--
ALTER TABLE `upper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upperlimb`
--
ALTER TABLE `upperlimb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lower`
--
ALTER TABLE `lower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lowerlimb`
--
ALTER TABLE `lowerlimb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `upper`
--
ALTER TABLE `upper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `upperlimb`
--
ALTER TABLE `upperlimb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
