-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 06:10 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa`
--

CREATE TABLE `aa` (
  `EMPLOYEE_NUMBER` int(11) NOT NULL,
  `AA_SPECIALTY` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aa`
--

INSERT INTO `aa` (`EMPLOYEE_NUMBER`, `AA_SPECIALTY`) VALUES
(17, 'Data Analyst'),
(18, 'Bookkeeping'),
(19, 'Data Analyst'),
(20, 'Bookkeeping');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `EMPLOYEE_NUMBER` int(11) NOT NULL,
  `DOCTOR_SPECIALTY` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`EMPLOYEE_NUMBER`, `DOCTOR_SPECIALTY`) VALUES
(1, 'Pediatrics'),
(2, 'Surgery'),
(3, 'Oncologist'),
(4, 'Anesthesiologist'),
(5, 'Pediatric'),
(6, 'Cancer'),
(7, 'Lung'),
(8, 'Ear, Nose, Throat');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_NUMBER` int(11) NOT NULL,
  `WARD_NUMBER` int(11) NOT NULL,
  `EMPLOYEE_NAME` varchar(45) NOT NULL,
  `EMPLOYEE_ADDRESS` varchar(45) NOT NULL,
  `EMPLOYEE_PHONE` varchar(45) NOT NULL,
  `EMPLOYEE_EMAIL` varchar(45) NOT NULL,
  `EMPLOYEE_TITLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_NUMBER`, `WARD_NUMBER`, `EMPLOYEE_NAME`, `EMPLOYEE_ADDRESS`, `EMPLOYEE_PHONE`, `EMPLOYEE_EMAIL`, `EMPLOYEE_TITLE`) VALUES
(1, 1, 'Ted Bundy', '12345 Bundy Street, 48023', '6054756968', 'TbunMuffin@Hospital.org', 0),
(2, 1, 'Sponge Bob', '54321 Bundy Street, 48023', '6054756960', 'Sbob@Hospital.org', 0),
(3, 4, 'Trevor Buza', '54341 Bundy Street, 48023', '6054756967', 'Tbuza@Hospital.org', 0),
(4, 4, 'Bryce Waters', '32513 Bundy Street, 48023', '6054756964', 'Bwaters@Hospital.org', 0),
(5, 3, 'Fat Albert', '47565 Vernier Lane, 48023', '5055034455', 'Falbert@Hospital.org', 0),
(6, 3, 'John Zoidberg', '47545 underwater road, 48023', '9512623062', 'JZoidberg@Hospital.org', 0),
(7, 2, 'Derek Shepherd', '75649 People road, 48045', '6054756961', 'Dsheperd@Hospital.org', 0),
(8, 2, 'Hershel Greene', '76493 Farm road, 48089', '8005555555', 'HGreene@Hospital.org', 0),
(9, 1, 'King Saltmarshe', '59774 Lotheville Place, 48589', '9485256305', 'ksaltmarshe@Hospital.org', 1),
(10, 1, 'Janaye Hadcock', '89713 Algoma Drive, 48789', '1753647540', 'jhadcock1@chronoengine.com', 1),
(11, 2, 'Web Attryde', '676 Gale Terrace, 48780', '8053974032', 'wattryde2@behance.net', 1),
(12, 2, 'Jaquelin Robison', '88232 Grim Drive, 57463', '6353947682', 'jrobison3@shinystat.com', 1),
(13, 3, 'Arlinda Stronge', '88232 Grim Drive, 57463', '6353947682', 'jrobison3@shinystat.com', 1),
(14, 3, 'Robinet Sparey', '804 Fairview Court, 57456', '4242134755', 'rsparey5@t-online.de', 1),
(15, 4, 'Ken Chilcotte', '26 Buhler Court, 58750', '7811335426', 'kchilcotte6@addtoany.com', 1),
(16, 4, 'Glen Wraith', '0715 Di Loreto Park, 58750', '4563348850', 'gwraith7@dot.gov', 1),
(17, 1, 'Bendicty Quinell', '09787 Di Loreto Park, 58750', '5843248013', 'bquinellk@hospital.org', 2),
(18, 2, 'Emanuel Hold', '1567 Elmside Park, 87878', '4988325230', 'eholdf@hospital.gov', 2),
(19, 3, 'Rae McKag', '36146 Buell Hill, 67465', '8415168244', 'rmckagj@wiley.com', 2),
(20, 4, 'Pepe Roswarn', '792 Armistice Junction, 67465', '1288104535', 'proswarnn@ucoz.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `EMPLOYEE_NUMBER` int(11) NOT NULL,
  `NURSE_SPECIALTY` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`EMPLOYEE_NUMBER`, `NURSE_SPECIALTY`) VALUES
(9, 'Diabetes'),
(10, 'GI'),
(11, 'Bloodwork'),
(12, 'Pulmonology'),
(13, 'Wound Care'),
(14, 'Surgery'),
(15, 'Genetics'),
(16, 'Pain Management');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENT_NUMBER` int(11) NOT NULL,
  `PATIENT_NAME` varchar(45) DEFAULT NULL,
  `PATIENT_AGE` varchar(45) DEFAULT NULL,
  `WARD_NUMBER` int(11) NOT NULL,
  `PATIENT_ADDRESS` varchar(45) NOT NULL,
  `PATIENT_PHONE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENT_NUMBER`, `PATIENT_NAME`, `PATIENT_AGE`, `WARD_NUMBER`, `PATIENT_ADDRESS`, `PATIENT_PHONE`) VALUES
(1, 'Amy Myers', '42', 1, '4899 Coolidge Street, 12315', '4068756873'),
(2, 'Brittney Garner', '47', 2, '4941 Neville Street, 47562', '8126368463'),
(3, 'John Stillwell', '34', 3, '4455 Nelm Street, 22070', '5717488479'),
(4, 'Ruth G Pena', '28', 4, '225 Hilltop Drive, 79101', '8063711918'),
(5, 'Tony Honeycutt', '52', 1, '4422 Woodrow Way, 77340', '9632931605'),
(6, 'Donna Alder', '49', 2, '709 Garrett Street, 49085', '2692356652'),
(7, 'Claire Ruiz', '44', 3, '4758 Hickory Ridge, 89120', '7027770511'),
(8, 'Betty Lang', '72', 4, '3602 Waltz Road, 14202', '5853728427'),
(9, 'Patrick McDaniel', '65', 1, '608 Wildrose Lane, 48075', '3137690511'),
(11, 'Melanie Bernhard', '27', 3, '3563 Saint Francis Way, 19146', '2672199008'),
(12, 'Mark Streeter', '35', 1, '4425 Agriculture Lane, 33179', '7864173245'),
(15, 'Alex Gamache', '21', 1, '62123 Main Street', '87234873432');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_NUMBER` varchar(11) NOT NULL,
  `FLOOR_NUMBER` int(11) NOT NULL,
  `WARD_NUMBER` int(11) NOT NULL,
  `PATIENT_NUMBER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_NUMBER`, `FLOOR_NUMBER`, `WARD_NUMBER`, `PATIENT_NUMBER`) VALUES
('C01', 3, 3, 3),
('C02', 3, 3, 7),
('C03', 3, 3, 11),
('C04', 3, 3, NULL),
('C05', 3, 3, NULL),
('C06', 3, 3, NULL),
('C07', 3, 3, NULL),
('C08', 3, 3, NULL),
('C09', 3, 3, NULL),
('C10', 3, 3, NULL),
('C11', 3, 3, NULL),
('C12', 3, 3, NULL),
('E01', 1, 1, 1),
('E02', 1, 1, 5),
('E03', 1, 1, 9),
('E04', 1, 1, NULL),
('E05', 1, 1, NULL),
('E06', 1, 1, 15),
('E07', 1, 1, NULL),
('E08', 1, 1, NULL),
('E09', 1, 1, NULL),
('E10', 1, 1, NULL),
('E11', 1, 1, NULL),
('E12', 1, 1, NULL),
('N01', 4, 4, 4),
('N02', 4, 4, 8),
('N03', 4, 4, 12),
('N04', 4, 4, NULL),
('N05', 4, 4, NULL),
('N06', 4, 4, NULL),
('N07', 4, 4, NULL),
('N08', 4, 4, NULL),
('N09', 4, 4, NULL),
('N10', 4, 4, NULL),
('N11', 4, 4, NULL),
('N12', 4, 4, NULL),
('R01', 2, 2, 2),
('R02', 2, 2, 6),
('R03', 2, 2, NULL),
('R04', 2, 2, NULL),
('R05', 2, 2, NULL),
('R06', 2, 2, NULL),
('R07', 2, 2, NULL),
('R08', 2, 2, NULL),
('R09', 2, 2, NULL),
('R10', 2, 2, NULL),
('R11', 2, 2, NULL),
('R12', 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `WARD_NUMBER` int(11) NOT NULL,
  `WARD_NAME` varchar(45) NOT NULL,
  `WARD_PHONE` varchar(45) NOT NULL,
  `WARD_EMAIL` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`WARD_NUMBER`, `WARD_NAME`, `WARD_PHONE`, `WARD_EMAIL`) VALUES
(1, 'Emergency', '8273021421', 'emergency@hospital.com'),
(2, 'Radiology', '2314203493', 'radiology@hospital.com'),
(3, 'Cardiology', '5039483234', 'cardiology@hospital.com'),
(4, 'Neurology', '5323432532', 'neurology@hospital.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aa`
--
ALTER TABLE `aa`
  ADD PRIMARY KEY (`EMPLOYEE_NUMBER`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`EMPLOYEE_NUMBER`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_NUMBER`),
  ADD KEY `fk_EMPLOYEE_DEPARTMENT1_idx` (`WARD_NUMBER`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`EMPLOYEE_NUMBER`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENT_NUMBER`),
  ADD KEY `fk_PATIENT_DEPARTMENT1_idx` (`WARD_NUMBER`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ROOM_NUMBER`),
  ADD KEY `fk_ROOM_WARD1_idx` (`WARD_NUMBER`),
  ADD KEY `PATIENT_NUMBER` (`PATIENT_NUMBER`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`WARD_NUMBER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aa`
--
ALTER TABLE `aa`
  MODIFY `EMPLOYEE_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `EMPLOYEE_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `EMPLOYEE_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PATIENT_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aa`
--
ALTER TABLE `aa`
  ADD CONSTRAINT `fk_AA1` FOREIGN KEY (`EMPLOYEE_NUMBER`) REFERENCES `employee` (`EMPLOYEE_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `fk_DOCTOR_EMPLOYEE1` FOREIGN KEY (`EMPLOYEE_NUMBER`) REFERENCES `employee` (`EMPLOYEE_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_EMPLOYEE_DEPARTMENT1` FOREIGN KEY (`WARD_NUMBER`) REFERENCES `ward` (`WARD_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `fk_NURSE_EMPLOYEE1` FOREIGN KEY (`EMPLOYEE_NUMBER`) REFERENCES `employee` (`EMPLOYEE_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `fk_PATIENT_DEPARTMENT1` FOREIGN KEY (`WARD_NUMBER`) REFERENCES `ward` (`WARD_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_ROOM_WARD1` FOREIGN KEY (`WARD_NUMBER`) REFERENCES `ward` (`WARD_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`PATIENT_NUMBER`) REFERENCES `patient` (`PATIENT_NUMBER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
