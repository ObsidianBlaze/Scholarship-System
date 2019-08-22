-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2019 at 05:03 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarship_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `Admin_ID` int(11) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`Admin_ID`, `Admin_Password`) VALUES
(1, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `participants_info`
--

CREATE TABLE `participants_info` (
  `Participants_ID` int(1) NOT NULL COMMENT 'Participants Unique identity number.',
  `First_Name` varchar(30) NOT NULL COMMENT 'Participants First_Name.',
  `Last_Name` varchar(30) NOT NULL COMMENT 'Participants Last_Name',
  `Gender` char(1) NOT NULL COMMENT 'Participants Gender.',
  `Phone_Number` varchar(11) NOT NULL COMMENT 'Participants Phone_Number',
  `Email` varchar(30) NOT NULL COMMENT 'Participants Email_Address.',
  `DOB` date NOT NULL COMMENT 'Date of Birth of Participants.',
  `Exam_Time` varchar(15) NOT NULL COMMENT 'Time of exam. I.E Noon, Morning or Evening.',
  `Centre` varchar(20) NOT NULL COMMENT 'Center of the exam',
  `Passport` blob NOT NULL COMMENT 'Participants passport.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Creating a table for the participants.';

--
-- Dumping data for table `participants_info`
--

INSERT INTO `participants_info` (`Participants_ID`, `First_Name`, `Last_Name`, `Gender`, `Phone_Number`, `Email`, `DOB`, `Exam_Time`, `Centre`, `Passport`) VALUES
(1, 'Test', 'Test', 'M', '08044512365', 'emailtest@email.com', '2019-08-07', 'Noon', 'Ikorodu', 0x89504e470d0a1a0a0000000d49484452000000300000003008060000005702f98700000006624b474400ff00ff00ffa0bda7930000038e494441545809ed59dd4b1451143f7776f623571fec2dfa0bc24aac2c22424bb3885ea2d79eec93b054168d22327cd0c04233027ded3122fb00215083e8c5957ce9a9871e22a220d44293dd74e776eeb4bbddd9993b3b7367f6e36164efecbd67cec7ef77ee997befac00c15f9081200341062a9901522cf86afb813384d26e20b01328d417d3f7e53e81158cf58112faa06e66e1999d4f5b026bedcda340498f9d8392df23f45eedcc429f288e904036f34f4586e59423c8d3f1d9e473ab988a9590c9f4b2619d2a6814b08405388404507f0fb62af990bd22207604e222a30ac8eb4431ed08886caa4aee9d801a0620f89855889637029108c4fa07217ab91749b873a51e6a05f5608b67daaab487701862893b10dadd9477919e1803a05a7e2ceaa8ed27217aee2aea5280b00a9b6f6745aa45e5eed2c6b98b767641a8f1ff42a5b67440a4f30ace847d39e5c1b3b253149cbd04a887db38cfeebad204365e3e01bab26c88163e760aa2977a9184b55b56368cb8e199617c19198327e703eb480eecb56f5f2135d86722a1b67620891e13093df35dd70130eb79f7990ca4c786b08466f222b71d69022c9053123a7856f37ca619f8f161d89c7fc75c493755da326b982311bb3d02a47e6b560ac066820d329f3e82a96c7c02cffcb30a64dfa6b6d6b61f970893582850b66d87421296ca92e06b679396583d95100f303713850f36af0392e00d3e0a06be11607ef324d67fb3a1b1510ae987773dd7bcd129ae098502af63a5a111c8961ab31b7c80438dfb4cab9359d19dc4d719b05c6d383cea91e310bdd8ed2b09df085882cf6840d756390ab83af94cc21702d6e071931a1f82d4ad1ea0cb4b661217aef932139e0988c1ffdba4b4ef6cc7ee3793387a02a23e90f044a018f85cda4b49429a8053f00612c33781fefa9913e9df2ace44e4ec79bd2f73912610dab10b6b98db1cf13d203d396abbce6b5f3e436a20612a27baf44306bb6e234d20fd68044f91d91711b6c33a3c551aca0937b73f8f2761637a4a07237351658c741b4d83f4c47d7cabca406631699b795d9fbbe824866e40a8a109365ebfe0eeb8ef72356034767b98335afb3f2af961ce7fc8ce3c4a3f03cedc975ecb8e80c591b2f48004118ce7114ec98ec022a757e12e7d2f02202480bf4e8f888cca2d279a22c42224109f5b78853f6b0f961b6c613c026420fe667eba509e1b0b97d19c42f61f1ddd386ec616c3568e4f0a8324150a633573c929ec079f20034106820c546906fe023b833d053a5d61ab0000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `result_table`
--

CREATE TABLE `result_table` (
  `Admin_ID` int(11) NOT NULL,
  `Participants_ID` int(11) NOT NULL,
  `Result` varchar(20) NOT NULL,
  `Results_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_table`
--

INSERT INTO `result_table` (`Admin_ID`, `Participants_ID`, `Result`, `Results_ID`) VALUES
(1, 1, 'Excellent', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `participants_info`
--
ALTER TABLE `participants_info`
  ADD PRIMARY KEY (`Participants_ID`);

--
-- Indexes for table `result_table`
--
ALTER TABLE `result_table`
  ADD PRIMARY KEY (`Results_ID`),
  ADD KEY `Participants_ID` (`Participants_ID`),
  ADD KEY `Admin_ID` (`Admin_ID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participants_info`
--
ALTER TABLE `participants_info`
  MODIFY `Participants_ID` int(1) NOT NULL AUTO_INCREMENT COMMENT 'Participants Unique identity number.', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result_table`
--
ALTER TABLE `result_table`
  MODIFY `Results_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result_table`
--
ALTER TABLE `result_table`
  ADD CONSTRAINT `result_table_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `admin_table` (`Admin_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_table_ibfk_2` FOREIGN KEY (`Participants_ID`) REFERENCES `participants_info` (`Participants_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
