-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2017 at 06:56 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final-group-chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `pin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `message`, `user_id`, `group_id`, `pin`) VALUES
(37, 'Adeel Here', 17, 35, 0),
(38, 'adeel here', 17, 36, 0),
(39, 'adeel here', 17, 37, 0),
(40, 'adeel here', 17, 38, 0),
(41, 'helloo', 17, 35, 0),
(42, 'Mateen here', 20, 37, 0),
(43, 'hassan here', 19, 38, 0),
(44, 'hi', 19, 38, 0),
(45, 'hellllooo', 19, 38, 0),
(46, 'hello', 17, 36, 0),
(47, 'testing', 17, 36, 0),
(48, '123 123', 17, 36, 0),
(49, 'hi', 17, 35, 0),
(50, 'good morning', 17, 35, 0),
(51, 'good morning', 17, 36, 0),
(52, 'good morning', 17, 37, 0),
(53, 'good morning', 17, 38, 0),
(54, 'good evening', 17, 35, 0),
(55, 'asdasd', 17, 35, 0),
(56, 'asdasd', 17, 36, 0),
(57, 'asdasd', 17, 37, 0),
(58, 'asdasd', 17, 38, 0),
(59, 'SHahher here', 24, 40, 0),
(60, 'Adeel hello', 17, 35, 0),
(61, 'heelo world', 18, 37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `total_chats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `creator_id`, `total_chats`) VALUES
(35, 'Adeel group', 17, 7),
(36, 'Usama group', 18, 6),
(37, 'Mateen group', 20, 5),
(38, 'Hassan group', 19, 6),
(39, 'Aamir group', 21, 0),
(40, 'Shaheer group', 24, 1),
(41, 'Shahher 2', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`) VALUES
(17, 'Adeel'),
(18, 'Usama'),
(19, 'Hassan'),
(20, 'Mateen'),
(21, 'Aamir'),
(22, 'A'),
(23, 'Ma'),
(24, 'Shaheer');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_groups_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `read_chats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_groups_id`, `user_id`, `group_id`, `read_chats`) VALUES
(17, 17, 35, 7),
(18, 21, 35, 0),
(19, 19, 35, 6),
(20, 18, 36, 6),
(21, 20, 36, 1),
(22, 17, 36, 6),
(23, 20, 37, 5),
(24, 18, 37, 5),
(25, 19, 37, 0),
(26, 21, 37, 0),
(27, 17, 37, 5),
(28, 19, 38, 4),
(29, 21, 38, 0),
(30, 17, 38, 6),
(31, 18, 38, 6),
(32, 21, 39, 0),
(33, 20, 39, 0),
(34, 24, 40, 1),
(35, 17, 40, 1),
(36, 19, 40, 0),
(37, 21, 40, 0),
(38, 24, 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_chats`
--

CREATE TABLE `user_chats` (
  `chat_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `pin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_chats`
--

INSERT INTO `user_chats` (`chat_id`, `message`, `sender_id`, `receiver_id`, `pin`) VALUES
(1, 'Helo Adeel here', 17, 18, 0),
(2, 'hello usama', 17, 18, 0),
(3, 'Usama here', 18, 17, 0),
(4, 'testing', 17, 18, 0),
(5, '123 123', 18, 17, 0),
(6, 'notification test', 17, 18, 0),
(7, 'once more', 17, 18, 0),
(8, 'hello hassan adeel here', 17, 19, 0),
(9, 'hello adeel', 19, 17, 0),
(10, 'Hello mateen usama here', 18, 20, 0),
(11, 'testing ', 17, 18, 0),
(12, '123', 17, 18, 0),
(13, 'hello hello', 17, 18, 0),
(14, 'hello aamir usama here', 18, 21, 0),
(15, 'aamir', 21, 18, 0),
(16, 'testing', 21, 18, 0),
(17, 'usama here', 18, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_conn`
--

CREATE TABLE `user_conn` (
  `conn_id` int(11) NOT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `read_chats` int(11) NOT NULL,
  `total_chats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_conn`
--

INSERT INTO `user_conn` (`conn_id`, `user1_id`, `user2_id`, `read_chats`, `total_chats`) VALUES
(2, 17, 18, 10, 10),
(3, 18, 17, 7, 10),
(4, 17, 19, 2, 2),
(5, 19, 17, 2, 2),
(6, 17, 17, 0, 0),
(7, 17, 17, 0, 0),
(8, 18, 20, 1, 1),
(9, 20, 18, 0, 1),
(10, 18, 21, 4, 4),
(11, 21, 18, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_groups_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_chats`
--
ALTER TABLE `user_chats`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `user_conn`
--
ALTER TABLE `user_conn`
  ADD PRIMARY KEY (`conn_id`),
  ADD KEY `user1_id` (`user1_id`),
  ADD KEY `user2_id` (`user2_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `user_groups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_chats`
--
ALTER TABLE `user_chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_conn`
--
ALTER TABLE `user_conn`
  MODIFY `conn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_chats`
--
ALTER TABLE `user_chats`
  ADD CONSTRAINT `user_chats_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_chats_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_conn`
--
ALTER TABLE `user_conn`
  ADD CONSTRAINT `user_conn_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_conn_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
