-- phpMyAdmin SQL Dump
<<<<<<< HEAD
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 02:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28
=======
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 06:08 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hd_departments`
--

CREATE TABLE `hd_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
=======
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- Dumping data for table `hd_departments`
--

INSERT INTO `hd_departments` (`id`, `name`, `status`) VALUES
(1, 'Technical', 1),
<<<<<<< HEAD
(2, 'Billing', 1),
(3, 'Service', 1),
(4, 'Account', 1),
(5, 'Termination', 1);
=======
(2, 'Testing', 1),
(3, 'Automation', 1),
(4, 'Design', 1),
(5, 'Programming', 1),
(7, 'Security', 1);
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

-- --------------------------------------------------------

--
-- Table structure for table `hd_tickets`
--

CREATE TABLE `hd_tickets` (
  `id` int(11) NOT NULL,
  `uniqid` varchar(20) NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `init_msg` text NOT NULL,
  `department` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `last_reply` int(11) NOT NULL,
  `user_read` int(11) NOT NULL,
  `admin_read` int(11) NOT NULL,
  `resolved` int(11) NOT NULL
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
=======
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- Dumping data for table `hd_tickets`
--

INSERT INTO `hd_tickets` (`id`, `uniqid`, `user`, `title`, `init_msg`, `department`, `date`, `last_reply`, `user_read`, `admin_read`, `resolved`) VALUES
<<<<<<< HEAD
(7, '64c3a8b0b60b9', 62, 'Ugly', 'Ugly', 3, '1690544304', 1, 0, 1, 1);
=======
(1, '617181b83c1e7', 1, 'System is not working', 'System is not working', 1, '1634828728', 1, 0, 1, 1),
(2, '61718394c0ad5', 2, 'There are some issue!!!!', 'There are some issue!!', 1, '1634829204', 2, 1, 0, 1),
(3, '617bfaa5ce86d', 1, 'zfsafsaf', 'zfsafsaf', 2, '1635515045', 1, 0, 0, 0),
(4, '617bfc35a93af', 2, 'There some glitches', 'There some glitches', 3, '1635515445', 2, 1, 0, 0),
(5, '617c0a73661fd', 1, 'there are secirty glitches!!!', 'there are secirty glitches', 1, '1635519091', 1, 0, 1, 0),
(6, '617c0ba6d462b', 2, 'there some issues', 'there some issues', 1, '1635519398', 2, 1, 0, 0);
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

-- --------------------------------------------------------

--
-- Table structure for table `hd_ticket_replies`
--

CREATE TABLE `hd_ticket_replies` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
=======
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- Dumping data for table `hd_ticket_replies`
--

INSERT INTO `hd_ticket_replies` (`id`, `user`, `text`, `ticket_id`, `date`) VALUES
<<<<<<< HEAD
(8, 1, 'weh', '7', '1690544475');
=======
(1, 1, 'This is fixed', '1', '1634829030'),
(2, 1, 'Please check it.', '1', '1634829129'),
(3, 1, 'The issue is fixed, you can check at your end. Thanks', '2', '1634829404'),
(4, 2, 'fixed', '2', '1635515403'),
(5, 2, 'this is fixed!', '4', '1635517083'),
(6, 1, 'I am looking into this', '5', '1635519340'),
(7, 2, 'ewtewt', '6', '1635519418');
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

-- --------------------------------------------------------

--
-- Table structure for table `hd_users`
--

CREATE TABLE `hd_users` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(250) NOT NULL,
  `user_type` enum('admin','user') NOT NULL,
<<<<<<< HEAD
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
=======
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- Dumping data for table `hd_users`
--

INSERT INTO `hd_users` (`id`, `email`, `password`, `create_date`, `name`, `user_type`, `status`) VALUES
<<<<<<< HEAD
(1, 'stone@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-29 23:24:33', 'Bato Dela Rosa', 'admin', 1),
(62, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-28 13:34:38', 'Test Tickles', 'user', 1);
=======
(1, 'admin@webdamn.com', '202cb962ac59075b964b07152d234b70', '2021-10-25 23:24:33', 'Kane Wiliam ', 'admin', 1),
(2, 'smith@webdamn.com', '202cb962ac59075b964b07152d234b70', '2021-10-25 23:24:46', 'Jhon Smith', 'user', 1);
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hd_departments`
--
ALTER TABLE `hd_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_tickets`
--
ALTER TABLE `hd_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_ticket_replies`
--
ALTER TABLE `hd_ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_users`
--
ALTER TABLE `hd_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hd_departments`
--
ALTER TABLE `hd_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hd_tickets`
--
ALTER TABLE `hd_tickets`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- AUTO_INCREMENT for table `hd_ticket_replies`
--
ALTER TABLE `hd_ticket_replies`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb

--
-- AUTO_INCREMENT for table `hd_users`
--
ALTER TABLE `hd_users`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
