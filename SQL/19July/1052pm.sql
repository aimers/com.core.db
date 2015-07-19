-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2015 at 07:13 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookingdb`
--
CREATE DATABASE IF NOT EXISTS `bookingdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookingdb`;

-- --------------------------------------------------------

--
-- Table structure for table `addmt`
--

DROP TABLE IF EXISTS `addmt`;
CREATE TABLE IF NOT EXISTS `addmt` (
  `ADRID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Address ID',
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
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`ADRID`),
  KEY `CTYID` (`CTYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Address Master' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `addmt`
--

INSERT INTO `addmt` (`ADRID`, `STRET`, `LNDMK`, `LOCLT`, `CTYID`, `PINCD`, `LONGT`, `LATIT`, `CHNDT`, `CRTDT`, `ACTIV`, `CHNBY`, `CRTBY`) VALUES
(1, '17-B, Main Road', 'Near China Land', 'Koramangala', 1, '560030', '12.9354509', '77.6321925', NULL, '2015-07-17 00:00:00', 1, NULL, 1),
(2, '80 Feet Road, K M Road, 25', 'Koramangala Indoor Stadium', 'Koramangala', 1, '560001', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(3, 'CA-17, 6th Cross, 6th Block', 'Opp The Koramangala Club', 'Koramangala', 1, '560095', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(4, 'National Games Housing Complex, KHB', 'Near NGV Club', 'Koramangala ', 1, '560047', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aprmp`
--

DROP TABLE IF EXISTS `aprmp`;
CREATE TABLE IF NOT EXISTS `aprmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `ACCID` bigint(16) NOT NULL COMMENT 'Account ID',
  `PRVID` int(3) NOT NULL COMMENT 'Privacy Rule ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On / Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `PRVID` (`PRVID`),
  KEY `ACCID` (`ACCID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Account Privacy Rule Mapping' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aurmp`
--

DROP TABLE IF EXISTS `aurmp`;
CREATE TABLE IF NOT EXISTS `aurmp` (
  `MPNID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `ROLID` int(3) NOT NULL COMMENT 'Role ID',
  `AUTID` int(3) NOT NULL COMMENT 'Auth ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`MPNID`),
  KEY `AUTID` (`AUTID`),
  KEY `ROLID` (`ROLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='AUth Object Role Master Mapping' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `autmt`
--

DROP TABLE IF EXISTS `autmt`;
CREATE TABLE IF NOT EXISTS `autmt` (
  `AUTID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Auth ID',
  `DESCR` varchar(100) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`AUTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Auth Master' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chrmt`
--

DROP TABLE IF EXISTS `chrmt`;
CREATE TABLE IF NOT EXISTS `chrmt` (
  `CHRID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Chr Type ID',
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
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`CHRID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Charactiristics Type Master' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `chrmt`
--

INSERT INTO `chrmt` (`CHRID`, `DESCR`, `REGXT`, `MDTEXT`, `LNTXT`, `SRTXT`, `LOGOI`, `ACTIV`, `CRTDT`, `CHNDT`, `CRTBY`, `CHNBY`) VALUES
(1, 'Facebook', 'url', 'Facebook', 'Facebook', 'FB', 'facebook.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(2, 'Twitter', 'url', 'Twitter', 'Twitter', 'TW', 'twitter.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(3, 'Google+', 'url', 'Google+', 'Google+', 'TW', 'googleplus.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(4, 'Personal Email', 'email', 'Personal Email', 'Personal Email', 'Email', 'email.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(5, 'Business Email', 'email', 'Business Email', 'Business Email', 'B-Email', 'email.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(6, 'Landline', 'phone', 'Landline', 'Landline', 'Phone', 'phone.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(7, 'Mobile', 'mobile', 'Mobile', 'Mobile', 'Mobile', 'mobile.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(8, 'Image', 'img', 'Image', 'Image', 'Image', 'img.png', 1, '2015-07-18 00:00:00', NULL, 1, NULL),
(9, 'Important', 'flag', 'Important', 'Important', 'Important', 'important.png', 1, '2015-07-19 00:00:00', NULL, 1, NULL),
(10, 'Icon', 'icon', 'Icon', 'Icon', 'Icon', 'icon.png', 1, '2015-07-19 00:00:00', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cinmp`
--

DROP TABLE IF EXISTS `cinmp`;
CREATE TABLE IF NOT EXISTS `cinmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ITYID` int(11) NOT NULL COMMENT 'Intent Type ID',
  `ITCMT` int(11) NOT NULL COMMENT 'Intent Category ID',
  `INTID` int(11) NOT NULL COMMENT 'Intent ID',
  `UTYID` int(11) NOT NULL COMMENT 'User Type ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `INTID` (`INTID`),
  KEY `ITCMT` (`ITCMT`),
  KEY `ITYID` (`ITYID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Consumer Intent Mapping Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cntmt`
--

DROP TABLE IF EXISTS `cntmt`;
CREATE TABLE IF NOT EXISTS `cntmt` (
  `CNTID` bigint(4) NOT NULL AUTO_INCREMENT COMMENT 'Country ID',
  `CNTNM` varchar(40) NOT NULL COMMENT 'Country Name',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`CNTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Country Master' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cntmt`
--

INSERT INTO `cntmt` (`CNTID`, `CNTNM`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
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
-- Table structure for table `ctymt`
--

DROP TABLE IF EXISTS `ctymt`;
CREATE TABLE IF NOT EXISTS `ctymt` (
  `CTYID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'City ID',
  `CTYNM` varchar(40) NOT NULL COMMENT 'City Name',
  `STTID` bigint(20) NOT NULL COMMENT 'State ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`CTYID`),
  KEY `STTID` (`STTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='City Master' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ctymt`
--

INSERT INTO `ctymt` (`CTYID`, `CTYNM`, `STTID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Bengaluru', 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 'Pune', 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 'Ahmedabad', 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 'Guwahati', 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(5, 'Ranchi', 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `echmp`
--

DROP TABLE IF EXISTS `echmp`;
CREATE TABLE IF NOT EXISTS `echmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `ENTYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `CHRID` int(3) NOT NULL COMMENT 'Characteristics ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime NOT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) NOT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `echmp`
--

INSERT INTO `echmp` (`MPNID`, `ENTID`, `ENTYID`, `ETCID`, `CHRID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(2, 2, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(3, 3, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(4, 4, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(5, 5, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(6, 6, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(7, 7, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(8, 8, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(9, 9, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(10, 10, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(11, 11, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(12, 12, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(13, 13, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(14, 14, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(15, 15, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(16, 16, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(17, 17, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(18, 18, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(19, 19, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(20, 20, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(21, 21, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(22, 22, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(23, 23, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(24, 24, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(25, 1, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(26, 2, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(27, 3, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(28, 4, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(29, 5, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(30, 6, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(31, 7, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(32, 8, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(33, 9, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(34, 10, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(35, 11, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(36, 12, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(37, 13, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(38, 14, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(39, 15, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(40, 16, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(41, 17, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(42, 18, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(43, 19, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(44, 20, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(45, 21, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(46, 22, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(47, 23, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0),
(48, 24, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `echmt`
--

DROP TABLE IF EXISTS `echmt`;
CREATE TABLE IF NOT EXISTS `echmt` (
  `ECMID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Entity Characteristicst Master ID',
  `MPNID` bigint(16) NOT NULL COMMENT 'Mapping ID',
  `VALUE` varchar(200) NOT NULL COMMENT 'Value',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`ECMID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `echmt`
--

INSERT INTO `echmt` (`ECMID`, `MPNID`, `VALUE`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 5, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(2, 12, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(3, 14, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(4, 23, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(5, 4, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(6, 16, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(7, 19, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(8, 3, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `encmp`
--

DROP TABLE IF EXISTS `encmp`;
CREATE TABLE IF NOT EXISTS `encmp` (
  `MPNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  PRIMARY KEY (`MPNID`),
  KEY `ETCID` (`ETCID`),
  KEY `ETYID` (`ETYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity Type - Entity Category' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `encmp`
--

INSERT INTO `encmp` (`MPNID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETYID`, `ETCID`) VALUES
(1, 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrmp`
--

DROP TABLE IF EXISTS `enrmp`;
CREATE TABLE IF NOT EXISTS `enrmp` (
  `MPNID` bigint(10) NOT NULL COMMENT 'Mappping ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `ENTID` (`ENTID`),
  KEY `ETCID` (`ETCID`),
  KEY `ETYID` (`ETYID`),
  KEY `RULID` (`RULID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entity Rules Mapping Table';

-- --------------------------------------------------------

--
-- Table structure for table `entmp`
--

DROP TABLE IF EXISTS `entmp`;
CREATE TABLE IF NOT EXISTS `entmp` (
  `MPNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  PRIMARY KEY (`MPNID`),
  KEY `ENTID` (`ENTID`),
  KEY `ETCID` (`ETCID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity Category - Entity Master' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `entmp`
--

INSERT INTO `entmp` (`MPNID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETCID`, `ENTID`) VALUES
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
-- Table structure for table `entmt`
--

DROP TABLE IF EXISTS `entmt`;
CREATE TABLE IF NOT EXISTS `entmt` (
  `ENTID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  PRIMARY KEY (`ENTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity Master' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `entmt`
--

INSERT INTO `entmt` (`ENTID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETCID`, `ETYID`) VALUES
(1, 'Audiologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(2, 'Allergist', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(3, 'Ayurveda', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(4, 'Cardiologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(5, 'Dentist', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(6, 'Dermatologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(7, 'Endocrinologist', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1, 1),
(8, 'Epidemiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(9, 'Gynecologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(10, 'Immunologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(11, 'Microbiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(12, 'Homeopath', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(13, 'Neonatologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(14, 'Neurosurgeon', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(15, 'Obstetrician', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(16, 'Ophthalmologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(17, 'Pediatrician', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(18, 'Physiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(19, 'Sexologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(20, 'Psychiatrist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(21, ' Radiologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(22, 'Rheumatologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(23, 'Surgeon', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1),
(24, 'Urologist', 1, '2015-07-17 00:00:00', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `etcmt`
--

DROP TABLE IF EXISTS `etcmt`;
CREATE TABLE IF NOT EXISTS `etcmt` (
  `ETCID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Entity Category ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Creted Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  PRIMARY KEY (`ETCID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity Category Master' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `etcmt`
--

INSERT INTO `etcmt` (`ETCID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETYID`) VALUES
(1, 'Appointment', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 1),
(2, 'Service Details', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 2),
(3, 'Material', 1, '2015-07-15 00:00:00', 1, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `etymt`
--

DROP TABLE IF EXISTS `etymt`;
CREATE TABLE IF NOT EXISTS `etymt` (
  `ETYID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Entity Type ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`ETYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity Type Master' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `etymt`
--

INSERT INTO `etymt` (`ETYID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Time', 1, '2015-07-15 00:00:00', 1, '2015-07-15 00:00:00', 0),
(2, 'Service', 1, '2015-07-15 00:00:00', 1, '2015-07-15 00:00:00', 0),
(3, 'Material', 1, '2015-07-15 00:00:00', 1, '2015-07-15 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ienmp`
--

DROP TABLE IF EXISTS `ienmp`;
CREATE TABLE IF NOT EXISTS `ienmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `ITCMT` int(4) NOT NULL COMMENT 'Intent Category ID',
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  `INTID` int(4) NOT NULL COMMENT 'Intent ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) DEFAULT NULL COMMENT 'Entity ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Intent Entity Mapping Table' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `ienmp`
--

INSERT INTO `ienmp` (`MPNID`, `USRID`, `UTYID`, `ITCMT`, `ITYID`, `INTID`, `ETYID`, `ETCID`, `ENTID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 1, 1, 1, 1, 1, 1, 1, 2, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(3, 1, 1, 1, 1, 1, 1, 1, 3, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(4, 1, 1, 1, 1, 1, 1, 1, 4, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(5, 1, 1, 1, 1, 1, 1, 1, 5, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(6, 1, 1, 1, 1, 1, 1, 1, 6, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(7, 1, 1, 1, 1, 1, 1, 1, 7, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(8, 1, 1, 1, 1, 1, 1, 1, 8, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(9, 1, 1, 1, 1, 1, 1, 1, 9, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(10, 1, 1, 1, 1, 1, 1, 1, 10, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(11, 1, 1, 1, 1, 1, 1, 1, 11, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(12, 1, 1, 1, 1, 1, 1, 1, 12, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 1, 13, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 1, 14, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 1, 15, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 1, 16, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 1, 17, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 1, 18, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 1, 19, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 1, 20, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 1, 21, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 1, 22, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 1, 23, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 1, 24, 1, '2015-07-19 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incmp`
--

DROP TABLE IF EXISTS `incmp`;
CREATE TABLE IF NOT EXISTS `incmp` (
  `MPNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  `ITCMT` int(4) NOT NULL COMMENT 'Intent Category ID',
  PRIMARY KEY (`MPNID`),
  KEY `ITCMT` (`ITCMT`),
  KEY `ITYID` (`ITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent type - category master' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `intmp`
--

DROP TABLE IF EXISTS `intmp`;
CREATE TABLE IF NOT EXISTS `intmp` (
  `MPNID` int(11) NOT NULL COMMENT 'Mapping ID',
  `ACTIV` tinyint(1) DEFAULT NULL COMMENT 'Active Flag',
  `CRTDT` datetime DEFAULT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) DEFAULT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` binary(8) DEFAULT NULL COMMENT 'Changed By',
  `INTID` int(11) NOT NULL COMMENT 'Intent ID',
  `ITCMT` int(11) NOT NULL COMMENT 'Intent Category ID',
  PRIMARY KEY (`MPNID`),
  KEY `INTID` (`INTID`),
  KEY `ITCMT` (`ITCMT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Category - Intent Master';

-- --------------------------------------------------------

--
-- Table structure for table `intmt`
--

DROP TABLE IF EXISTS `intmt`;
CREATE TABLE IF NOT EXISTS `intmt` (
  `INTID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Intent ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ITCMT` int(4) NOT NULL COMMENT 'Intent Category ID',
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  PRIMARY KEY (`INTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Master' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `itcmt`
--

DROP TABLE IF EXISTS `itcmt`;
CREATE TABLE IF NOT EXISTS `itcmt` (
  `ITCMT` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Intent Category ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'on/off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `ITYID` int(4) NOT NULL COMMENT 'Intent Type ID',
  PRIMARY KEY (`ITCMT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent category master' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `itymt`
--

DROP TABLE IF EXISTS `itymt`;
CREATE TABLE IF NOT EXISTS `itymt` (
  `ITYID` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Intent Type ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`ITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intent Type Master' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prlmt`
--

DROP TABLE IF EXISTS `prlmt`;
CREATE TABLE IF NOT EXISTS `prlmt` (
  `PRVID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Privacy Rule ID',
  `RULTX` varchar(200) NOT NULL COMMENT 'Rule Text',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`PRVID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Privacy Rule Master' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rolmt`
--

DROP TABLE IF EXISTS `rolmt`;
CREATE TABLE IF NOT EXISTS `rolmt` (
  `ROLID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `DESCR` varchar(40) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`ROLID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Role Master' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rolmt`
--

INSERT INTO `rolmt` (`ROLID`, `DESCR`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 'Admin', 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(2, 'Vendor', 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(3, 'User', 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(4, 'Guest', 1, NULL, '2015-07-18 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rulmt`
--

DROP TABLE IF EXISTS `rulmt`;
CREATE TABLE IF NOT EXISTS `rulmt` (
  `RULID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `RSTXT` varchar(50) DEFAULT NULL COMMENT 'Rule Short Text',
  `DESCR` varchar(200) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`RULID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Rules Master Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sttmt`
--

DROP TABLE IF EXISTS `sttmt`;
CREATE TABLE IF NOT EXISTS `sttmt` (
  `STTID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'State ID',
  `STTNM` varchar(40) NOT NULL COMMENT 'State Name',
  `CNTID` bigint(20) NOT NULL COMMENT 'Country ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`STTID`),
  KEY `CNTID` (`CNTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='State Master' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `sttmt`
--

INSERT INTO `sttmt` (`STTID`, `STTNM`, `CNTID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
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
-- Table structure for table `tznmt`
--

DROP TABLE IF EXISTS `tznmt`;
CREATE TABLE IF NOT EXISTS `tznmt` (
  `TZNID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Time Zone Master ID',
  `TZCOD` char(10) DEFAULT NULL COMMENT 'Time Zone Code',
  `TIMZN` char(1) DEFAULT NULL COMMENT 'Actual Value',
  `DESCR` varchar(100) DEFAULT NULL,
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`TZNID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uacmp`
--

DROP TABLE IF EXISTS `uacmp`;
CREATE TABLE IF NOT EXISTS `uacmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ACCID` bigint(16) NOT NULL COMMENT 'Account ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `ACCID` (`ACCID`),
  KEY `USRID` (`USRID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Account Mapping Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `uacmp`
--

INSERT INTO `uacmp` (`MPNID`, `USRID`, `ACCID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 2, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 3, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 4, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uacmt`
--

DROP TABLE IF EXISTS `uacmt`;
CREATE TABLE IF NOT EXISTS `uacmt` (
  `ACCID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Account ID',
  `USRNM` varchar(40) NOT NULL COMMENT 'User Name',
  `UERPW` varchar(15) NOT NULL COMMENT 'Password',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`ACCID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Account Master' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `uacmt`
--

INSERT INTO `uacmt` (`ACCID`, `USRNM`, `UERPW`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'admin@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 'john.doe@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 'thomas.stewart@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 'jane.pearson@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uadmp`
--

DROP TABLE IF EXISTS `uadmp`;
CREATE TABLE IF NOT EXISTS `uadmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ADRID` bigint(16) NOT NULL COMMENT 'Address ID',
  `PRIMR` tinyint(1) DEFAULT NULL COMMENT 'Primary',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ON/OFF',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  UNIQUE KEY `MPNID` (`MPNID`,`USRID`,`ADRID`),
  KEY `ADRID` (`ADRID`),
  KEY `USRID` (`USRID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Master - Address Master Mapping' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `uadmp`
--

INSERT INTO `uadmp` (`MPNID`, `USRID`, `ADRID`, `PRIMR`, `ACTIV`, `CHNDT`, `CRTDT`, `CRTBY`, `CHNBY`) VALUES
(1, 1, 1, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(2, 2, 2, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(3, 3, 3, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(4, 4, 4, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uchmp`
--

DROP TABLE IF EXISTS `uchmp`;
CREATE TABLE IF NOT EXISTS `uchmp` (
  `MPNID` int(16) NOT NULL AUTO_INCREMENT COMMENT 'Usertype Contact Mapping ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `CHRID` int(3) NOT NULL COMMENT 'Chr Type ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/ Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `CHRID` (`CHRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Type Characteristic Mapping' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `uchmp`
--

INSERT INTO `uchmp` (`MPNID`, `UTYID`, `CHRID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(2, 1, 2, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(3, 1, 3, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(4, 1, 4, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(5, 1, 5, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(6, 1, 6, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(7, 1, 7, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(8, 1, 8, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(9, 2, 1, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(10, 2, 2, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(11, 2, 3, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(12, 2, 4, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(13, 2, 5, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(14, 2, 6, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(15, 2, 7, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(16, 2, 8, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(17, 3, 1, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(18, 3, 2, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(19, 3, 3, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(20, 3, 4, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(21, 3, 5, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(22, 3, 6, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(23, 3, 7, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(24, 3, 8, 1, '2015-07-19 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uchmt`
--

DROP TABLE IF EXISTS `uchmt`;
CREATE TABLE IF NOT EXISTS `uchmt` (
  `UCHID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `CHRID` int(3) NOT NULL COMMENT 'Chr Type ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `VALUE` varchar(100) DEFAULT NULL COMMENT 'Value',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`UCHID`),
  KEY `CHRID` (`CHRID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Cherectristics Master' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `uchmt`
--

INSERT INTO `uchmt` (`UCHID`, `CHRID`, `UTYID`, `USRID`, `VALUE`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(2, 2, 1, 1, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(3, 3, 1, 1, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(4, 4, 1, 1, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(5, 5, 1, 1, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(6, 6, 1, 1, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(7, 7, 1, 1, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(8, 1, 2, 3, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(9, 2, 2, 3, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(10, 3, 2, 3, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(11, 4, 2, 3, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(12, 5, 2, 3, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(13, 6, 2, 3, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(14, 7, 2, 3, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(15, 1, 2, 4, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(16, 2, 2, 4, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(17, 3, 2, 4, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(18, 4, 2, 4, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(19, 5, 2, 4, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(20, 6, 2, 4, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(21, 7, 2, 4, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uetmp`
--

DROP TABLE IF EXISTS `uetmp`;
CREATE TABLE IF NOT EXISTS `uetmp` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Type- Entity Type Mapping' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `uetmp`
--

INSERT INTO `uetmp` (`MPNID`, `UTYID`, `USRID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 2, 3, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(2, 3, 2, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 1, 1, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 2, 4, 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ufrtr`
--

DROP TABLE IF EXISTS `ufrtr`;
CREATE TABLE IF NOT EXISTS `ufrtr` (
  `FRMID` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'Feedback Recommandation ID',
  `RATIN` tinyint(1) NOT NULL COMMENT 'Rating',
  `DESCR` varchar(500) DEFAULT NULL COMMENT 'Text',
  `RTYPE` tinyint(1) DEFAULT NULL COMMENT 'Feedback 0\r\nRecommandation 1',
  `FMUSR` bigint(16) DEFAULT NULL COMMENT 'From User',
  `TOUSR` bigint(16) DEFAULT NULL COMMENT 'To User',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`FRMID`),
  KEY `TOUSR` (`TOUSR`),
  KEY `FMUSR` (`FMUSR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Feedback and Recommandation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrmt`
--

DROP TABLE IF EXISTS `usrmt`;
CREATE TABLE IF NOT EXISTS `usrmt` (
  `USRID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `URCOD` char(10) NOT NULL COMMENT 'User Code,Example: AIM0000001Auto Generate',
  `PRFIX` char(4) DEFAULT NULL COMMENT 'Prefix\r\n\r\nDr.\r\nEr.\r\n',
  `TITLE` char(4) DEFAULT NULL COMMENT 'Salulation \r\n\r\nMr.\r\nMs.\r\nMrs.',
  `FRNAM` varchar(20) DEFAULT '' COMMENT 'First Name\r\n',
  `LTNAM` varchar(20) DEFAULT '' COMMENT 'Last Name\r\n',
  `URDOB` date DEFAULT NULL COMMENT 'Date Of Birth\r\n',
  `GENDR` tinyint(1) DEFAULT NULL COMMENT 'Gender1-MALE2-FEMALE3-THIRD',
  `DSPNM` varchar(50) DEFAULT '' COMMENT 'Display Name,\r\n\r\nIf not provided, First Name + Last Name',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`USRID`),
  UNIQUE KEY `IDX_USRCOD` (`URCOD`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Master Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `usrmt`
--

INSERT INTO `usrmt` (`USRID`, `URCOD`, `PRFIX`, `TITLE`, `FRNAM`, `LTNAM`, `URDOB`, `GENDR`, `DSPNM`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'A150000001', NULL, NULL, 'Aimers', 'Admin', '2015-07-15', 1, 'Aimers Administrator', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(2, 'A150000002', NULL, 'Mr.', 'John', 'Doe', '2015-07-17', 1, 'John Doe', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 'A150000003', 'Dr.', 'Mr.', 'Thomas', 'Stewart', '2015-07-17', 1, 'Thomas Stewart', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 'A150000004', 'Dr.', 'Ms.', 'Jane', 'Pearson', '2015-07-17', 1, 'Jane  Pearson', 1, '2015-07-17 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `utrmp`
--

DROP TABLE IF EXISTS `utrmp`;
CREATE TABLE IF NOT EXISTS `utrmp` (
  `MPNID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `ROLID` int(3) NOT NULL COMMENT 'Role ID',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`MPNID`),
  KEY `ROLID` (`ROLID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Type Role Mapping' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `utrmp`
--

INSERT INTO `utrmp` (`MPNID`, `UTYID`, `ROLID`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 1, 1, 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(2, 2, 2, 1, NULL, '2015-07-18 00:00:00', NULL, 1),
(3, 3, 3, 1, NULL, '2015-07-18 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utymt`
--

DROP TABLE IF EXISTS `utymt`;
CREATE TABLE IF NOT EXISTS `utymt` (
  `UTYID` int(3) NOT NULL AUTO_INCREMENT COMMENT 'User Type ID',
  `DESCR` varchar(40) NOT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`UTYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Type Master' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `utymt`
--

INSERT INTO `utymt` (`UTYID`, `DESCR`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 'Administrator', 1, NULL, '2015-07-17 00:00:00', NULL, 1),
(2, 'Vendor', 1, NULL, '2015-07-17 00:00:00', NULL, 1),
(3, 'User', 1, NULL, '2015-07-17 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vempt`
--

DROP TABLE IF EXISTS `vempt`;
CREATE TABLE IF NOT EXISTS `vempt` (
  `MPNID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Mapping ID',
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  `UTYID` int(3) NOT NULL COMMENT 'User Type ID',
  `ETYID` int(4) NOT NULL COMMENT 'Entity Type ID',
  `ETCID` int(4) NOT NULL COMMENT 'Entity Category ID',
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'ON/OFF',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`MPNID`),
  KEY `ENTID` (`ENTID`),
  KEY `ETCID` (`ETCID`),
  KEY `ETYID` (`ETYID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Entity Map table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vgrdt`
--

DROP TABLE IF EXISTS `vgrdt`;
CREATE TABLE IF NOT EXISTS `vgrdt` (
  `VGDID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Vendor General Rule Master ID',
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
  `ENTID` int(4) NOT NULL COMMENT 'Entity ID',
  PRIMARY KEY (`VGDID`),
  KEY `CHRID` (`CHRID`),
  KEY `ENTID` (`ENTID`),
  KEY `ETCID` (`ETCID`),
  KEY `ETYID` (`ETYID`),
  KEY `RULID` (`RULID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor General Rule Master\r\nThis is the table where general r' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vgrmt`
--

DROP TABLE IF EXISTS `vgrmt`;
CREATE TABLE IF NOT EXISTS `vgrmt` (
  `VGRID` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Vendor General Rule Master ID',
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
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  PRIMARY KEY (`VGRID`),
  KEY `ENTID` (`ENTID`),
  KEY `RULID` (`RULID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Time Rule Master Table\r\nThis is the table where genera' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vrumt`
--

DROP TABLE IF EXISTS `vrumt`;
CREATE TABLE IF NOT EXISTS `vrumt` (
  `VRMID` bigint(16) NOT NULL AUTO_INCREMENT,
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
  `USRID` bigint(16) NOT NULL COMMENT 'User ID',
  PRIMARY KEY (`VRMID`),
  KEY `ENTID` (`ENTID`),
  KEY `ETCID` (`ETCID`),
  KEY `ETYID` (`ETYID`),
  KEY `RULID` (`RULID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Rules Master Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtrdt`
--

DROP TABLE IF EXISTS `vtrdt`;
CREATE TABLE IF NOT EXISTS `vtrdt` (
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
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  PRIMARY KEY (`VTRID`),
  KEY `ENTID` (`ENTID`),
  KEY `ETCID` (`ETCID`),
  KEY `ETYID` (`ETYID`),
  KEY `RULID` (`RULID`),
  KEY `USRID` (`USRID`),
  KEY `UTYID` (`UTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Vendor Time Rule Master Table\r\nThis is the table where time r';

-- --------------------------------------------------------

--
-- Table structure for table `vtrmt`
--

DROP TABLE IF EXISTS `vtrmt`;
CREATE TABLE IF NOT EXISTS `vtrmt` (
  `VTRMI` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Vendor Rule Master ID',
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
  `RULID` int(3) NOT NULL COMMENT 'Rule ID',
  PRIMARY KEY (`VTRMI`),
  KEY `ENTID` (`ENTID`),
  KEY `RULID` (`RULID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addmt`
--
ALTER TABLE `addmt`
  ADD CONSTRAINT `addmt_ibfk_1` FOREIGN KEY (`CTYID`) REFERENCES `ctymt` (`CTYID`);

--
-- Constraints for table `aprmp`
--
ALTER TABLE `aprmp`
  ADD CONSTRAINT `aprmp_ibfk_1` FOREIGN KEY (`PRVID`) REFERENCES `prlmt` (`PRVID`),
  ADD CONSTRAINT `aprmp_ibfk_2` FOREIGN KEY (`ACCID`) REFERENCES `uacmt` (`ACCID`);

--
-- Constraints for table `aurmp`
--
ALTER TABLE `aurmp`
  ADD CONSTRAINT `aurmp_ibfk_1` FOREIGN KEY (`AUTID`) REFERENCES `autmt` (`AUTID`),
  ADD CONSTRAINT `aurmp_ibfk_2` FOREIGN KEY (`ROLID`) REFERENCES `rolmt` (`ROLID`);

--
-- Constraints for table `cinmp`
--
ALTER TABLE `cinmp`
  ADD CONSTRAINT `cinmp_ibfk_1` FOREIGN KEY (`INTID`) REFERENCES `intmt` (`INTID`),
  ADD CONSTRAINT `cinmp_ibfk_2` FOREIGN KEY (`ITCMT`) REFERENCES `itcmt` (`ITCMT`),
  ADD CONSTRAINT `cinmp_ibfk_3` FOREIGN KEY (`ITYID`) REFERENCES `itymt` (`ITYID`),
  ADD CONSTRAINT `cinmp_ibfk_4` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `cinmp_ibfk_5` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `ctymt`
--
ALTER TABLE `ctymt`
  ADD CONSTRAINT `ctymt_ibfk_1` FOREIGN KEY (`STTID`) REFERENCES `sttmt` (`STTID`);

--
-- Constraints for table `encmp`
--
ALTER TABLE `encmp`
  ADD CONSTRAINT `encmp_ibfk_1` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`),
  ADD CONSTRAINT `encmp_ibfk_2` FOREIGN KEY (`ETYID`) REFERENCES `etymt` (`ETYID`);

--
-- Constraints for table `enrmp`
--
ALTER TABLE `enrmp`
  ADD CONSTRAINT `enrmp_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `enrmp_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`),
  ADD CONSTRAINT `enrmp_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `etymt` (`ETYID`),
  ADD CONSTRAINT `enrmp_ibfk_4` FOREIGN KEY (`RULID`) REFERENCES `rulmt` (`RULID`);

--
-- Constraints for table `entmp`
--
ALTER TABLE `entmp`
  ADD CONSTRAINT `entmp_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `entmp_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`);

--
-- Constraints for table `incmp`
--
ALTER TABLE `incmp`
  ADD CONSTRAINT `incmp_ibfk_1` FOREIGN KEY (`ITCMT`) REFERENCES `itcmt` (`ITCMT`),
  ADD CONSTRAINT `incmp_ibfk_2` FOREIGN KEY (`ITYID`) REFERENCES `itymt` (`ITYID`);

--
-- Constraints for table `intmp`
--
ALTER TABLE `intmp`
  ADD CONSTRAINT `intmp_ibfk_1` FOREIGN KEY (`INTID`) REFERENCES `intmt` (`INTID`),
  ADD CONSTRAINT `intmp_ibfk_2` FOREIGN KEY (`ITCMT`) REFERENCES `itcmt` (`ITCMT`);

--
-- Constraints for table `sttmt`
--
ALTER TABLE `sttmt`
  ADD CONSTRAINT `sttmt_ibfk_1` FOREIGN KEY (`CNTID`) REFERENCES `cntmt` (`CNTID`);

--
-- Constraints for table `uacmp`
--
ALTER TABLE `uacmp`
  ADD CONSTRAINT `uacmp_ibfk_1` FOREIGN KEY (`ACCID`) REFERENCES `uacmt` (`ACCID`),
  ADD CONSTRAINT `uacmp_ibfk_2` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`);

--
-- Constraints for table `uadmp`
--
ALTER TABLE `uadmp`
  ADD CONSTRAINT `uadmp_ibfk_1` FOREIGN KEY (`ADRID`) REFERENCES `addmt` (`ADRID`),
  ADD CONSTRAINT `uadmp_ibfk_2` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`);

--
-- Constraints for table `uchmp`
--
ALTER TABLE `uchmp`
  ADD CONSTRAINT `uchmp_ibfk_1` FOREIGN KEY (`CHRID`) REFERENCES `chrmt` (`CHRID`),
  ADD CONSTRAINT `uchmp_ibfk_2` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `uchmt`
--
ALTER TABLE `uchmt`
  ADD CONSTRAINT `uchmt_ibfk_1` FOREIGN KEY (`CHRID`) REFERENCES `chrmt` (`CHRID`),
  ADD CONSTRAINT `uchmt_ibfk_2` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `uchmt_ibfk_3` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `uetmp`
--
ALTER TABLE `uetmp`
  ADD CONSTRAINT `uetmp_ibfk_1` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `uetmp_ibfk_2` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `ufrtr`
--
ALTER TABLE `ufrtr`
  ADD CONSTRAINT `ufrtr_ibfk_1` FOREIGN KEY (`TOUSR`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `ufrtr_ibfk_2` FOREIGN KEY (`FMUSR`) REFERENCES `usrmt` (`USRID`);

--
-- Constraints for table `utrmp`
--
ALTER TABLE `utrmp`
  ADD CONSTRAINT `utrmp_ibfk_1` FOREIGN KEY (`ROLID`) REFERENCES `rolmt` (`ROLID`),
  ADD CONSTRAINT `utrmp_ibfk_2` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `vempt`
--
ALTER TABLE `vempt`
  ADD CONSTRAINT `vempt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `vempt_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`),
  ADD CONSTRAINT `vempt_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `etymt` (`ETYID`),
  ADD CONSTRAINT `vempt_ibfk_4` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `vempt_ibfk_5` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `vgrdt`
--
ALTER TABLE `vgrdt`
  ADD CONSTRAINT `vgrdt_ibfk_1` FOREIGN KEY (`CHRID`) REFERENCES `chrmt` (`CHRID`),
  ADD CONSTRAINT `vgrdt_ibfk_2` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `vgrdt_ibfk_3` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`),
  ADD CONSTRAINT `vgrdt_ibfk_4` FOREIGN KEY (`ETYID`) REFERENCES `etymt` (`ETYID`),
  ADD CONSTRAINT `vgrdt_ibfk_5` FOREIGN KEY (`RULID`) REFERENCES `rulmt` (`RULID`),
  ADD CONSTRAINT `vgrdt_ibfk_6` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `vgrdt_ibfk_7` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `vgrmt`
--
ALTER TABLE `vgrmt`
  ADD CONSTRAINT `vgrmt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `vgrmt_ibfk_2` FOREIGN KEY (`RULID`) REFERENCES `rulmt` (`RULID`);

--
-- Constraints for table `vrumt`
--
ALTER TABLE `vrumt`
  ADD CONSTRAINT `vrumt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `vrumt_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`),
  ADD CONSTRAINT `vrumt_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `etymt` (`ETYID`),
  ADD CONSTRAINT `vrumt_ibfk_4` FOREIGN KEY (`RULID`) REFERENCES `rulmt` (`RULID`),
  ADD CONSTRAINT `vrumt_ibfk_5` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `vrumt_ibfk_6` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `vtrdt`
--
ALTER TABLE `vtrdt`
  ADD CONSTRAINT `vtrdt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `vtrdt_ibfk_2` FOREIGN KEY (`ETCID`) REFERENCES `etcmt` (`ETCID`),
  ADD CONSTRAINT `vtrdt_ibfk_3` FOREIGN KEY (`ETYID`) REFERENCES `etymt` (`ETYID`),
  ADD CONSTRAINT `vtrdt_ibfk_4` FOREIGN KEY (`RULID`) REFERENCES `rulmt` (`RULID`),
  ADD CONSTRAINT `vtrdt_ibfk_5` FOREIGN KEY (`USRID`) REFERENCES `usrmt` (`USRID`),
  ADD CONSTRAINT `vtrdt_ibfk_6` FOREIGN KEY (`UTYID`) REFERENCES `utymt` (`UTYID`);

--
-- Constraints for table `vtrmt`
--
ALTER TABLE `vtrmt`
  ADD CONSTRAINT `vtrmt_ibfk_1` FOREIGN KEY (`ENTID`) REFERENCES `entmt` (`ENTID`),
  ADD CONSTRAINT `vtrmt_ibfk_2` FOREIGN KEY (`RULID`) REFERENCES `rulmt` (`RULID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
