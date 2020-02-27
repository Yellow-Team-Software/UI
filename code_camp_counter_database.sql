-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2020 at 10:18 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_camp_counter`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_password`
--

CREATE TABLE `daily_password` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_password`
--

INSERT INTO `daily_password` (`id`, `password`) VALUES
(1, '124');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `user_submit` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `beginning_count` int(11) NOT NULL,
  `middle_count` int(11) NOT NULL,
  `end_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `room_name`, `user_submit`, `session`, `speaker`, `post_date`, `beginning_count`, `middle_count`, `end_count`) VALUES
(62, 'room1', 'Jack Doherty', 'Auditorium', 'Donald Trump', '2020-02-27', 123, 213, 132),
(63, 'room1', 'Barack Obama', 'Auditorium', 'Donald Trump', '2020-02-27', 12, 12, 12),
(64, 'room1', 'Barack Obama', 'Auditorium', 'Donald Trump', '2020-02-27', 123, 123, 123),
(65, 'room1', 'Barack Obama', 'Auditorium', 'Donald Trump', '2020-02-27', 123, 123, 123),
(66, 'room1', 'Jack Doherty', 'Auditorium', 'Donald Trump', '2020-02-27', 123, 123, 123),
(67, 'room1', 'Jack Doherty', 'Auditorium', 'Donald Trump', '2020-02-27', 123, 123, 123);

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `code`, `email`) VALUES
(1, '15e58200c4b59b', 'jjdjack123@gmail.com'),
(2, '15e58202c341bd', 'jjdjack123@gmail.com'),
(3, '15e58202dadf05', 'jjdjack123@gmail.com'),
(4, '15e582074aed2d', 'jjdjack123@gmail.com'),
(5, '15e582101204cb', 'jjdjack123@gmail.com'),
(6, '15e582116ccf22', 'jjdjack123@gmail.com'),
(7, '15e5821872b7b2', 'jjdjack123@gmail.com'),
(8, '15e582188aa82c', 'jjdjack123@gmail.com'),
(9, '15e5822612d6c4', 'jjdjack123@gmail.com'),
(10, '15e58306e9ea26', 'jjdjack123@gmail.com'),
(11, '15e5830734bc06', '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `capacity`) VALUES
(1, 'room1', '256'),
(2, 'room2', '365'),
(3, 'room3', '325');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `name`, `speaker`, `duration`, `room`) VALUES
(1, 'Auditorium', 'Steve Jobs', '60 minutes', 'room1'),
(2, 'Gym', 'Charles Wiseman', '60', 'Gym');

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `presentation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`id`, `name`, `email`, `phone`, `presentation`) VALUES
(1, 'Donald Trump', 'DTrump@gmail.com', '339-236-1234', 'april'),
(2, 'Ron Krawitz', 'Krawitz@gmail.com', '123-456-7891', 'p1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `num_submits` int(11) NOT NULL,
  `signup_date` varchar(255) NOT NULL,
  `login_date` varchar(255) NOT NULL,
  `user_closed` varchar(255) NOT NULL,
  `usertype` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `num_submits`, `signup_date`, `login_date`, `user_closed`, `usertype`) VALUES
(5, 'Jack', 'Doherty', 'jjdjack123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, '2020-02-24', '2020-02-27 4:15 pm', 'no', 2),
(6, 'Steve', 'Jobs', 'sjobs@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '2020-02-24', '2020-02-24 3:03 am', 'no', 1),
(7, 'Mark', 'Zuckerburg', 'mzuckerburg@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '2020-02-24', '', 'no', 1),
(8, 'Ron', 'Krawitz', 'rkrawitz@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '2020-02-27', '', 'no', 1),
(9, 'Barack', 'Obama', 'bobama@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, '2020-02-27', '2020-02-27 3:52 pm', 'no', 1),
(10, 'Test', 'Test', 'testaccount@gmail.com', 'e16b2ab8d12314bf4efbd6203906ea6c', 0, '2020-02-27', '2020-02-27 3:55 pm', 'no', 1),
(11, 'Andrew', 'Iee', 'abc@email.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '2020-02-27', '2020-02-27 4:01 pm', 'no', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_password`
--
ALTER TABLE `daily_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speaker`
--
ALTER TABLE `speaker`
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
-- AUTO_INCREMENT for table `daily_password`
--
ALTER TABLE `daily_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
