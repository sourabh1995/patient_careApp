-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2017 at 02:19 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patientcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `doctor_id`, `appointment_date`, `created`, `modified`) VALUES
(1, 2, 2, '2017-05-13 15:36:00', '2017-05-11 15:37:13', '2017-05-11 15:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `carrier_name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`id`, `name`, `carrier_name`, `created`, `modified`) VALUES
(1, 'Bokaro General Hospital', 'BKSC01', '2017-05-11 15:30:23', '2017-05-11 15:30:23'),
(2, 'Appollo Bhubaneswar', 'AppBbs01', '2017-05-11 15:31:15', '2017-05-11 15:31:15'),
(3, 'KIMS', 'KIMSBbs02', '2017-05-11 15:31:47', '2017-05-11 15:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accepeting_patients` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `accepeting_patients`, `created`, `modified`) VALUES
(1, 'Dr Shradha', 1, '2017-05-11 15:35:38', '2017-05-11 15:35:38'),
(2, 'Dr Pankaj', 1, '2017-05-11 15:35:49', '2017-05-11 15:35:49'),
(3, 'Dr Neerav', 0, '2017-05-11 15:36:04', '2017-05-11 15:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `services` varchar(255) NOT NULL,
  `due` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `patient_id`, `amount`, `services`, `due`, `created`, `modified`) VALUES
(1, 2, '500', 'Xray', '2017-05-13', '2017-05-13 12:17:11', '2017-05-13 12:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `carrier_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `carrier_id`, `name`, `street_address`, `city`, `state`, `zipcode`, `email`, `phone`, `created`, `modified`) VALUES
(1, 1, 'Sourabh Akash', 'KIIT University Bhubaneswar', 'Bhubaneswar', 'Odisha', '751024', 'sourabh.akash0123@gmail.com', '9583785500', '2017-05-11 15:33:21', '2017-05-11 15:33:21'),
(2, 2, 'Jone', 'Silicon', 'Bhubaneswar', 'Odisha', '751024', 'jone.doe@gmail.com', '8888888889', '2017-05-11 15:35:14', '2017-05-11 15:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(550) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created`, `modified`) VALUES
(2, 'Sourabh Akash', 'sourabh.akash0123@gmail.com', '$2y$10$.ujP8fGYeIhOahsY41T1xeMH3Uft9et0UaEkZyaCdo2uWx11RJKlq', '2017-05-13 10:07:35', '2017-05-13 10:07:35'),
(3, 'Sourabh Akash', 'akash@gmail.com', '$2y$10$AU48D3VDL351gG1PDyiOM.bFf/6qPLzhyvWBxTyxj3jeNIbY1CWz2', '2017-05-13 10:42:15', '2017-05-13 10:42:15'),
(4, 'Sourabh Akash', 'b@gmail.com', '$2y$10$J7.sKtRoUuQMq9oRWdsHHevpxiunlGPXTNVlDRB6EUZfXwN.kQYA6', '2017-05-13 11:28:47', '2017-05-13 11:28:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
