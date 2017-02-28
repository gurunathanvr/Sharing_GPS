-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2016 at 02:13 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sharing_gps`
--

-- --------------------------------------------------------

--
-- Table structure for table `connectedids`
--

CREATE TABLE IF NOT EXISTS `connectedids` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_uid` varchar(23) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connectedids`
--

INSERT INTO `connectedids` (`id`, `group_id`, `user_uid`, `created_at`, `updated_at`) VALUES
(41, 8, '5845c7cfc5c8f6.40858900', '2016-12-10 02:13:51', '2016-12-10 02:13:51'),
(42, 8, '584aa22f56e211.10784922', '2016-12-10 02:13:51', '2016-12-10 02:13:51'),
(43, 9, '5845c7cfc5c8f6.40858900', '2016-12-10 05:43:56', '2016-12-10 05:43:56'),
(44, 9, '584aa22f56e211.10784922', '2016-12-10 05:43:56', '2016-12-10 05:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL,
  `from_id` varchar(23) NOT NULL,
  `to_id` varchar(23) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `from_id`, `to_id`, `created_at`, `updated_at`) VALUES
(8, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', '2016-12-10 02:13:50', '2016-12-10 02:13:50'),
(9, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', '2016-12-10 05:43:56', '2016-12-10 05:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

CREATE TABLE IF NOT EXISTS `request_details` (
  `id` int(11) NOT NULL,
  `from_id` varchar(23) NOT NULL,
  `to_id` varchar(23) NOT NULL,
  `status` varchar(23) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`id`, `from_id`, `to_id`, `status`, `created_at`, `updated_at`) VALUES
(180, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', 'accept', '2016-12-10 01:26:18', '2016-12-10 01:26:18'),
(181, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', 'sending', '2016-12-10 02:08:33', '2016-12-10 02:08:33'),
(182, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', 'accept', '2016-12-10 02:13:29', '2016-12-10 02:13:29'),
(183, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', 'Cancelled', '2016-12-10 03:56:02', '2016-12-10 03:56:02'),
(184, '5845c7cfc5c8f6.40858900', '584aa22f56e211.10784922', 'accept', '2016-12-10 05:43:37', '2016-12-10 05:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gcm_registration_id` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`, `gcm_registration_id`) VALUES
(2, '5845c7cfc5c8f6.40858900', 'Manikandan', 'manicena13@gmail.com', 'VI4LM/jiwsdkby5lklKNPVfl+Eo1MjkwOTEyMTk2', '5290912196', '2016-12-06 01:32:23', NULL, 'cRI28VAqk8k:APA91bG5ecfFtkzXX3cIY3ijHd73WdxQvAQFG3Vu5etI2k-HwSf4hJEpsJg50iEJov8fHJ5zDBEyrZbKX3dMPzp0G_nGzEHdGmrEwWqJofTNHX2NowBD7dKmpMPZCN_WKtfvcTqqw6Us'),
(3, '5845c91518a731.74667751', 'Senthil', 'senthi@gmail.com', 'j2tV8tpzhQj7W8x6WizHPiErYoEzZWRjM2QyNmJm', '3edc3d26bf', '2016-12-06 01:37:49', NULL, 'fFlYgPoyT0A:APA91bG4-9pOFfA8Ws4DG52s486D_L2Wz-qS3twx3zGQG5ont-4hF1_CezLZnXd1j38Q7shHfP-SVs1-29JB6CyojGqEaexQj--ZLSyrBfBvWCEds3--kqSicnb1GsEpZNBvEygvfPR0'),
(4, '5849a90e924505.54924438', 'Senthil', 'Sen@gmail.com', 'BdZAKnHyKgvIfwTymvXc2I+EOpY0NGIwMDg3NzYw', '44b0087760', '2016-12-09 00:10:14', NULL, NULL),
(5, '584aa22f56e211.10784922', 'Sam', 'sam@gmail.com', 'JpYKiWj2KGz+A7JDVZ6bXwE8QLJjODY1MTIwYzgw', 'c865120c80', '2016-12-09 17:53:11', NULL, 'eM0hfGWosZY:APA91bGspvhe8O04ftP-bEcdYehMvT3H_QwFyiLI1qEI9j9rMtTysGEvvSTSdy6jOlOsRAglIAI1ozGn64ygoCxOuxWlLguYFDhCzp0RTe1n6GupaTyzwNQQPVrYQxzobJuNelOkUzFD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connectedids`
--
ALTER TABLE `connectedids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `request_details`
--
ALTER TABLE `request_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connectedids`
--
ALTER TABLE `connectedids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `request_details`
--
ALTER TABLE `request_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
