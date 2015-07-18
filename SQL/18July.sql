-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 18, 2015 at 10:53 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `BOOKINGDB`
--
CREATE DATABASE IF NOT EXISTS `BOOKINGDB` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `BOOKINGDB`;

-- --------------------------------------------------------

--
-- Table structure for table `ADDMT`
--

DROP TABLE IF EXISTS `ADDMT`;
CREATE TABLE IF NOT EXISTS `ADDMT` (
  `ADRID` bigint(16) NOT NULL COMMENT 'Address ID',
  `STRET` varchar(100) DEFAULT NULL COMMENT 'Street',
  `LNDMK` varchar(40) DEFAULT NULL COMMENT 'Landmark',
  `LOCLT` varchar(40) DEFAULT NULL COMMENT 'Locality',
  `CTYID` bigint(20) DEFAULT NULL COMMENT 'City ID',
  `PINCD` char(6) DEFAULT NULL COMMENT 'Pincode',
  `LONGT` decimal(9,7) DEFAULT NULL COMMENT 'Longitude',
  `LATIT` decimal(9,7) DEFAULT NULL COMMENT 'Latitude',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'ON/OFF',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Address Master';

--
-- Truncate table before insert `ADDMT`
--

TRUNCATE TABLE `ADDMT`;
--
-- Dumping data for table `ADDMT`
--

INSERT INTO `ADDMT` (`ADRID`, `STRET`, `LNDMK`, `LOCLT`, `CTYID`, `PINCD`, `LONGT`, `LATIT`, `CHNDT`, `CRTDT`, `ACTIV`, `CHNBY`, `CRTBY`) VALUES
(1, '17-B, Main Road', 'Near China Land', 'Koramangala', 1, '560030', '12.9354509', '77.6321925', NULL, '2015-07-17 00:00:00', 1, NULL, 1),
(2, '80 Feet Road, K M Road, 25', 'Koramangala Indoor Stadium', 'Koramangala', 1, '560001', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(3, 'CA-17, 6th Cross, 6th Block', 'Opp The Koramangala Club', 'Koramangala', 1, '560095', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(4, 'National Games Housing Complex, KHB', 'Near NGV Club', 'Koramangala ', 1, '560047', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `APRMP`
--

DROP TABLE IF EXISTS `APRMP`;
CREATE TABLE IF NOT EXISTS `APRMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `ACCID` bigint(16) NOT NULL COMMENT 'Account ID',
  `PRVID` int(3) NOT NULL COMMENT 'Privacy Rule ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On / Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Account Privacy Rule Mapping';

--
-- Truncate table before insert `APRMP`
--

TRUNCATE TABLE `APRMP`;
-- --------------------------------------------------------

--
-- Table structure for table `AURMP`
--

DROP TABLE IF EXISTS `AURMP`;
CREATE TABLE IF NOT EXISTS `AURMP` (
  `MPNID` int(3) NOT NULL COMMENT 'Mapping ID',
  `ROLID` int(3) NOT NULL COMMENT 'Role ID',
  `AUTID` int(3) NOT NULL COMMENT 'Auth ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='AUth Object Role Master Mapping';

--
-- Truncate table before insert `AURMP`
--

TRUNCATE TABLE `AURMP`;
-- --------------------------------------------------------

--
-- Table structure for table `AUTMT`
--

DROP TABLE IF EXISTS `AUTMT`;
CREATE TABLE IF NOT EXISTS `AUTMT` (
  `AUTID` int(3) NOT NULL COMMENT 'Auth ID',
  `DESCR` varchar(100) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Auth Master';

--
-- Truncate table before insert `AUTMT`
--

TRUNCATE TABLE `AUTMT`;
-- --------------------------------------------------------

--
-- Table structure for table `CHRMT`
--

DROP TABLE IF EXISTS `CHRMT`;
CREATE TABLE IF NOT EXISTS `CHRMT` (
  `CHRID` int(3) NOT NULL COMMENT 'Chr Type ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `REGXT` char(10) DEFAULT NULL COMMENT 'Regular Experession Type',
  `MDTEXT` varchar(15) DEFAULT NULL COMMENT 'Medium Text',
  `LNTXT` varchar(20) DEFAULT NULL COMMENT 'Long Text',
  `SRTXT` varchar(10) DEFAULT NULL COMMENT 'Short Text',
  `LOGOI` varchar(100) DEFAULT NULL COMMENT 'Logo Image URL',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'on/off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Charactiristics Type Master';

--
-- Truncate table before insert `CHRMT`
--

TRUNCATE TABLE `CHRMT`;
-- --------------------------------------------------------

--
-- Table structure for table `CINMP`
--

DROP TABLE IF EXISTS `CINMP`;
CREATE TABLE IF NOT EXISTS `CINMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ITYID` int(11) NOT NULL COMMENT 'Intent Type ID',
  `ITCMT` int(11) NOT NULL COMMENT 'Intent Category ID',
  `INTID` int(11) NOT NULL COMMENT 'Intent ID',
  `UTYID` int(11) NOT NULL COMMENT 'User Type ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Consumer Intent Mapping Table';

--
-- Truncate table before insert `CINMP`
--

TRUNCATE TABLE `CINMP`;
-- --------------------------------------------------------

--
-- Table structure for table `CNTMT`
--

DROP TABLE IF EXISTS `CNTMT`;
CREATE TABLE IF NOT EXISTS `CNTMT` (
  `CNTID` bigint(4) NOT NULL COMMENT 'Country ID',
  `CNTNM` varchar(40) NOT NULL COMMENT 'Country Name',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Country Master';

--
-- Truncate table before insert `CNTMT`
--

TRUNCATE TABLE `CNTMT`;
--
-- Dumping data for table `CNTMT`
--

INSERT INTO `CNTMT` (`CNTID`, `CNTNM`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Afghanistan', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(2, 'Albania', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 'Australia', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 'Austria', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(5, 'Bangladesh', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(6, 'Cambodia', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(7, 'Denmark', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(8, 'Ethiopia', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(9, 'Hungary', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(10, 'India', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(11, 'Japan', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(12, 'Kuwait', 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CTYMT`
--

DROP TABLE IF EXISTS `CTYMT`;
CREATE TABLE IF NOT EXISTS `CTYMT` (
  `CTYID` bigint(20) NOT NULL COMMENT 'City ID',
  `CTYNM` varchar(40) NOT NULL COMMENT 'City Name',
  `STTID` bigint(20) NOT NULL COMMENT 'State ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='City Master';

--
-- Truncate table before insert `CTYMT`
--

TRUNCATE TABLE `CTYMT`;
--
-- Dumping data for table `CTYMT`
--

INSERT INTO `CTYMT` (`CTYID`, `CTYNM`, `STTID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Bengaluru', 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 'Pune', 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 'Ahmedabad', 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 'Guwahati', 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(5, 'Ranchi', 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ECHMP`
--

DROP TABLE IF EXISTS `ECHMP`;
CREATE TABLE IF NOT EXISTS `ECHMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `ENTYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `CHRID` int(3) NOT NULL COMMENT 'Characteristics ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime NOT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) NOT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `ECHMP`
--

TRUNCATE TABLE `ECHMP`;
-- --------------------------------------------------------

--
-- Table structure for table `ECHMT`
--

DROP TABLE IF EXISTS `ECHMT`;
CREATE TABLE IF NOT EXISTS `ECHMT` (
  `ECMID` bigint(16) NOT NULL COMMENT 'Entity Characteristicst Master ID',
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `VALUE` varchar(200) NOT NULL COMMENT 'Value',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `ECHMT`
--

TRUNCATE TABLE `ECHMT`;
-- --------------------------------------------------------

--
-- Table structure for table `ENCMP`
--

DROP TABLE IF EXISTS `ENCMP`;
CREATE TABLE IF NOT EXISTS `ENCMP` (
  `MPNID` int(11) NOT NULL COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Entity Type - Entity Category';

--
-- Truncate table before insert `ENCMP`
--

TRUNCATE TABLE `ENCMP`;
--
-- Dumping data for table `ENCMP`
--

INSERT INTO `ENCMP` (`MPNID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETYID`, `ETCID`) VALUES
(1, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ENRMP`
--

DROP TABLE IF EXISTS `ENRMP`;
CREATE TABLE IF NOT EXISTS `ENRMP` (
  `MPNID` bigint(10) NOT NULL COMMENT 'Mappping ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entity Rules Mapping Table';

--
-- Truncate table before insert `ENRMP`
--

TRUNCATE TABLE `ENRMP`;
-- --------------------------------------------------------

--
-- Table structure for table `ENTMP`
--

DROP TABLE IF EXISTS `ENTMP`;
CREATE TABLE IF NOT EXISTS `ENTMP` (
  `MPNID` int(11) NOT NULL COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='Entity Category - Entity Master';

--
-- Truncate table before insert `ENTMP`
--

TRUNCATE TABLE `ENTMP`;
--
-- Dumping data for table `ENTMP`
--

INSERT INTO `ENTMP` (`MPNID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETCID`, `ENTID`) VALUES
(1, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(2, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 2),
(3, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 3),
(4, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 4),
(5, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 5),
(6, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 6),
(7, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 7),
(8, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 8),
(9, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 9),
(10, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 10),
(11, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 11),
(12, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 12),
(13, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 13),
(14, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 14),
(15, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 15),
(16, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 16),
(17, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 17),
(18, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 18),
(19, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 19),
(20, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 20),
(21, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 21),
(22, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 22),
(23, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 23),
(24, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ENTMT`
--

DROP TABLE IF EXISTS `ENTMT`;
CREATE TABLE IF NOT EXISTS `ENTMT` (
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='Entity Master';

--
-- Truncate table before insert `ENTMT`
--

TRUNCATE TABLE `ENTMT`;
--
-- Dumping data for table `ENTMT`
--

INSERT INTO `ENTMT` (`ENTID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Audiologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(2, 'Allergist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(3, 'Anesthesiologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(4, 'Cardiologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(5, 'Dentist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(6, 'Dermatologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(7, 'Endocrinologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(8, 'Epidemiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(9, 'Gynecologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(10, 'Immunologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(11, 'Microbiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(12, 'Neonatologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(13, 'Neonatologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(14, 'Neurosurgeon', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(15, 'Obstetrician', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(16, 'Oncologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(17, 'Pediatrician', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(18, 'Physiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(19, 'Podiatrist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(20, 'Psychiatrist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(21, ' Radiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(22, 'Rheumatologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(23, 'Surgeon', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(24, 'Urologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ETCMT`
--

DROP TABLE IF EXISTS `ETCMT`;
CREATE TABLE IF NOT EXISTS `ETCMT` (
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Creted Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Entity Category Master';

--
-- Truncate table before insert `ETCMT`
--

TRUNCATE TABLE `ETCMT`;
--
-- Dumping data for table `ETCMT`
--

INSERT INTO `ETCMT` (`ETCID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Appointment', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(2, 'Material', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(3, 'Service Details', 1, '2015-07-15 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ETYMT`
--

DROP TABLE IF EXISTS `ETYMT`;
CREATE TABLE IF NOT EXISTS `ETYMT` (
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Entity Type Master';

--
-- Truncate table before insert `ETYMT`
--

TRUNCATE TABLE `ETYMT`;
--
-- Dumping data for table `ETYMT`
--

INSERT INTO `ETYMT` (`ETYID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Time', 1, '2015-07-15 00:00:00', 1, '2015-07-15 00:00:00', 0),
(2, 'Service', 1, '2015-07-15 00:00:00', 1, '2015-07-15 00:00:00', 0),
(3, 'Material', 1, '2015-07-15 00:00:00', 1, '2015-07-15 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `IENMP`
--

DROP TABLE IF EXISTS `IENMP`;
CREATE TABLE IF NOT EXISTS `IENMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `ITCMT` int(4) NOT NULL COMMENT 'Intent Category ID',
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  `INTID` int(4) NOT NULL COMMENT 'Intent ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Entity Mapping Table';

--
-- Truncate table before insert `IENMP`
--

TRUNCATE TABLE `IENMP`;
-- --------------------------------------------------------

--
-- Table structure for table `INCMP`
--

DROP TABLE IF EXISTS `INCMP`;
CREATE TABLE IF NOT EXISTS `INCMP` (
  `MPNID` int(11) NOT NULL COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  `ITCMT` int(4) NOT NULL COMMENT 'Intent Category ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent type - category master';

--
-- Truncate table before insert `INCMP`
--

TRUNCATE TABLE `INCMP`;
-- --------------------------------------------------------

--
-- Table structure for table `INTMP`
--

DROP TABLE IF EXISTS `INTMP`;
CREATE TABLE IF NOT EXISTS `INTMP` (
  `MPNID` int(11) NOT NULL COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) DEFAULT NULL COMMENT 'Active Flag',
  `CRTDT` datetime DEFAULT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) DEFAULT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` binary(8) DEFAULT NULL COMMENT 'Changed By',
  `INTID` int(11) NOT NULL COMMENT 'Intent ID',
  `ITCMT` int(11) NOT NULL COMMENT 'Intent Category ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Category - Intent Master';

--
-- Truncate table before insert `INTMP`
--

TRUNCATE TABLE `INTMP`;
-- --------------------------------------------------------

--
-- Table structure for table `INTMT`
--

DROP TABLE IF EXISTS `INTMT`;
CREATE TABLE IF NOT EXISTS `INTMT` (
  `INTID` int(4) NOT NULL COMMENT 'Intent ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Master';

--
-- Truncate table before insert `INTMT`
--

TRUNCATE TABLE `INTMT`;
-- --------------------------------------------------------

--
-- Table structure for table `ITCMT`
--

DROP TABLE IF EXISTS `ITCMT`;
CREATE TABLE IF NOT EXISTS `ITCMT` (
  `ITCMT` int(4) NOT NULL COMMENT 'Intent Category ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'on/off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent category master';

--
-- Truncate table before insert `ITCMT`
--

TRUNCATE TABLE `ITCMT`;
-- --------------------------------------------------------

--
-- Table structure for table `ITYMT`
--

DROP TABLE IF EXISTS `ITYMT`;
CREATE TABLE IF NOT EXISTS `ITYMT` (
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Type Master';

--
-- Truncate table before insert `ITYMT`
--

TRUNCATE TABLE `ITYMT`;
-- --------------------------------------------------------

--
-- Table structure for table `PRLMT`
--

DROP TABLE IF EXISTS `PRLMT`;
CREATE TABLE IF NOT EXISTS `PRLMT` (
  `PRVID` int(3) NOT NULL COMMENT 'Privacy Rule ID',
  `RULTX` varchar(200) NOT NULL COMMENT 'Rule Text',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Privacy Rule Master';

--
-- Truncate table before insert `PRLMT`
--

TRUNCATE TABLE `PRLMT`;
-- --------------------------------------------------------

--
-- Table structure for table `ROLMT`
--

DROP TABLE IF EXISTS `ROLMT`;
CREATE TABLE IF NOT EXISTS `ROLMT` (
  `ROLID` int(3) NOT NULL COMMENT 'Role ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Role Master';

--
-- Truncate table before insert `ROLMT`
--

TRUNCATE TABLE `ROLMT`;
--
-- Dumping data for table `ROLMT`
--

INSERT INTO `ROLMT` (`ROLID`, `DESCR`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 'Admin', 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(2, 'Vendor', 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(3, 'User', 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(4, 'Guest', 1, NULL, '2015-07-18 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `RULMT`
--

DROP TABLE IF EXISTS `RULMT`;
CREATE TABLE IF NOT EXISTS `RULMT` (
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  `RSTXT` varchar(50) DEFAULT NULL COMMENT 'Rule Short Text',
  `DESCR` varchar(200) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Rules Master Table';

--
-- Truncate table before insert `RULMT`
--

TRUNCATE TABLE `RULMT`;
-- --------------------------------------------------------

--
-- Table structure for table `STTMT`
--

DROP TABLE IF EXISTS `STTMT`;
CREATE TABLE IF NOT EXISTS `STTMT` (
  `STTID` bigint(20) NOT NULL COMMENT 'State ID',
  `STTNM` varchar(40) NOT NULL COMMENT 'State Name',
  `CNTID` bigint(20) NOT NULL COMMENT 'Country ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='State Master';

--
-- Truncate table before insert `STTMT`
--

TRUNCATE TABLE `STTMT`;
--
-- Dumping data for table `STTMT`
--

INSERT INTO `STTMT` (`STTID`, `STTNM`, `CNTID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Andhra Pradesh', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(2, 'Arunachal Pradesh', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 'Assam', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 'Gujarat', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(5, 'Jharkhand', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(6, 'Karnataka', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(9, 'Kerala', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(10, 'Maharashtra', 10, 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TZNMT`
--

DROP TABLE IF EXISTS `TZNMT`;
CREATE TABLE IF NOT EXISTS `TZNMT` (
  `TZNID` int(11) NOT NULL COMMENT 'Time Zone Master ID',
  `TZCOD` char(10) DEFAULT NULL COMMENT 'Time Zone Code',
  `TIMZN` char(1) DEFAULT NULL COMMENT 'Actual Value',
  `DESCR` varchar(100) DEFAULT NULL,
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `TZNMT`
--

TRUNCATE TABLE `TZNMT`;
-- --------------------------------------------------------

--
-- Table structure for table `UACMP`
--

DROP TABLE IF EXISTS `UACMP`;
CREATE TABLE IF NOT EXISTS `UACMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ACCID` bigint(16) NOT NULL COMMENT 'Account ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='User Account Mapping Table';

--
-- Truncate table before insert `UACMP`
--

TRUNCATE TABLE `UACMP`;
--
-- Dumping data for table `UACMP`
--

INSERT INTO `UACMP` (`MPNID`, `USRID`, `ACCID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 2, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 3, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 4, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UACMT`
--

DROP TABLE IF EXISTS `UACMT`;
CREATE TABLE IF NOT EXISTS `UACMT` (
  `ACCID` bigint(16) NOT NULL COMMENT 'Account ID',
  `USRNM` varchar(40) NOT NULL COMMENT 'User Name',
  `UERPW` varchar(15) NOT NULL COMMENT 'Password',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='User Account Master';

--
-- Truncate table before insert `UACMT`
--

TRUNCATE TABLE `UACMT`;
--
-- Dumping data for table `UACMT`
--

INSERT INTO `UACMT` (`ACCID`, `USRNM`, `UERPW`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'admin@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 'john.doe@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 'thomas.stewart@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 'jane.pearson@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UADMP`
--

DROP TABLE IF EXISTS `UADMP`;
CREATE TABLE IF NOT EXISTS `UADMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ADRID` bigint(16) NOT NULL COMMENT 'Address ID',
  `PRIMR` tinyint(1) DEFAULT NULL COMMENT 'Primary',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='User Master - Address Master Mapping';

--
-- Truncate table before insert `UADMP`
--

TRUNCATE TABLE `UADMP`;
--
-- Dumping data for table `UADMP`
--

INSERT INTO `UADMP` (`MPNID`, `USRID`, `ADRID`, `PRIMR`, `ACTIV`, `CHNDT`, `CRTDT`, `CRTBY`, `CHNBY`) VALUES
(1, 1, 1, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(2, 2, 2, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(3, 3, 3, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(4, 4, 4, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UCHMP`
--

DROP TABLE IF EXISTS `UCHMP`;
CREATE TABLE IF NOT EXISTS `UCHMP` (
  `MPNID` int(11) NOT NULL COMMENT 'Usertype Contact Mapping ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `CHRID` int(3) NOT NULL COMMENT 'Chr Type ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/ Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User Type Characteristic Mapping';

--
-- Truncate table before insert `UCHMP`
--

TRUNCATE TABLE `UCHMP`;
-- --------------------------------------------------------

--
-- Table structure for table `UCHMT`
--

DROP TABLE IF EXISTS `UCHMT`;
CREATE TABLE IF NOT EXISTS `UCHMT` (
  `UCHID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `CHRID` int(3) NOT NULL COMMENT 'Chr Type ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `VALUE` varchar(100) DEFAULT NULL COMMENT 'Value',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User Cherectristics Master';

--
-- Truncate table before insert `UCHMT`
--

TRUNCATE TABLE `UCHMT`;
-- --------------------------------------------------------

--
-- Table structure for table `UETMP`
--

DROP TABLE IF EXISTS `UETMP`;
CREATE TABLE IF NOT EXISTS `UETMP` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='User Type- Entity Type Mapping';

--
-- Truncate table before insert `UETMP`
--

TRUNCATE TABLE `UETMP`;
--
-- Dumping data for table `UETMP`
--

INSERT INTO `UETMP` (`MPNID`, `UTYID`, `USRID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 2, 3, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(2, 3, 2, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 1, 1, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 2, 4, 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UFRTR`
--

DROP TABLE IF EXISTS `UFRTR`;
CREATE TABLE IF NOT EXISTS `UFRTR` (
  `FRMID` bigint(10) NOT NULL COMMENT 'Feedback Recommandation ID',
  `RATIN` tinyint(1) NOT NULL COMMENT 'Rating',
  `DESCR` varchar(500) DEFAULT NULL COMMENT 'Text',
  `RTYPE` tinyint(1) DEFAULT NULL COMMENT 'Feedback 0\r\nRecommandation 1',
  `FMUSR` bigint(16) DEFAULT NULL COMMENT 'From User',
  `TOUSR` bigint(16) DEFAULT NULL COMMENT 'To User',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Feedback and Recommandation';

--
-- Truncate table before insert `UFRTR`
--

TRUNCATE TABLE `UFRTR`;
-- --------------------------------------------------------

--
-- Table structure for table `usrmt`
--

DROP TABLE IF EXISTS `usrmt`;
CREATE TABLE IF NOT EXISTS `usrmt` (
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `URCOD` char(10) NOT NULL COMMENT 'User Code,Example: AIM0000001Auto Generate',
  `PRFIX` char(4) DEFAULT NULL COMMENT 'Prefix\r\n\r\nDr.\r\nEr.\r\n',
  `TITLE` char(4) DEFAULT NULL COMMENT 'Salulation \r\n\r\nMr.\r\nMs.\r\nMrs.',
  `FRNAM` varchar(20) DEFAULT '' COMMENT 'First Name\r\n',
  `LTNAM` varchar(20) DEFAULT '' COMMENT 'Last Name\r\n',
  `URDOB` date DEFAULT NULL COMMENT 'Date Of Birth\r\n',
  `GENDR` bit(1) DEFAULT NULL COMMENT 'Gender\r\n1-MALE\r\n2-FEMALE\r\n3-THIRD',
  `DSPNM` varchar(50) DEFAULT '' COMMENT 'Display Name,\r\n\r\nIf not provided, First Name + Last Name',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='User Master Table';

--
-- Truncate table before insert `usrmt`
--

TRUNCATE TABLE `usrmt`;
--
-- Dumping data for table `usrmt`
--

INSERT INTO `usrmt` (`USRID`, `URCOD`, `PRFIX`, `TITLE`, `FRNAM`, `LTNAM`, `URDOB`, `GENDR`, `DSPNM`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'A150000001', NULL, NULL, 'Aimers', 'Admin', '2015-07-15', b'1', 'Aimers Administrator', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(2, 'A150000002', NULL, 'Mr.', 'John', 'Doe', '2015-07-17', b'1', 'John Doe', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 'A150000003', 'Dr.', 'Mr.', 'Thomas', 'Stewart', '2015-07-17', b'1', 'Thomas Stewart', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 'A150000004', 'Dr.', 'Ms.', 'Jane', 'Pearson', '2015-07-17', b'1', 'Jane  Pearson', 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UTRMP`
--

DROP TABLE IF EXISTS `UTRMP`;
CREATE TABLE IF NOT EXISTS `UTRMP` (
  `MPNID` int(3) NOT NULL COMMENT 'Mapping ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `ROLID` int(3) NOT NULL COMMENT 'Role ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='User Type Role Mapping';

--
-- Truncate table before insert `UTRMP`
--

TRUNCATE TABLE `UTRMP`;
--
-- Dumping data for table `UTRMP`
--

INSERT INTO `UTRMP` (`MPNID`, `UTYID`, `ROLID`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 1, 1, 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(2, 2, 2, 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(3, 3, 3, 1, NULL, '2015-07-18 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UTYMT`
--

DROP TABLE IF EXISTS `UTYMT`;
CREATE TABLE IF NOT EXISTS `UTYMT` (
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='User Type Master';

--
-- Truncate table before insert `UTYMT`
--

TRUNCATE TABLE `UTYMT`;
--
-- Dumping data for table `UTYMT`
--

INSERT INTO `UTYMT` (`UTYID`, `DESCR`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 'Administrator', 1, NULL, '2015-07-17 00:00:00', NULL, 1),
(2, 'Vendor', 1, NULL, '2015-07-17 00:00:00', NULL, 1),
(3, 'User', 1, NULL, '2015-07-17 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `VEMPT`
--

DROP TABLE IF EXISTS `VEMPT`;
CREATE TABLE IF NOT EXISTS `VEMPT` (
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Entity Map table';

--
-- Truncate table before insert `VEMPT`
--

TRUNCATE TABLE `VEMPT`;
-- --------------------------------------------------------

--
-- Table structure for table `VGRDT`
--

DROP TABLE IF EXISTS `VGRDT`;
CREATE TABLE IF NOT EXISTS `VGRDT` (
  `VGDID` bigint(16) NOT NULL COMMENT 'Vendor General Rule Master ID',
  `CHRID` int(3) NOT NULL COMMENT 'Chr Type ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor General Rule Master\r\nThis is the table where general r';

--
-- Truncate table before insert `VGRDT`
--

TRUNCATE TABLE `VGRDT`;
-- --------------------------------------------------------

--
-- Table structure for table `VGRMT`
--

DROP TABLE IF EXISTS `VGRMT`;
CREATE TABLE IF NOT EXISTS `VGRMT` (
  `VGRID` bigint(16) NOT NULL COMMENT 'Vendor General Rule Master ID',
  `CHRID` int(3) DEFAULT NULL COMMENT 'Chr Type ID',
  `VSUID` bigint(16) DEFAULT NULL COMMENT 'Vendor User ID',
  `VUTID` bigint(16) DEFAULT NULL COMMENT 'Vendor User Type ID',
  `CUSID` bigint(16) DEFAULT NULL COMMENT 'Consumer ID',
  `CUTID` bigint(16) DEFAULT NULL COMMENT 'Custer User Type ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Time Rule Master Table\r\nThis is the table where genera';

--
-- Truncate table before insert `VGRMT`
--

TRUNCATE TABLE `VGRMT`;
-- --------------------------------------------------------

--
-- Table structure for table `VRUMT`
--

DROP TABLE IF EXISTS `VRUMT`;
CREATE TABLE IF NOT EXISTS `VRUMT` (
  `VRMID` bigint(16) NOT NULL,
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/ Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Rules Master Table';

--
-- Truncate table before insert `VRUMT`
--

TRUNCATE TABLE `VRUMT`;
-- --------------------------------------------------------

--
-- Table structure for table `VTRDT`
--

DROP TABLE IF EXISTS `VTRDT`;
CREATE TABLE IF NOT EXISTS `VTRDT` (
  `VTRID` bigint(16) NOT NULL COMMENT 'Vendor Rule Master ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `DSTIM` time DEFAULT NULL COMMENT 'Day Start Time',
  `DETIM` time DEFAULT NULL COMMENT 'Day End Time',
  `TIMZN` char(6) DEFAULT NULL COMMENT 'TIme Zone',
  `OSTSL` time DEFAULT NULL COMMENT 'Offer Start Time Slot',
  `OETSL` time DEFAULT NULL COMMENT 'Offer End Time Slot',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Time Rule Master Table\r\nThis is the table where time r';

--
-- Truncate table before insert `VTRDT`
--

TRUNCATE TABLE `VTRDT`;
-- --------------------------------------------------------

--
-- Table structure for table `VTRMT`
--

DROP TABLE IF EXISTS `VTRMT`;
CREATE TABLE IF NOT EXISTS `VTRMT` (
  `VTRMI` bigint(16) NOT NULL COMMENT 'Vendor Rule Master ID',
  `VSUID` bigint(16) DEFAULT NULL COMMENT 'Vendor User ID',
  `VUTID` bigint(16) DEFAULT NULL COMMENT 'Vendor User Type ID',
  `CUSID` bigint(16) DEFAULT NULL COMMENT 'Consumer ID',
  `CUTID` bigint(16) DEFAULT NULL COMMENT 'Custer User Type ID',
  `BDTIM` datetime DEFAULT NULL COMMENT 'Booking Date Time',
  `BTIMZ` char(10) DEFAULT NULL COMMENT 'Booking Time Zone',
  `BOSTM` datetime DEFAULT NULL COMMENT 'Booking Offer Start Time Slot',
  `BOETM` time DEFAULT NULL COMMENT 'Booking Offer  End Time Slot ',
  `RTYPE` smallint(6) DEFAULT NULL COMMENT 'Recurrsion Type',
  `STATS` smallint(6) DEFAULT NULL COMMENT 'Status of Booking',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `VTRMT`
--

TRUNCATE TABLE `VTRMT`;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADDMT`
--
ALTER TABLE `ADDMT`
  ADD PRIMARY KEY (`ADRID`),
  ADD KEY `CTYID` (`CTYID`);

--
-- Indexes for table `APRMP`
--
ALTER TABLE `APRMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `PRVID` (`PRVID`),
  ADD KEY `ACCID` (`ACCID`);

--
-- Indexes for table `AURMP`
--
ALTER TABLE `AURMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `AUTID` (`AUTID`),
  ADD KEY `ROLID` (`ROLID`);

--
-- Indexes for table `AUTMT`
--
ALTER TABLE `AUTMT`
  ADD PRIMARY KEY (`AUTID`);

--
-- Indexes for table `CHRMT`
--
ALTER TABLE `CHRMT`
  ADD PRIMARY KEY (`CHRID`);

--
-- Indexes for table `CINMP`
--
ALTER TABLE `CINMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `INTID` (`INTID`),
  ADD KEY `ITCMT` (`ITCMT`),
  ADD KEY `ITYID` (`ITYID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `CNTMT`
--
ALTER TABLE `CNTMT`
  ADD PRIMARY KEY (`CNTID`);

--
-- Indexes for table `CTYMT`
--
ALTER TABLE `CTYMT`
  ADD PRIMARY KEY (`CTYID`),
  ADD KEY `STTID` (`STTID`);

--
-- Indexes for table `ECHMP`
--
ALTER TABLE `ECHMP`
  ADD PRIMARY KEY (`MPNID`);

--
-- Indexes for table `ECHMT`
--
ALTER TABLE `ECHMT`
  ADD PRIMARY KEY (`ECMID`);

--
-- Indexes for table `ENCMP`
--
ALTER TABLE `ENCMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`);

--
-- Indexes for table `ENRMP`
--
ALTER TABLE `ENRMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`),
  ADD KEY `RULID` (`RULID`);

--
-- Indexes for table `ENTMP`
--
ALTER TABLE `ENTMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`);

--
-- Indexes for table `ENTMT`
--
ALTER TABLE `ENTMT`
  ADD PRIMARY KEY (`ENTID`);

--
-- Indexes for table `ETCMT`
--
ALTER TABLE `ETCMT`
  ADD PRIMARY KEY (`ETCID`);

--
-- Indexes for table `ETYMT`
--
ALTER TABLE `ETYMT`
  ADD PRIMARY KEY (`ETYID`);

--
-- Indexes for table `IENMP`
--
ALTER TABLE `IENMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`),
  ADD KEY `INTID` (`INTID`),
  ADD KEY `ITCMT` (`ITCMT`),
  ADD KEY `ITYID` (`ITYID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `INCMP`
--
ALTER TABLE `INCMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ITCMT` (`ITCMT`),
  ADD KEY `ITYID` (`ITYID`);

--
-- Indexes for table `INTMP`
--
ALTER TABLE `INTMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `INTID` (`INTID`),
  ADD KEY `ITCMT` (`ITCMT`);

--
-- Indexes for table `INTMT`
--
ALTER TABLE `INTMT`
  ADD PRIMARY KEY (`INTID`);

--
-- Indexes for table `ITCMT`
--
ALTER TABLE `ITCMT`
  ADD PRIMARY KEY (`ITCMT`);

--
-- Indexes for table `ITYMT`
--
ALTER TABLE `ITYMT`
  ADD PRIMARY KEY (`ITYID`);

--
-- Indexes for table `PRLMT`
--
ALTER TABLE `PRLMT`
  ADD PRIMARY KEY (`PRVID`);

--
-- Indexes for table `ROLMT`
--
ALTER TABLE `ROLMT`
  ADD PRIMARY KEY (`ROLID`);

--
-- Indexes for table `RULMT`
--
ALTER TABLE `RULMT`
  ADD PRIMARY KEY (`RULID`);

--
-- Indexes for table `STTMT`
--
ALTER TABLE `STTMT`
  ADD PRIMARY KEY (`STTID`),
  ADD KEY `CNTID` (`CNTID`);

--
-- Indexes for table `TZNMT`
--
ALTER TABLE `TZNMT`
  ADD PRIMARY KEY (`TZNID`);

--
-- Indexes for table `UACMP`
--
ALTER TABLE `UACMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ACCID` (`ACCID`),
  ADD KEY `USRID` (`USRID`);

--
-- Indexes for table `UACMT`
--
ALTER TABLE `UACMT`
  ADD PRIMARY KEY (`ACCID`);

--
-- Indexes for table `UADMP`
--
ALTER TABLE `UADMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD UNIQUE KEY `MPNID` (`MPNID`,`USRID`,`ADRID`),
  ADD KEY `ADRID` (`ADRID`),
  ADD KEY `USRID` (`USRID`);

--
-- Indexes for table `UCHMP`
--
ALTER TABLE `UCHMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `CHRID` (`CHRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `UCHMT`
--
ALTER TABLE `UCHMT`
  ADD PRIMARY KEY (`UCHID`),
  ADD KEY `CHRID` (`CHRID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `UETMP`
--
ALTER TABLE `UETMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `UFRTR`
--
ALTER TABLE `UFRTR`
  ADD PRIMARY KEY (`FRMID`),
  ADD KEY `TOUSR` (`TOUSR`),
  ADD KEY `FMUSR` (`FMUSR`);

--
-- Indexes for table `usrmt`
--
ALTER TABLE `usrmt`
  ADD PRIMARY KEY (`USRID`),
  ADD UNIQUE KEY `IDX_USRCOD` (`URCOD`) USING BTREE;

--
-- Indexes for table `UTRMP`
--
ALTER TABLE `UTRMP`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ROLID` (`ROLID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `UTYMT`
--
ALTER TABLE `UTYMT`
  ADD PRIMARY KEY (`UTYID`);

--
-- Indexes for table `VEMPT`
--
ALTER TABLE `VEMPT`
  ADD PRIMARY KEY (`MPNID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `VGRDT`
--
ALTER TABLE `VGRDT`
  ADD PRIMARY KEY (`VGDID`),
  ADD KEY `CHRID` (`CHRID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`),
  ADD KEY `RULID` (`RULID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `VGRMT`
--
ALTER TABLE `VGRMT`
  ADD PRIMARY KEY (`VGRID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `RULID` (`RULID`);

--
-- Indexes for table `VRUMT`
--
ALTER TABLE `VRUMT`
  ADD PRIMARY KEY (`VRMID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`),
  ADD KEY `RULID` (`RULID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `VTRDT`
--
ALTER TABLE `VTRDT`
  ADD PRIMARY KEY (`VTRID`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `ETCID` (`ETCID`),
  ADD KEY `ETYID` (`ETYID`),
  ADD KEY `RULID` (`RULID`),
  ADD KEY `USRID` (`USRID`),
  ADD KEY `UTYID` (`UTYID`);

--
-- Indexes for table `VTRMT`
--
ALTER TABLE `VTRMT`
  ADD PRIMARY KEY (`VTRMI`),
  ADD KEY `ENTID` (`ENTID`),
  ADD KEY `RULID` (`RULID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ADDMT`
--
ALTER TABLE `ADDMT`
  MODIFY `ADRID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Address ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `APRMP`
--
ALTER TABLE `APRMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `AURMP`
--
ALTER TABLE `AURMP`
  MODIFY `MPNID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `AUTMT`
--
ALTER TABLE `AUTMT`
  MODIFY `AUTID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Auth ID';
--
-- AUTO_INCREMENT for table `CHRMT`
--
ALTER TABLE `CHRMT`
  MODIFY `CHRID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Chr Type ID';
--
-- AUTO_INCREMENT for table `CINMP`
--
ALTER TABLE `CINMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `CNTMT`
--
ALTER TABLE `CNTMT`
  MODIFY `CNTID` bigint(4) NOT NULL AUTO_INCREMENT COMMENT 'Country ID',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `CTYMT`
--
ALTER TABLE `CTYMT`
  MODIFY `CTYID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'City ID',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ECHMP`
--
ALTER TABLE `ECHMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `ECHMT`
--
ALTER TABLE `ECHMT`
  MODIFY `ECMID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Entity Characteristicst Master ID';
--
-- AUTO_INCREMENT for table `ENCMP`
--
ALTER TABLE `ENCMP`
  MODIFY `MPNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ENTMP`
--
ALTER TABLE `ENTMP`
  MODIFY `MPNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ENTMT`
--
ALTER TABLE `ENTMT`
  MODIFY `ENTID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ETCMT`
--
ALTER TABLE `ETCMT`
  MODIFY `ETCID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Entity Category ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ETYMT`
--
ALTER TABLE `ETYMT`
  MODIFY `ETYID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Entity Type ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `IENMP`
--
ALTER TABLE `IENMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `INCMP`
--
ALTER TABLE `INCMP`
  MODIFY `MPNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `INTMT`
--
ALTER TABLE `INTMT`
  MODIFY `INTID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Intent ID';
--
-- AUTO_INCREMENT for table `ITCMT`
--
ALTER TABLE `ITCMT`
  MODIFY `ITCMT` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Intent Category ID';
--
-- AUTO_INCREMENT for table `ITYMT`
--
ALTER TABLE `ITYMT`
  MODIFY `ITYID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Intent Type ID';
--
-- AUTO_INCREMENT for table `PRLMT`
--
ALTER TABLE `PRLMT`
  MODIFY `PRVID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Privacy Rule ID';
--
-- AUTO_INCREMENT for table `ROLMT`
--
ALTER TABLE `ROLMT`
  MODIFY `ROLID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Role ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `RULMT`
--
ALTER TABLE `RULMT`
  MODIFY `RULID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Rule ID';
--
-- AUTO_INCREMENT for table `STTMT`
--
ALTER TABLE `STTMT`
  MODIFY `STTID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'State ID',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `TZNMT`
--
ALTER TABLE `TZNMT`
  MODIFY `TZNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Time Zone Master ID';
--
-- AUTO_INCREMENT for table `UACMP`
--
ALTER TABLE `UACMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `UACMT`
--
ALTER TABLE `UACMT`
  MODIFY `ACCID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Account ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `UADMP`
--
ALTER TABLE `UADMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `UETMP`
--
ALTER TABLE `UETMP`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `UFRTR`
--
ALTER TABLE `UFRTR`
  MODIFY `FRMID` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'Feedback Recommandation ID';
--
-- AUTO_INCREMENT for table `usrmt`
--
ALTER TABLE `usrmt`
  MODIFY `USRID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'User ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `UTRMP`
--
ALTER TABLE `UTRMP`
  MODIFY `MPNID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `UTYMT`
--
ALTER TABLE `UTYMT`
  MODIFY `UTYID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'User Type ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `VEMPT`
--
ALTER TABLE `VEMPT`
  MODIFY `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID';
--
-- AUTO_INCREMENT for table `VGRDT`
--
ALTER TABLE `VGRDT`
  MODIFY `VGDID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Vendor General Rule Master ID';
--
-- AUTO_INCREMENT for table `VGRMT`
--
ALTER TABLE `VGRMT`
  MODIFY `VGRID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Vendor General Rule Master ID';
--
-- AUTO_INCREMENT for table `VRUMT`
--
ALTER TABLE `VRUMT`
  MODIFY `VRMID` bigint(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VTRMT`
--
ALTER TABLE `VTRMT`
  MODIFY `VTRMI` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Vendor Rule Master ID';
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADDMT`
--
ALTER TABLE `ADDMT`
  ADD CONSTRAINT `addmt_ibfk_1` FOREIGN KEY (`CTYID`) REFERENCES `CTYMT` (`CTYID`);

--
-- Constraints for table `APRMP`
--
ALTER TABLE `APRMP`
  ADD CONSTRAINT `aprmp_ibfk_1` FOREIGN KEY (`PRVID`) REFERENCES `PRLMT` (`PRVID`),
  ADD CONSTRAINT `aprmp_ibfk_2` FOREIGN KEY (`ACCID`) REFERENCES `UACMT` (`ACCID`);

--
-- Constraints for table `AURMP`
--
ALTER TABLE `AURMP`
  ADD CONSTRAINT `aurmp_ibfk_1` FOREIGN KEY (`AUTID`) REFERENCES `AUTMT` (`AUTID`),
  ADD CONSTRAINT `aurmp_ibfk_2` FOREIGN KEY (`ROLID`) REFERENCES `ROLMT` (`ROLID`);

--
-- Constraints for table `CINMP`
--
ALTER TABLE `CINMP`
  ADD CONSTRAINT `cinmp_ibfk_1` FOREIGN KEY (`INTID`) REFERENCES `INTMT` (`INTID`),
  ADD CONSTRAINT `cinmp_ibfk_2` FOREIGN KEY (`ITCMT`) REFERENCES `ITCMT` (`ITCMT`),
  ADD CONSTRAINT `cinmp_ibfk_3` FOREIGN KEY (`ITYID`) REFERENCES `ITYMT` (`ITYID`),
  ADD CONSTRAINT `cinmp_ibfk_4` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `cinmp_ibfk_5` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `CTYMT`
--
ALTER TABLE `CTYMT`
  ADD CONSTRAINT `ctymt_ibfk_1` FOREIGN KEY (`STTID`) REFERENCES `STTMT` (`STTID`);

--
-- Constraints for table `ENCMP`
--
ALTER TABLE `ENCMP`
  ADD CONSTRAINT `encmp_ibfk_1` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `encmp_ibfk_2` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`);

--
-- Constraints for table `ENRMP`
--
ALTER TABLE `ENRMP`
  ADD CONSTRAINT `enrmp_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `enrmp_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `enrmp_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`),
  ADD CONSTRAINT `enrmp_ibfk_4` FOREIGN KEY (`RULID`) REFERENCES `RULMT` (`RULID`);

--
-- Constraints for table `ENTMP`
--
ALTER TABLE `ENTMP`
  ADD CONSTRAINT `entmp_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `entmp_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`);

--
-- Constraints for table `IENMP`
--
ALTER TABLE `IENMP`
  ADD CONSTRAINT `ienmp_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `ienmp_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `ienmp_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`),
  ADD CONSTRAINT `ienmp_ibfk_4` FOREIGN KEY (`INTID`) REFERENCES `INTMT` (`INTID`),
  ADD CONSTRAINT `ienmp_ibfk_5` FOREIGN KEY (`ITCMT`) REFERENCES `ITCMT` (`ITCMT`),
  ADD CONSTRAINT `ienmp_ibfk_6` FOREIGN KEY (`ITYID`) REFERENCES `ITYMT` (`ITYID`),
  ADD CONSTRAINT `ienmp_ibfk_7` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `ienmp_ibfk_8` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `INCMP`
--
ALTER TABLE `INCMP`
  ADD CONSTRAINT `incmp_ibfk_1` FOREIGN KEY (`ITCMT`) REFERENCES `ITCMT` (`ITCMT`),
  ADD CONSTRAINT `incmp_ibfk_2` FOREIGN KEY (`ITYID`) REFERENCES `ITYMT` (`ITYID`);

--
-- Constraints for table `INTMP`
--
ALTER TABLE `INTMP`
  ADD CONSTRAINT `intmp_ibfk_1` FOREIGN KEY (`INTID`) REFERENCES `INTMT` (`INTID`),
  ADD CONSTRAINT `intmp_ibfk_2` FOREIGN KEY (`ITCMT`) REFERENCES `ITCMT` (`ITCMT`);

--
-- Constraints for table `STTMT`
--
ALTER TABLE `STTMT`
  ADD CONSTRAINT `sttmt_ibfk_1` FOREIGN KEY (`CNTID`) REFERENCES `CNTMT` (`CNTID`);

--
-- Constraints for table `UACMP`
--
ALTER TABLE `UACMP`
  ADD CONSTRAINT `uacmp_ibfk_1` FOREIGN KEY (`ACCID`) REFERENCES `UACMT` (`ACCID`),
  ADD CONSTRAINT `uacmp_ibfk_2` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`);

--
-- Constraints for table `UADMP`
--
ALTER TABLE `UADMP`
  ADD CONSTRAINT `uadmp_ibfk_1` FOREIGN KEY (`ADRID`) REFERENCES `ADDMT` (`ADRID`),
  ADD CONSTRAINT `uadmp_ibfk_2` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`);

--
-- Constraints for table `UCHMP`
--
ALTER TABLE `UCHMP`
  ADD CONSTRAINT `uchmp_ibfk_1` FOREIGN KEY (`CHRID`) REFERENCES `CHRMT` (`CHRID`),
  ADD CONSTRAINT `uchmp_ibfk_2` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `UCHMT`
--
ALTER TABLE `UCHMT`
  ADD CONSTRAINT `uchmt_ibfk_1` FOREIGN KEY (`CHRID`) REFERENCES `CHRMT` (`CHRID`),
  ADD CONSTRAINT `uchmt_ibfk_2` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `uchmt_ibfk_3` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `UETMP`
--
ALTER TABLE `UETMP`
  ADD CONSTRAINT `uetmp_ibfk_1` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `uetmp_ibfk_2` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `UFRTR`
--
ALTER TABLE `UFRTR`
  ADD CONSTRAINT `ufrtr_ibfk_1` FOREIGN KEY (`TOUSR`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `ufrtr_ibfk_2` FOREIGN KEY (`FMUSR`) REFERENCES `USRMT` (`USRID`);

--
-- Constraints for table `UTRMP`
--
ALTER TABLE `UTRMP`
  ADD CONSTRAINT `utrmp_ibfk_1` FOREIGN KEY (`ROLID`) REFERENCES `ROLMT` (`ROLID`),
  ADD CONSTRAINT `utrmp_ibfk_2` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `VEMPT`
--
ALTER TABLE `VEMPT`
  ADD CONSTRAINT `vempt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `vempt_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `vempt_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`),
  ADD CONSTRAINT `vempt_ibfk_4` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `vempt_ibfk_5` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `VGRDT`
--
ALTER TABLE `VGRDT`
  ADD CONSTRAINT `vgrdt_ibfk_1` FOREIGN KEY (`CHRID`) REFERENCES `CHRMT` (`CHRID`),
  ADD CONSTRAINT `vgrdt_ibfk_2` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `vgrdt_ibfk_3` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `vgrdt_ibfk_4` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`),
  ADD CONSTRAINT `vgrdt_ibfk_5` FOREIGN KEY (`RULID`) REFERENCES `RULMT` (`RULID`),
  ADD CONSTRAINT `vgrdt_ibfk_6` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `vgrdt_ibfk_7` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `VGRMT`
--
ALTER TABLE `VGRMT`
  ADD CONSTRAINT `vgrmt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `vgrmt_ibfk_2` FOREIGN KEY (`RULID`) REFERENCES `RULMT` (`RULID`);

--
-- Constraints for table `VRUMT`
--
ALTER TABLE `VRUMT`
  ADD CONSTRAINT `vrumt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `vrumt_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `vrumt_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`),
  ADD CONSTRAINT `vrumt_ibfk_4` FOREIGN KEY (`RULID`) REFERENCES `RULMT` (`RULID`),
  ADD CONSTRAINT `vrumt_ibfk_5` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `vrumt_ibfk_6` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `VTRDT`
--
ALTER TABLE `VTRDT`
  ADD CONSTRAINT `vtrdt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `vtrdt_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `ETCMT` (`ETCID`),
  ADD CONSTRAINT `vtrdt_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `ETYMT` (`ETYID`),
  ADD CONSTRAINT `vtrdt_ibfk_4` FOREIGN KEY (`RULID`) REFERENCES `RULMT` (`RULID`),
  ADD CONSTRAINT `vtrdt_ibfk_5` FOREIGN KEY (`USRID`) REFERENCES `USRMT` (`USRID`),
  ADD CONSTRAINT `vtrdt_ibfk_6` FOREIGN KEY (`UTYID`) REFERENCES `UTYMT` (`UTYID`);

--
-- Constraints for table `VTRMT`
--
ALTER TABLE `VTRMT`
  ADD CONSTRAINT `vtrmt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `ENTMT` (`ENTID`),
  ADD CONSTRAINT `vtrmt_ibfk_2` FOREIGN KEY (`RULID`) REFERENCES `RULMT` (`RULID`);
