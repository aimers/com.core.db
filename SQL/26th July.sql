-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2015 at 08:46 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Address Master' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `addmt`
--

INSERT INTO `addmt` (`ADRID`, `STRET`, `LNDMK`, `LOCLT`, `CTYID`, `PINCD`, `LONGT`, `LATIT`, `CHNDT`, `CRTDT`, `ACTIV`, `CHNBY`, `CRTBY`) VALUES
(1, '17-B, Main Road', 'Near China Land', 'Koramangala', 1, '560030', '12.9354509', '77.6321925', NULL, '2015-07-17 00:00:00', 1, NULL, 1),
(2, '80 Feet Road, K M Road, 25', 'Koramangala Indoor Stadium', 'Koramangala', 1, '560001', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(3, 'CA-17, 6th Cross, 6th Block', 'Opp The Koramangala Club', 'Koramangala', 1, '560095', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(4, 'National Games Housing Complex, KHB', 'Near NGV Club', 'Koramangala ', 1, '560047', '12.9327202', '77.6169384', NULL, '2015-07-18 00:00:00', 1, NULL, 1),
(5, '18th Main Road', 'Opp Vapour Pub and Brewery', 'Indiranagar', 1, '560038', '12.9731050', '77.6382550', NULL, '2015-07-23 00:00:00', 1, 0, 1),
(6, '12th Main Road, 2nd Stage', 'Near Jimi''s Beer Cafe', 'Indira Nagar', 1, '560038', '12.9731050', '77.6382550', NULL, '2015-07-23 00:00:00', 1, NULL, 1),
(7, 'No. 4005, 100 Feet Rd, HAL', 'Opp Barbeque Nation', 'Indiranagar', 1, '560038', '12.9714864', '77.6352165', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(8, 'Sagar Hospitals', '44/54, 30th Cross', 'Tilaknagar,Jayanagar', 1, '560041', '12.9288643', '77.6000954', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(9, 'Nethradhama Superspeciality Eye Hospital', '256/14, Kanakapura Main Road, 7th Block', 'Jayanagar', 1, '560082', '12.9245657', '77.5820553', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(10, 'Cloudnine, 1533, 9th Main', '3rd Block', 'Jayanagar', 1, '560011', '12.9337936', '77.5824083', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(11, 'Bangalore Hospital', '202, Rashtriya Vidyalaya Road', 'Basavanagudi', 1, '560004', '12.9337936', '77.5824083', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(12, 'Fortis Hospital', '154/9, Bannerghatta Road', 'Opposite IIM-B', 1, '560076', '12.8947687', '77.5986457', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(13, 'Nano Hospitals', 'No 79, Sir M Visveswaraya Rd', 'DLF City Road', 1, '560076', '12.8804629', '77.6095425', NULL, '2015-07-23 00:00:00', 1, 1, 0),
(14, 'Vasan Eye Care', 'DPS Tower, No.40, 1st Floor,Above ICICI ', 'Bannerghatta Road,Arekere', 1, '560076', '12.8823613', '77.5962670', NULL, '2015-07-23 00:00:00', 1, 1, 0);

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
  `CREAT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Create',
  `READ` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Read',
  `UPDAT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Update',
  `DELET` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Delete',
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'Active FlagTrue / False',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  PRIMARY KEY (`MPNID`),
  KEY `AUTID` (`AUTID`),
  KEY `ROLID` (`ROLID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='AUth Object Role Master Mapping' AUTO_INCREMENT=46 ;

--
-- Dumping data for table `aurmp`
--

INSERT INTO `aurmp` (`MPNID`, `ROLID`, `AUTID`, `CREAT`, `READ`, `UPDAT`, `DELET`, `ACTIV`, `CHNDT`, `CRTDT`, `CHNBY`, `CRTBY`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(2, 1, 2, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(3, 1, 3, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(4, 1, 4, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(5, 1, 5, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(6, 1, 6, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(7, 1, 7, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(8, 1, 8, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(9, 1, 9, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(10, 1, 10, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(11, 1, 11, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(12, 1, 12, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(13, 1, 13, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(14, 1, 14, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(16, 2, 1, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(17, 2, 2, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(18, 2, 3, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(19, 2, 4, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(20, 2, 5, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(21, 2, 6, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(22, 2, 7, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(23, 2, 8, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(24, 2, 9, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(25, 2, 10, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(26, 2, 11, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(27, 2, 12, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(28, 2, 13, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(29, 2, 14, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(31, 3, 1, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(32, 3, 2, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(33, 3, 3, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(34, 3, 4, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(35, 3, 5, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(36, 3, 6, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(37, 3, 7, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(38, 3, 8, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(39, 3, 9, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(40, 3, 10, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(41, 3, 11, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(42, 3, 12, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(43, 3, 13, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1),
(44, 3, 14, 1, 1, 1, 1, 1, NULL, '2015-07-26 00:00:00', NULL, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Auth Master' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `autmt`
--

INSERT INTO `autmt` (`AUTID`, `DESCR`, `ACTIV`, `CRTDT`, `CHNDT`, `CHNBY`, `CRTBY`) VALUES
(1, 'User''s Own Profile Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(2, 'Other User''s Profile Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(3, 'User Entity Entry Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(4, 'Entity Search Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(5, 'Vendor List Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(6, 'Rule Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(7, 'Role Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(8, 'User Type Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(9, 'Entity Type Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(10, 'Entity Category Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(11, 'Entity Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(12, 'Intent Type Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(13, 'Intent Category Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1),
(14, 'Intent Master Page', 1, '2015-07-26 00:00:00', NULL, NULL, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Charactiristics Type Master' AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

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
(8, 3, '1', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(9, 27, 'aurveda.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(10, 29, 'dentist.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(11, 36, 'homeopath.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(12, 38, 'neurologist.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(13, 47, 'surgeon.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(14, 28, 'cardiologist.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(15, 40, 'eyespecialist.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(16, 43, 'sexologist.png', 1, '2015-07-19 00:00:00', 1, NULL, NULL);

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
  `MPNID` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'Mappping ID',
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity Rules Mapping Table' AUTO_INCREMENT=256 ;

--
-- Dumping data for table `enrmp`
--

INSERT INTO `enrmp` (`MPNID`, `ETYID`, `ETCID`, `ENTID`, `RULID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(2, 1, 1, 1, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(3, 1, 1, 1, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(4, 1, 1, 1, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(5, 1, 1, 1, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(6, 1, 1, 1, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(7, 1, 1, 1, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(8, 1, 1, 1, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(9, 1, 1, 1, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(10, 1, 1, 2, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(11, 1, 1, 2, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(12, 1, 1, 2, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(13, 1, 1, 2, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(14, 1, 1, 2, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(15, 1, 1, 2, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(16, 1, 1, 2, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(17, 1, 1, 2, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(18, 1, 1, 2, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(19, 1, 1, 3, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(20, 1, 1, 3, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(21, 1, 1, 3, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(22, 1, 1, 3, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(23, 1, 1, 3, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(24, 1, 1, 3, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(25, 1, 1, 3, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(26, 1, 1, 3, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(27, 1, 1, 3, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(28, 1, 1, 4, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(29, 1, 1, 4, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(30, 1, 1, 4, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(31, 1, 1, 4, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(32, 1, 1, 4, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(33, 1, 1, 4, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(34, 1, 1, 4, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(35, 1, 1, 4, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(36, 1, 1, 4, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(37, 1, 1, 5, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(38, 1, 1, 5, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(39, 1, 1, 5, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(40, 1, 1, 5, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(41, 1, 1, 5, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(42, 1, 1, 5, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(43, 1, 1, 5, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(44, 1, 1, 5, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(45, 1, 1, 5, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(46, 1, 1, 6, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(47, 1, 1, 6, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(48, 1, 1, 6, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(49, 1, 1, 6, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(50, 1, 1, 6, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(51, 1, 1, 6, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(52, 1, 1, 6, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(53, 1, 1, 6, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(54, 1, 1, 6, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(55, 1, 1, 7, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(56, 1, 1, 7, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(57, 1, 1, 7, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(58, 1, 1, 7, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(59, 1, 1, 7, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(60, 1, 1, 7, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(61, 1, 1, 7, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(62, 1, 1, 7, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(63, 1, 1, 7, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(64, 1, 1, 8, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(65, 1, 1, 8, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(66, 1, 1, 8, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(67, 1, 1, 8, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(68, 1, 1, 8, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(69, 1, 1, 8, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(70, 1, 1, 8, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(71, 1, 1, 8, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(72, 1, 1, 8, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(73, 1, 1, 9, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(74, 1, 1, 9, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(75, 1, 1, 9, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(76, 1, 1, 9, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(77, 1, 1, 9, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(78, 1, 1, 9, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(79, 1, 1, 9, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(80, 1, 1, 9, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(81, 1, 1, 9, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(82, 1, 1, 10, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(83, 1, 1, 10, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(84, 1, 1, 10, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(85, 1, 1, 10, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(86, 1, 1, 10, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(87, 1, 1, 10, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(88, 1, 1, 10, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(89, 1, 1, 10, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(90, 1, 1, 10, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(91, 1, 1, 11, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(92, 1, 1, 11, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(93, 1, 1, 11, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(94, 1, 1, 11, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(95, 1, 1, 11, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(96, 1, 1, 11, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(97, 1, 1, 11, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(98, 1, 1, 11, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(99, 1, 1, 11, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(100, 1, 1, 12, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(101, 1, 1, 12, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(102, 1, 1, 12, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(103, 1, 1, 12, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(104, 1, 1, 12, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(105, 1, 1, 12, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(106, 1, 1, 12, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(107, 1, 1, 12, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(108, 1, 1, 12, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(109, 1, 1, 13, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(110, 1, 1, 13, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(111, 1, 1, 13, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(112, 1, 1, 13, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(113, 1, 1, 13, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(114, 1, 1, 13, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(115, 1, 1, 13, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(116, 1, 1, 13, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(117, 1, 1, 13, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(118, 1, 1, 14, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(119, 1, 1, 14, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(120, 1, 1, 14, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(121, 1, 1, 14, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(122, 1, 1, 14, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(123, 1, 1, 14, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(124, 1, 1, 14, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(125, 1, 1, 14, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(126, 1, 1, 14, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(127, 1, 1, 15, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(128, 1, 1, 15, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(129, 1, 1, 15, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(130, 1, 1, 15, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(131, 1, 1, 15, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(132, 1, 1, 15, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(133, 1, 1, 15, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(134, 1, 1, 15, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(135, 1, 1, 15, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(136, 1, 1, 16, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(137, 1, 1, 16, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(138, 1, 1, 16, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(139, 1, 1, 16, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(140, 1, 1, 16, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(141, 1, 1, 16, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(142, 1, 1, 16, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(143, 1, 1, 16, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(144, 1, 1, 16, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(145, 1, 1, 17, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(146, 1, 1, 17, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(147, 1, 1, 17, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(148, 1, 1, 17, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(149, 1, 1, 17, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(150, 1, 1, 17, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(151, 1, 1, 17, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(152, 1, 1, 17, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(153, 1, 1, 17, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(154, 1, 1, 18, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(155, 1, 1, 18, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(156, 1, 1, 18, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(157, 1, 1, 18, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(158, 1, 1, 18, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(159, 1, 1, 18, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(160, 1, 1, 18, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(161, 1, 1, 18, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(162, 1, 1, 18, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(163, 1, 1, 19, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(164, 1, 1, 19, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(165, 1, 1, 19, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(166, 1, 1, 19, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(167, 1, 1, 19, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(168, 1, 1, 19, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(169, 1, 1, 19, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(170, 1, 1, 19, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(171, 1, 1, 19, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(172, 1, 1, 20, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(173, 1, 1, 20, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(174, 1, 1, 20, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(175, 1, 1, 20, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(176, 1, 1, 20, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(177, 1, 1, 20, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(178, 1, 1, 20, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(179, 1, 1, 20, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(180, 1, 1, 20, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(181, 1, 1, 21, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(182, 1, 1, 21, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(183, 1, 1, 21, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(184, 1, 1, 21, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(185, 1, 1, 21, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(186, 1, 1, 21, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(187, 1, 1, 21, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(188, 1, 1, 21, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(189, 1, 1, 21, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(190, 1, 1, 22, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(191, 1, 1, 22, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(192, 1, 1, 22, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(193, 1, 1, 22, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(194, 1, 1, 22, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(195, 1, 1, 22, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(196, 1, 1, 22, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(197, 1, 1, 22, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(198, 1, 1, 22, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(199, 1, 1, 23, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(200, 1, 1, 23, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(201, 1, 1, 23, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(202, 1, 1, 23, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(203, 1, 1, 23, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(204, 1, 1, 23, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(205, 1, 1, 23, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(206, 1, 1, 23, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(207, 1, 1, 23, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(208, 1, 1, 24, 1, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(209, 1, 1, 24, 2, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(210, 1, 1, 24, 3, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(211, 1, 1, 24, 4, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(212, 1, 1, 24, 5, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(213, 1, 1, 24, 6, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(214, 1, 1, 24, 7, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(215, 1, 1, 24, 8, 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(216, 1, 1, 24, 9, 1, '2015-07-26 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Intent Entity Mapping Table' AUTO_INCREMENT=210 ;

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
(24, 1, 1, 1, 1, 1, 1, 1, 24, 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(25, 3, 2, 1, 1, 1, 1, 1, 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(26, 4, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(27, 5, 2, 1, 1, 1, 1, 1, 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(28, 6, 2, 1, 1, 1, 1, 1, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(29, 7, 2, 1, 1, 1, 1, 1, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(30, 8, 2, 1, 1, 1, 1, 1, 14, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(31, 23, 2, 1, 1, 1, 1, 1, 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(32, 24, 2, 1, 1, 1, 1, 1, 16, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(33, 25, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(34, 26, 2, 1, 1, 1, 1, 1, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(35, 27, 2, 1, 1, 1, 1, 1, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(36, 28, 2, 1, 1, 1, 1, 1, 12, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(37, 29, 2, 1, 1, 1, 1, 1, 13, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(38, 30, 2, 1, 1, 1, 1, 1, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(39, 31, 2, 1, 1, 1, 1, 1, 17, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(40, 32, 2, 1, 1, 1, 1, 1, 18, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(41, 33, 2, 1, 1, 1, 1, 1, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(42, 34, 2, 1, 1, 1, 1, 1, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(43, 3, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(44, 8, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(45, 26, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(46, 29, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(47, 34, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(50, 4, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(51, 24, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(52, 27, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(53, 30, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(54, 32, 2, 1, 1, 1, 1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(57, 4, 2, 1, 1, 1, 1, 1, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(58, 24, 2, 1, 1, 1, 1, 1, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(59, 27, 2, 1, 1, 1, 1, 1, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(60, 30, 2, 1, 1, 1, 1, 1, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(61, 32, 2, 1, 1, 1, 1, 1, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(64, 7, 2, 1, 1, 1, 1, 1, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(65, 25, 2, 1, 1, 1, 1, 1, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(66, 29, 2, 1, 1, 1, 1, 1, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(67, 31, 2, 1, 1, 1, 1, 1, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(68, 33, 2, 1, 1, 1, 1, 1, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(71, 5, 2, 1, 1, 1, 1, 1, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(72, 23, 2, 1, 1, 1, 1, 1, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(73, 26, 2, 1, 1, 1, 1, 1, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(74, 27, 2, 1, 1, 1, 1, 1, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(75, 31, 2, 1, 1, 1, 1, 1, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(78, 6, 2, 1, 1, 1, 1, 1, 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(79, 8, 2, 1, 1, 1, 1, 1, 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(80, 25, 2, 1, 1, 1, 1, 1, 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(81, 28, 2, 1, 1, 1, 1, 1, 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(82, 34, 2, 1, 1, 1, 1, 1, 5, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(85, 6, 2, 1, 1, 1, 1, 1, 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(86, 23, 2, 1, 1, 1, 1, 1, 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(87, 27, 2, 1, 1, 1, 1, 1, 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(88, 30, 2, 1, 1, 1, 1, 1, 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(89, 32, 2, 1, 1, 1, 1, 1, 6, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(92, 4, 2, 1, 1, 1, 1, 1, 7, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(93, 8, 2, 1, 1, 1, 1, 1, 7, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(94, 24, 2, 1, 1, 1, 1, 1, 7, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(95, 26, 2, 1, 1, 1, 1, 1, 7, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(96, 32, 2, 1, 1, 1, 1, 1, 7, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(99, 5, 2, 1, 1, 1, 1, 1, 8, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(100, 7, 2, 1, 1, 1, 1, 1, 8, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(101, 25, 2, 1, 1, 1, 1, 1, 8, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(102, 28, 2, 1, 1, 1, 1, 1, 8, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(103, 31, 2, 1, 1, 1, 1, 1, 8, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(106, 5, 2, 1, 1, 1, 1, 1, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(107, 23, 2, 1, 1, 1, 1, 1, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(108, 27, 2, 1, 1, 1, 1, 1, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(109, 30, 2, 1, 1, 1, 1, 1, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(110, 32, 2, 1, 1, 1, 1, 1, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(111, 33, 2, 1, 1, 1, 1, 1, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(113, 4, 2, 1, 1, 1, 1, 1, 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(114, 6, 2, 1, 1, 1, 1, 1, 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(115, 24, 2, 1, 1, 1, 1, 1, 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(116, 28, 2, 1, 1, 1, 1, 1, 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(120, 3, 2, 1, 1, 1, 1, 1, 11, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(121, 8, 2, 1, 1, 1, 1, 1, 11, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(122, 26, 2, 1, 1, 1, 1, 1, 11, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(123, 31, 2, 1, 1, 1, 1, 1, 11, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(124, 34, 2, 1, 1, 1, 1, 1, 11, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(127, 23, 2, 1, 1, 1, 1, 1, 12, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(128, 25, 2, 1, 1, 1, 1, 1, 12, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(129, 29, 2, 1, 1, 1, 1, 1, 12, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(130, 3, 2, 1, 1, 1, 1, 1, 13, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(131, 5, 2, 1, 1, 1, 1, 1, 13, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(132, 27, 2, 1, 1, 1, 1, 1, 13, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(133, 32, 2, 1, 1, 1, 1, 1, 13, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(137, 4, 2, 1, 1, 1, 1, 1, 14, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(138, 7, 2, 1, 1, 1, 1, 1, 14, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(139, 26, 2, 1, 1, 1, 1, 1, 14, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(140, 30, 2, 1, 1, 1, 1, 1, 14, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(144, 6, 2, 1, 1, 1, 1, 1, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(145, 23, 2, 1, 1, 1, 1, 1, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(146, 24, 2, 1, 1, 1, 1, 1, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(147, 29, 2, 1, 1, 1, 1, 1, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(148, 34, 2, 1, 1, 1, 1, 1, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(151, 5, 2, 1, 1, 1, 1, 1, 16, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(152, 8, 2, 1, 1, 1, 1, 1, 16, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(153, 27, 2, 1, 1, 1, 1, 1, 16, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(154, 32, 2, 1, 1, 1, 1, 1, 16, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(158, 7, 2, 1, 1, 1, 1, 1, 17, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(159, 25, 2, 1, 1, 1, 1, 1, 17, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(160, 28, 2, 1, 1, 1, 1, 1, 17, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(161, 6, 2, 1, 1, 1, 1, 1, 18, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(162, 23, 2, 1, 1, 1, 1, 1, 18, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(163, 30, 2, 1, 1, 1, 1, 1, 18, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(164, 33, 2, 1, 1, 1, 1, 1, 18, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(168, 3, 2, 1, 1, 1, 1, 1, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(169, 7, 2, 1, 1, 1, 1, 1, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(170, 26, 2, 1, 1, 1, 1, 1, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(171, 27, 2, 1, 1, 1, 1, 1, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(172, 31, 2, 1, 1, 1, 1, 1, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(175, 5, 2, 1, 1, 1, 1, 1, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(176, 8, 2, 1, 1, 1, 1, 1, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(177, 24, 2, 1, 1, 1, 1, 1, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(178, 28, 2, 1, 1, 1, 1, 1, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(179, 34, 2, 1, 1, 1, 1, 1, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(182, 4, 2, 1, 1, 1, 1, 1, 21, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(183, 7, 2, 1, 1, 1, 1, 1, 21, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(184, 26, 2, 1, 1, 1, 1, 1, 21, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(185, 29, 2, 1, 1, 1, 1, 1, 21, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(186, 32, 2, 1, 1, 1, 1, 1, 21, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(189, 6, 2, 1, 1, 1, 1, 1, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(190, 8, 2, 1, 1, 1, 1, 1, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(191, 25, 2, 1, 1, 1, 1, 1, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(192, 28, 2, 1, 1, 1, 1, 1, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(193, 33, 2, 1, 1, 1, 1, 1, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(196, 5, 2, 1, 1, 1, 1, 1, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(197, 24, 2, 1, 1, 1, 1, 1, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(198, 27, 2, 1, 1, 1, 1, 1, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(199, 30, 2, 1, 1, 1, 1, 1, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(200, 33, 2, 1, 1, 1, 1, 1, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(203, 4, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(204, 23, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(205, 28, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(206, 31, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(207, 32, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(208, 34, 2, 1, 1, 1, 1, 1, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Intent Type Master' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `itymt`
--

INSERT INTO `itymt` (`ITYID`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Book', 1, '2015-07-23 00:00:00', 1, NULL, NULL),
(2, 'Order', 1, '2015-07-23 00:00:00', 1, NULL, NULL),
(3, 'Quote', 1, '2015-07-23 00:00:00', 1, NULL, NULL);

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
-- Table structure for table `rltmt`
--

DROP TABLE IF EXISTS `rltmt`;
CREATE TABLE IF NOT EXISTS `rltmt` (
  `RLTID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCR` varchar(100) NOT NULL,
  `ACTV` tinyint(1) NOT NULL DEFAULT '1',
  `CRTDT` datetime NOT NULL,
  `CRTBY` bigint(16) NOT NULL,
  `CHNDT` datetime DEFAULT NULL,
  `CHNBY` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`RLTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rltmt`
--

INSERT INTO `rltmt` (`RLTID`, `DESCR`, `ACTV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Auto Approve', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(2, 'Manual Approve', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(3, 'Receive Call', 1, '2015-07-26 00:00:00', 1, NULL, NULL);

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
  `RLTID` int(3) NOT NULL COMMENT 'Rule Type ID',
  `RSTXT` varchar(50) DEFAULT NULL COMMENT 'Rule Short Text',
  `DESCR` varchar(200) DEFAULT NULL COMMENT 'Description',
  `ACTIV` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active Flag',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`RULID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Rules Master Table' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `rulmt`
--

INSERT INTO `rulmt` (`RULID`, `RLTID`, `RSTXT`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 'Week Days - 9:00 AM to 9:00 PM', 'This rule will be applied for Week Days,\r\nMon, Tue, Wed, Thu, Fri', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(2, 2, 'Week Days - 9:00 AM to 9:00 PM', 'This rule will be applied for Week Days,\r\nMon, Tue, Wed, Thu, Fri', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(3, 3, 'Week Days - 9:00 AM to 9:00 PM', 'This rule will be applied for Week Days,\r\nMon, Tue, Wed, Thu, Fri', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(4, 1, 'Week Ends - 9:00 AM to 9:00 PM', 'This rule will be applied to Ween End Days\r\nSat and Sun', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(5, 2, 'Week Ends - 9:00 AM to 9:00 PM', 'This rule will be applied to Week End Days\r\nSat and Sun', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(6, 3, 'Week Ends - 9:00 AM to 9:00 PM', 'This rule will be applied to Week End Days\r\nSat and Sun', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(7, 1, 'Saturday - 9:00 AM to 1:00 PM', 'This rule will be applied to Saturdays only', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(8, 2, 'Saturday - 9:00 AM to 1:00 PM', 'This rule will be applied to Saturdays only', 1, '2015-07-26 00:00:00', 1, NULL, NULL),
(9, 3, 'Saturday - 9:00 AM to 1:00 PM', 'This rule will be applied to Saturdays only', 1, '2015-07-26 00:00:00', 1, NULL, NULL);

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
  `TZCOD` char(20) DEFAULT NULL COMMENT 'Time Zone Code',
  `TIMZN` char(1) DEFAULT NULL COMMENT 'Actual Value',
  `DESCR` varchar(100) DEFAULT NULL,
  `ACTIV` tinyint(1) DEFAULT '1' COMMENT 'On/Off',
  `CRTDT` datetime NOT NULL COMMENT 'Created Date',
  `CRTBY` bigint(16) NOT NULL COMMENT 'Created By',
  `CHNDT` datetime DEFAULT NULL COMMENT 'Changed Date',
  `CHNBY` bigint(16) DEFAULT NULL COMMENT 'Changed By',
  PRIMARY KEY (`TZNID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=399 ;

--
-- Dumping data for table `tznmt`
--

INSERT INTO `tznmt` (`TZNID`, `TZCOD`, `TIMZN`, `DESCR`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'Africa/Abidjan', '', 'Africa/Abidjan - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, '0000-00-00 00:00:00', 0),
(2, 'Africa/Accra', '', 'Africa/Accra - Ghana Mean Time', 1, '2015-07-18 00:00:00', 1, '0000-00-00 00:00:00', 0),
(3, 'Africa/Algiers', NULL, 'Africa/Algiers - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 'Africa/Asmara', NULL, 'Africa/Asmara - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(5, 'Africa/Bamako', NULL, 'Africa/Bamako - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(6, 'Africa/Bangui', NULL, 'Africa/Bangui - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(7, 'Africa/Bangui', NULL, 'Africa/Bangui - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(8, 'Africa/Banjul', NULL, 'Africa/Banjul - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(9, 'Africa/Bissau', NULL, 'Africa/Bissau - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(10, 'Africa/Blantyre', NULL, 'Africa/Blantyre - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(11, 'Africa/Brazzaville', NULL, 'Africa/Brazzaville - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(12, 'Africa/Bujumbura', NULL, 'Africa/Bujumbura - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(13, 'Africa/Cairo', NULL, 'Africa/Cairo - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(14, 'Africa/Casablanca', NULL, 'Africa/Casablanca - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(15, 'Africa/Ceuta', NULL, 'Africa/Ceuta - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(16, 'Africa/Conakry', NULL, 'Africa/Conakry - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(17, 'Africa/Dakar', NULL, 'Africa/Dakar - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(18, 'Africa/Dar_es_Salaam', NULL, 'Africa/Dar_es_Salaam - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(19, 'Africa/Djibouti', NULL, 'Africa/Djibouti - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(20, 'Africa/Douala', NULL, 'Africa/Douala - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(21, 'Africa/El_Aaiun', NULL, 'Africa/El_Aaiun - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(22, 'Africa/Freetown', NULL, 'Africa/Freetown - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(23, 'Africa/Gaborone', NULL, 'Africa/Gaborone - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(24, 'Africa/Harare', NULL, 'Africa/Harare - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(25, 'Africa/Johannesburg', NULL, 'Africa/Johannesburg - South Africa Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(26, 'Africa/Juba', NULL, 'Africa/Juba - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(27, 'Africa/Kampala', NULL, 'Africa/Kampala - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(28, 'Africa/Khartoum', NULL, 'Africa/Khartoum - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(29, 'Africa/Kigali', NULL, 'Africa/Kigali - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(30, 'Africa/Kinshasa', NULL, 'Africa/Kinshasa - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(31, 'Africa/Lagos', NULL, 'Africa/Lagos - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(32, 'Africa/Libreville', NULL, 'Africa/Libreville - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(33, 'Africa/Lome', NULL, 'Africa/Lome - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(34, 'Africa/Luanda', NULL, 'Africa/Luanda - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(35, 'Africa/Lubumbashi', NULL, 'Africa/Lubumbashi - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(36, 'Africa/Lusaka', NULL, 'Africa/Lusaka - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(37, 'Africa/Malabo', NULL, 'Africa/Malabo - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(38, 'Africa/Maputo', NULL, 'Africa/Maputo - Central African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(39, 'Africa/Maseru', NULL, 'Africa/Maseru - South Africa Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(40, 'Africa/Mbabane', NULL, 'Africa/Mbabane - South Africa Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(41, 'Africa/Mogadishu', NULL, 'Africa/Mogadishu - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(42, 'Africa/Monrovia', NULL, 'Africa/Monrovia - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(43, 'Africa/Nairobi', NULL, 'Africa/Nairobi - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(44, 'Africa/Ndjamena', NULL, 'Africa/Ndjamena - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(45, 'Africa/Niamey', NULL, 'Africa/Niamey - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(46, 'Africa/Nouakchott', NULL, 'Africa/Nouakchott - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(47, 'Africa/Ouagadougou', NULL, 'Africa/Ouagadougou - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(48, 'Africa/Porto-Novo', NULL, 'Africa/Porto-Novo - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(49, 'Africa/Sao_Tome', NULL, 'Africa/Sao_Tome - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(50, 'Africa/Timbuktu', NULL, 'Africa/Timbuktu - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(51, 'Africa/Tripoli', NULL, 'Africa/Tripoli - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(52, 'Africa/Tunis', NULL, 'Africa/Tunis - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(53, 'Africa/Windhoek', NULL, 'Africa/Windhoek - Western African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(54, 'America/Adak', NULL, 'America/Adak - Hawaii-Aleutian Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(55, 'America/Anchorage', NULL, 'America/Anchorage - Alaska Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(56, 'America/Anguilla', NULL, 'America/Anguilla - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(57, 'America/Antigua', NULL, 'America/Antigua - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(58, 'America/Araguaina', NULL, 'America/Araguaina - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(59, 'America/Argentina/Bu', NULL, 'America/Argentina/Buenos_Aires - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(60, 'America/Argentina/Ca', NULL, 'America/Argentina/Catamarca - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(61, 'America/Argentina/Co', NULL, 'America/Argentina/ComodRivadavia - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(62, 'America/Argentina/Co', NULL, 'America/Argentina/Cordoba - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(63, 'America/Argentina/Ju', NULL, 'America/Argentina/Jujuy - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(64, 'America/Argentina/La', NULL, 'America/Argentina/La_Rioja - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(65, 'America/Argentina/Me', NULL, 'America/Argentina/Mendoza - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(66, 'America/Argentina/Ri', NULL, 'America/Argentina/Rio_Gallegos - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(67, 'America/Argentina/Sa', NULL, 'America/Argentina/Salta - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(68, 'America/Argentina/Sa', NULL, 'America/Argentina/San_Juan - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(69, 'America/Argentina/Sa', NULL, 'America/Argentina/San_Luis - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(70, 'America/Argentina/Tu', NULL, 'America/Argentina/Tucuman - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(71, 'America/Argentina/Us', NULL, 'America/Argentina/Ushuaia - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(72, 'America/Aruba', NULL, 'America/Aruba - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(73, 'America/Asuncion', NULL, 'America/Asuncion - Paraguay Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(74, 'America/Atikokan', NULL, 'America/Atikokan - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(75, 'America/Atka', NULL, 'America/Atka - Hawaii-Aleutian Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(76, 'America/Bahia', NULL, 'America/Bahia - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(77, 'America/Bahia_Bander', NULL, 'America/Bahia_Banderas - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(78, 'America/Barbados', NULL, 'America/Barbados - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(79, 'America/Belem', NULL, 'America/Belem - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(80, 'America/Belize', NULL, 'America/Belize - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(81, 'America/Blanc-Sablon', NULL, 'America/Blanc-Sablon - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(82, 'America/Boa_Vista', NULL, 'America/Boa_Vista - Amazon Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(83, 'America/Bogota', NULL, 'America/Bogota - Colombia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(84, 'America/Boise', NULL, 'America/Boise - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(85, 'America/Buenos_Aires', NULL, 'America/Buenos_Aires - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(86, 'America/Cambridge_Ba', NULL, 'America/Cambridge_Bay - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(87, 'America/Campo_Grande', NULL, 'America/Campo_Grande - Amazon Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(88, 'America/Cancun', NULL, 'America/Cancun - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(89, 'America/Caracas', NULL, 'America/Caracas - Venezuela Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(90, 'America/Catamarca', NULL, 'America/Catamarca - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(91, 'America/Cayenne', NULL, 'America/Cayenne - French Guiana Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(92, 'America/Cayman', NULL, 'America/Cayman - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(93, 'America/Chicago', NULL, 'America/Chicago - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(94, 'America/Chihuahua', NULL, 'America/Chihuahua - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(95, 'America/Coral_Harbou', NULL, 'America/Coral_Harbour - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(96, 'America/Cordoba', NULL, 'America/Cordoba - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(97, 'America/Costa_Rica', NULL, 'America/Costa_Rica - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(98, 'America/Creston', NULL, 'America/Creston - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(99, 'America/Cuiaba', NULL, 'America/Cuiaba - Amazon Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(100, 'America/Curacao', NULL, 'America/Curacao - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(101, 'America/Danmarkshavn', NULL, 'America/Danmarkshavn - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(102, 'America/Dawson', NULL, 'America/Dawson - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(103, 'America/Dawson_Creek', NULL, 'America/Dawson_Creek - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(104, 'America/Denver', NULL, 'America/Denver - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(105, 'America/Detroit', NULL, 'America/Detroit - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(106, 'America/Dominica', NULL, 'America/Dominica - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(107, 'America/Edmonton', NULL, 'America/Edmonton - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(108, 'America/Eirunepe', NULL, 'America/Eirunepe - Acre Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(109, 'America/El_Salvador', NULL, 'America/El_Salvador - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(110, 'America/Ensenada', NULL, 'America/Ensenada - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(111, 'America/Fort_Wayne', NULL, 'America/Fort_Wayne - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(112, 'America/Fortaleza', NULL, 'America/Fortaleza - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(113, 'America/Glace_Bay', NULL, 'America/Glace_Bay - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(114, 'America/Godthab', NULL, 'America/Godthab - Western Greenland Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(115, 'America/Goose_Bay', NULL, 'America/Goose_Bay - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(116, 'America/Grand_Turk', NULL, 'America/Grand_Turk - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(117, 'America/Grenada', NULL, 'America/Grenada - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(118, 'America/Guadeloupe', NULL, 'America/Guadeloupe - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(119, 'America/Guatemala', NULL, 'America/Guatemala - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(120, 'America/Guayaquil', NULL, 'America/Guayaquil - Ecuador Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(121, 'America/Guyana', NULL, 'America/Guyana - Guyana Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(122, 'America/Halifax', NULL, 'America/Halifax - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(123, 'America/Havana', NULL, 'America/Havana - Cuba Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(124, 'America/Hermosillo', NULL, 'America/Hermosillo - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(125, 'America/Indiana/Indi', NULL, 'America/Indiana/Indianapolis - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(126, 'America/Indiana/Knox', NULL, 'America/Indiana/Knox - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(127, 'America/Indiana/Mare', NULL, 'America/Indiana/Marengo - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(128, 'America/Indiana/Pete', NULL, 'America/Indiana/Petersburg - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(129, 'America/Indiana/Tell', NULL, 'America/Indiana/Tell_City - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(130, 'America/Indiana/Veva', NULL, 'America/Indiana/Vevay - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(131, 'America/Indiana/Vinc', NULL, 'America/Indiana/Vincennes - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(132, 'America/Indiana/Wina', NULL, 'America/Indiana/Winamac - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(133, 'America/Indianapolis', NULL, 'America/Indianapolis - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(134, 'America/Inuvik', NULL, 'America/Inuvik - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(135, 'America/Iqaluit', NULL, 'America/Iqaluit - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(136, 'America/Jamaica', NULL, 'America/Jamaica - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(137, 'America/Jujuy', NULL, 'America/Jujuy - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(138, 'America/Juneau', NULL, 'America/Juneau - Alaska Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(139, 'America/Kentucky/Lou', NULL, 'America/Kentucky/Louisville - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(140, 'America/Kentucky/Mon', NULL, 'America/Kentucky/Monticello - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(141, 'America/Knox_IN', NULL, 'America/Knox_IN - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(142, 'America/Kralendijk', NULL, 'America/Kralendijk - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(143, 'America/La_Paz', NULL, 'America/La_Paz - Bolivia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(144, 'America/Lima', NULL, 'America/Lima - Peru Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(145, 'America/Los_Angeles', NULL, 'America/Los_Angeles - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(146, 'America/Louisville', NULL, 'America/Louisville - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(147, 'America/Lower_Prince', NULL, 'America/Lower_Princes - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(148, 'America/Maceio', NULL, 'America/Maceio - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(149, 'America/Managua', NULL, 'America/Managua - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(150, 'America/Manaus', NULL, 'America/Manaus - Amazon Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(151, 'America/Marigot', NULL, 'America/Marigot - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(152, 'America/Martinique', NULL, 'America/Martinique - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(153, 'America/Matamoros', NULL, 'America/Matamoros - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(154, 'America/Mazatlan', NULL, 'America/Mazatlan - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(155, 'America/Mendoza', NULL, 'America/Mendoza - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(156, 'America/Menominee', NULL, 'America/Menominee - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(157, 'America/Merida', NULL, 'America/Merida - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(158, 'America/Metlakatla', NULL, 'America/Metlakatla - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(159, 'America/Mexico_City', NULL, 'America/Mexico_City - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(160, 'America/Miquelon', NULL, 'America/Miquelon - Pierre & Miquelon Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(161, 'America/Moncton', NULL, 'America/Moncton - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(162, 'America/Monterrey', NULL, 'America/Monterrey - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(163, 'America/Montevideo', NULL, 'America/Montevideo - Uruguay Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(164, 'America/Montreal', NULL, 'America/Montreal - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(165, 'America/Montserrat', NULL, 'America/Montserrat - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(166, 'America/Nassau', NULL, 'America/Nassau - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(167, 'America/New_York', NULL, 'America/New_York - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(168, 'America/Nipigon', NULL, 'America/Nipigon - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(169, 'America/Nome', NULL, 'America/Nome - Alaska Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(170, 'America/Noronha', NULL, 'America/Noronha - Fernando de Noronha Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(171, 'America/North_Dakota', NULL, 'America/North_Dakota/Beulah - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(172, 'America/North_Dakota', NULL, 'America/North_Dakota/Center - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(173, 'America/North_Dakota', NULL, 'America/North_Dakota/New_Salem - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(174, 'America/Ojinaga', NULL, 'America/Ojinaga - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(175, 'America/Panama', NULL, 'America/Panama - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(176, 'America/Pangnirtung', NULL, 'America/Pangnirtung - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(177, 'America/Paramaribo', NULL, 'America/Paramaribo - Suriname Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(178, 'America/Phoenix', NULL, 'America/Phoenix - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(179, 'America/Port-au-Prin', NULL, 'America/Port-au-Prince - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(180, 'America/Port_of_Spai', NULL, 'America/Port_of_Spain - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(181, 'America/Porto_Acre', NULL, 'America/Porto_Acre - Acre Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(182, 'America/Porto_Velho', NULL, 'America/Porto_Velho - Amazon Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(183, 'America/Puerto_Rico', NULL, 'America/Puerto_Rico - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(184, 'America/Rainy_River', NULL, 'America/Rainy_River - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(185, 'America/Rankin_Inlet', NULL, 'America/Rankin_Inlet - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(186, 'America/Recife', NULL, 'America/Recife - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(187, 'America/Regina', NULL, 'America/Regina - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(188, 'America/Resolute', NULL, 'America/Resolute - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(189, 'America/Rio_Branco', NULL, 'America/Rio_Branco - Acre Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(190, 'America/Rosario', NULL, 'America/Rosario - Argentine Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(191, 'America/Santa_Isabel', NULL, 'America/Santa_Isabel - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(192, 'America/Santarem', NULL, 'America/Santarem - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(193, 'America/Santiago', NULL, 'America/Santiago - Chile Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(194, 'America/Santo_Doming', NULL, 'America/Santo_Domingo - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(195, 'America/Sao_Paulo', NULL, 'America/Sao_Paulo - Brasilia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(196, 'America/Scoresbysund', NULL, 'America/Scoresbysund - Eastern Greenland Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(197, 'America/Shiprock', NULL, 'America/Shiprock - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(198, 'America/Sitka', NULL, 'America/Sitka - Alaska Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(199, 'America/St_Barthelem', NULL, 'America/St_Barthelemy - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(200, 'America/St_Johns', NULL, 'America/St_Johns - Newfoundland Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(201, 'America/St_Kitts', NULL, 'America/St_Kitts - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(202, 'America/St_Lucia', NULL, 'America/St_Lucia - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(203, 'America/St_Thomas', NULL, 'America/St_Thomas - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(204, 'America/St_Vincent', NULL, 'America/St_Vincent - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(205, 'America/Swift_Curren', NULL, 'America/Swift_Current - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(206, 'America/Tegucigalpa', NULL, 'America/Tegucigalpa - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(207, 'America/Thule', NULL, 'America/Thule - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(208, 'America/Thunder_Bay', NULL, 'America/Thunder_Bay - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(209, 'America/Tijuana', NULL, 'America/Tijuana - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(210, 'America/Toronto', NULL, 'America/Toronto - Eastern Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(211, 'America/Tortola', NULL, 'America/Tortola - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(212, 'America/Vancouver', NULL, 'America/Vancouver - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(213, 'America/Virgin', NULL, 'America/Virgin - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(214, 'America/Whitehorse', NULL, 'America/Whitehorse - Pacific Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(215, 'America/Winnipeg', NULL, 'America/Winnipeg - Central Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(216, 'America/Yakutat', NULL, 'America/Yakutat - Alaska Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(217, 'America/Yellowknife', NULL, 'America/Yellowknife - Mountain Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(218, 'Asia/Aden', NULL, 'Asia/Aden - Arabia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(219, 'Asia/Almaty', NULL, 'Asia/Almaty - Alma-Ata Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(220, 'Asia/Amman', NULL, 'Asia/Amman - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(221, 'Asia/Anadyr', NULL, 'Asia/Anadyr - Anadyr Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(222, 'Asia/Aqtau', NULL, 'Asia/Aqtau - Aqtau Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(223, 'Asia/Aqtobe', NULL, 'Asia/Aqtobe - Aqtobe Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(224, 'Asia/Ashgabat', NULL, 'Asia/Ashgabat - Turkmenistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(225, 'Asia/Ashkhabad', NULL, 'Asia/Ashkhabad - Turkmenistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(226, 'Asia/Baghdad', NULL, 'Asia/Baghdad - Arabia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(227, 'Asia/Bahrain', NULL, 'Asia/Bahrain - Arabia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(228, 'Asia/Baku', NULL, 'Asia/Baku - Azerbaijan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(229, 'Asia/Bangkok', NULL, 'Asia/Bangkok - Indochina Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(230, 'Asia/Beirut', NULL, 'Asia/Beirut - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(231, 'Asia/Bishkek', NULL, 'Asia/Bishkek - Kirgizstan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(232, 'Asia/Brunei', NULL, 'Asia/Brunei - Brunei Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(233, 'Asia/Calcutta', NULL, 'Asia/Calcutta - India Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(234, 'Asia/Chita', NULL, 'Asia/Chita - Irkutsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(235, 'Asia/Choibalsan', NULL, 'Asia/Choibalsan - Choibalsan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(236, 'Asia/Chongqing', NULL, 'Asia/Chongqing - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(237, 'Asia/Chungking', NULL, 'Asia/Chungking - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(238, 'Asia/Colombo', NULL, 'Asia/Colombo - India Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(239, 'Asia/Dacca', NULL, 'Asia/Dacca - Bangladesh Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(240, 'Asia/Damascus', NULL, 'Asia/Damascus - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(241, 'Asia/Dhaka', NULL, 'Asia/Dhaka - Bangladesh Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(242, 'Asia/Dili', NULL, 'Asia/Dili - Timor-Leste Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(243, 'Asia/Dubai', NULL, 'Asia/Dubai - Gulf Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(244, 'Asia/Dushanbe', NULL, 'Asia/Dushanbe - Tajikistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(245, 'Asia/Gaza', NULL, 'Asia/Gaza - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(246, 'Asia/Harbin', NULL, 'Asia/Harbin - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(247, 'Asia/Hebron', NULL, 'Asia/Hebron - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(248, 'Asia/Ho_Chi_Minh', NULL, 'Asia/Ho_Chi_Minh - Indochina Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(249, 'Asia/Hong_Kong', NULL, 'Asia/Hong_Kong - Hong Kong Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(250, 'Asia/Hovd', NULL, 'Asia/Hovd - Hovd Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(251, 'Asia/Irkutsk', NULL, 'Asia/Irkutsk - Irkutsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(252, 'Asia/Istanbul', NULL, 'Asia/Istanbul - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(253, 'Asia/Jakarta', NULL, 'Asia/Jakarta - West Indonesia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(254, 'Asia/Jayapura', NULL, 'Asia/Jayapura - East Indonesia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(255, 'Asia/Jerusalem', NULL, 'Asia/Jerusalem - Israel Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(256, 'Asia/Kabul', NULL, 'Asia/Kabul - Afghanistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(257, 'Asia/Kamchatka', NULL, 'Asia/Kamchatka - Petropavlovsk-Kamchatski Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(258, 'Asia/Karachi', NULL, 'Asia/Karachi - Pakistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(259, 'Asia/Kashgar', NULL, 'Asia/Kashgar - Xinjiang Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(260, 'Asia/Kathmandu', NULL, 'Asia/Kathmandu - Nepal Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(261, 'Asia/Katmandu', NULL, 'Asia/Katmandu - Nepal Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(262, 'Asia/Khandyga', NULL, 'Asia/Khandyga - Khandyga Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(263, 'Asia/Kolkata', NULL, 'Asia/Kolkata - India Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(264, 'Asia/Krasnoyarsk', NULL, 'Asia/Krasnoyarsk - Krasnoyarsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(265, 'Asia/Kuala_Lumpur', NULL, 'Asia/Kuala_Lumpur - Malaysia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(266, 'Asia/Kuching', NULL, 'Asia/Kuching - Malaysia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(267, 'Asia/Kuwait', NULL, 'Asia/Kuwait - Arabia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(268, 'Asia/Macao', NULL, 'Asia/Macao - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(269, 'Asia/Macau', NULL, 'Asia/Macau - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(270, 'Asia/Magadan', NULL, 'Asia/Magadan - Magadan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(271, 'Asia/Makassar', NULL, 'Asia/Makassar - Central Indonesia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(272, 'Asia/Manila', NULL, 'Asia/Manila - Philippines Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(273, 'Asia/Muscat', NULL, 'Asia/Muscat - Gulf Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(274, 'Asia/Nicosia', NULL, 'Asia/Nicosia - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(275, 'Asia/Novokuznetsk', NULL, 'Asia/Novokuznetsk - Krasnoyarsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(276, 'Asia/Novosibirsk', NULL, 'Asia/Novosibirsk - Novosibirsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(277, 'Asia/Omsk', NULL, 'Asia/Omsk - Omsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(278, 'Asia/Oral', NULL, 'Asia/Oral - Oral Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(279, 'Asia/Phnom_Penh', NULL, 'Asia/Phnom_Penh - Indochina Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(280, 'Asia/Pontianak', NULL, 'Asia/Pontianak - West Indonesia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(281, 'Asia/Pyongyang', NULL, 'Asia/Pyongyang - Korea Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(282, 'Asia/Qatar', NULL, 'Asia/Qatar - Arabia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(283, 'Asia/Qyzylorda', NULL, 'Asia/Qyzylorda - Qyzylorda Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(284, 'Asia/Rangoon', NULL, 'Asia/Rangoon - Myanmar Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(285, 'Asia/Riyadh', NULL, 'Asia/Riyadh - Arabia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(286, 'Asia/Riyadh87', NULL, 'Asia/Riyadh87 - GMT+03,07', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(287, 'Asia/Riyadh88', NULL, 'Asia/Riyadh88 - GMT+03,07', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(288, 'Asia/Riyadh89', NULL, 'Asia/Riyadh89 - GMT+03,07', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(289, 'Asia/Saigon', NULL, 'Asia/Saigon - Indochina Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(290, 'Asia/Sakhalin', NULL, 'Asia/Sakhalin - Sakhalin Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(291, 'Asia/Samarkand', NULL, 'Asia/Samarkand - Uzbekistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(292, 'Asia/Seoul', NULL, 'Asia/Seoul - Korea Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(293, 'Asia/Shanghai', NULL, 'Asia/Shanghai - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(294, 'Asia/Singapore', NULL, 'Asia/Singapore - Singapore Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(295, 'Asia/Srednekolymsk', NULL, 'Asia/Srednekolymsk - Srednekolymsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(296, 'Asia/Taipei', NULL, 'Asia/Taipei - China Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(297, 'Asia/Tashkent', NULL, 'Asia/Tashkent - Uzbekistan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(298, 'Asia/Tbilisi', NULL, 'Asia/Tbilisi - Georgia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(299, 'Asia/Tehran', NULL, 'Asia/Tehran - Iran Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(300, 'Asia/Tel_Aviv', NULL, 'Asia/Tel_Aviv - Israel Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(301, 'Asia/Thimbu', NULL, 'Asia/Thimbu - Bhutan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(302, 'Asia/Thimphu', NULL, 'Asia/Thimphu - Bhutan Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(303, 'Asia/Tokyo', NULL, 'Asia/Tokyo - Japan Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(304, 'Asia/Ujung_Pandang', NULL, 'Asia/Ujung_Pandang - Central Indonesia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(305, 'Asia/Ulaanbaatar', NULL, 'Asia/Ulaanbaatar - Ulaanbaatar Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(306, 'Asia/Ulan_Bator', NULL, 'Asia/Ulan_Bator - Ulaanbaatar Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(307, 'Asia/Urumqi', NULL, 'Asia/Urumqi - Xinjiang Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(308, 'Asia/Ust-Nera', NULL, 'Asia/Ust-Nera - Ust-Nera Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(309, 'Asia/Vientiane', NULL, 'Asia/Vientiane - Indochina Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(310, 'Asia/Vladivostok', NULL, 'Asia/Vladivostok - Vladivostok Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(311, 'Asia/Yakutsk', NULL, 'Asia/Yakutsk - Yakutsk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(312, 'Asia/Yekaterinburg', NULL, 'Asia/Yekaterinburg - Yekaterinburg Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(313, 'Asia/Yerevan', NULL, 'Asia/Yerevan - Armenia Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(314, 'Atlantic/Azores', NULL, 'Atlantic/Azores - Azores Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(315, 'Atlantic/Bermuda', NULL, 'Atlantic/Bermuda - Atlantic Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(316, 'Atlantic/Canary', NULL, 'Atlantic/Canary - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(317, 'Atlantic/Cape_Verde', NULL, 'Atlantic/Cape_Verde - Cape Verde Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(318, 'Atlantic/Faeroe', NULL, 'Atlantic/Faeroe - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(319, 'Atlantic/Faroe', NULL, 'Atlantic/Faroe - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(320, 'Atlantic/Jan_Mayen', NULL, 'Atlantic/Jan_Mayen - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(321, 'Atlantic/Madeira', NULL, 'Atlantic/Madeira - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(322, 'Atlantic/Reykjavik', NULL, 'Atlantic/Reykjavik - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(323, 'Atlantic/South_Georg', NULL, 'Atlantic/South_Georgia - South Georgia Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(324, 'Atlantic/St_Helena', NULL, 'Atlantic/St_Helena - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(325, 'Atlantic/Stanley', NULL, 'Atlantic/Stanley - Falkland Is. Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(326, 'Australia/ACT', NULL, 'Australia/ACT - Australian Eastern Standard Time (New South Wales)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(327, 'Australia/Adelaide', NULL, 'Australia/Adelaide - Australian Central Standard Time (South Australia)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(328, 'Australia/Brisbane', NULL, 'Australia/Brisbane - Australian Eastern Standard Time (Queensland)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(329, 'Australia/Broken_Hil', NULL, 'Australia/Broken_Hill - Australian Central Standard Time (South Australia/New South Wales)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(330, 'Australia/Canberra', NULL, 'Australia/Canberra - Australian Eastern Standard Time (New South Wales)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(331, 'Australia/Currie', NULL, 'Australia/Currie - Australian Eastern Standard Time (New South Wales)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(332, 'Australia/Darwin', NULL, 'Australia/Darwin - Australian Central Standard Time (Northern Territory)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(333, 'Australia/Eucla', NULL, 'Australia/Eucla - Australian Central Western Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(334, 'Australia/Hobart', NULL, 'Australia/Hobart - Australian Eastern Standard Time (Tasmania)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(335, 'Australia/LHI', NULL, 'Australia/LHI - Lord Howe Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(336, 'Australia/Lindeman', NULL, 'Australia/Lindeman - Australian Eastern Standard Time (Queensland)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(337, 'Australia/Lord_Howe', NULL, 'Australia/Lord_Howe - Lord Howe Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(338, 'Australia/Melbourne', NULL, 'Australia/Melbourne - Australian Eastern Standard Time (Victoria)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(339, 'Australia/NSW', NULL, 'Australia/NSW - Australian Eastern Standard Time (New South Wales)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(340, 'Australia/North', NULL, 'Australia/North - Australian Central Standard Time (Northern Territory)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(341, 'Australia/Perth', NULL, 'Australia/Perth - Australian Western Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(342, 'Australia/Queensland', NULL, 'Australia/Queensland - Australian Eastern Standard Time (Queensland)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(343, 'Australia/South', NULL, 'Australia/South - Australian Central Standard Time (South Australia)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(344, 'Australia/Sydney', NULL, 'Australia/Sydney - Australian Eastern Standard Time (New South Wales)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(345, 'Australia/Tasmania', NULL, 'Australia/Tasmania - Australian Eastern Standard Time (Tasmania)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(346, 'Australia/Victoria', NULL, 'Australia/Victoria - Australian Eastern Standard Time (Victoria)', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(347, 'Europe/Isle_of_Man', NULL, 'Europe/Isle_of_Man - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(348, 'Europe/Istanbul', NULL, 'Europe/Istanbul - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(349, 'Europe/Jersey', NULL, 'Europe/Jersey - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(350, 'Europe/Kaliningrad', NULL, 'Europe/Kaliningrad - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(351, 'Europe/Kiev', NULL, 'Europe/Kiev - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(352, 'Europe/Lisbon', NULL, 'Europe/Lisbon - Western European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(353, 'Europe/Ljubljana', NULL, 'Europe/Ljubljana - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(354, 'Europe/London', NULL, 'Europe/London - Greenwich Mean Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(355, 'Europe/Luxembourg', NULL, 'Europe/Luxembourg - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(356, 'Europe/Madrid', NULL, 'Europe/Madrid - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(357, 'Europe/Malta', NULL, 'Europe/Malta - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(358, 'Europe/Mariehamn', NULL, 'Europe/Mariehamn - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(359, 'Europe/Minsk', NULL, 'Europe/Minsk - Moscow Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(360, 'Europe/Monaco', NULL, 'Europe/Monaco - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(361, 'Europe/Moscow', NULL, 'Europe/Moscow - Moscow Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(362, 'Europe/Nicosia', NULL, 'Europe/Nicosia - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(363, 'Europe/Oslo', NULL, 'Europe/Oslo - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(364, 'Europe/Paris', NULL, 'Europe/Paris - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(365, 'Europe/Podgorica', NULL, 'Europe/Podgorica - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(366, 'Europe/Prague', NULL, 'Europe/Prague - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(367, 'Europe/Riga', NULL, 'Europe/Riga - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(368, 'Europe/Rome', NULL, 'Europe/Rome - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(369, 'Europe/Samara', NULL, 'Europe/Samara - Samara Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(370, 'Europe/San_Marino', NULL, 'Europe/San_Marino - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(371, 'Europe/Sarajevo', NULL, 'Europe/Sarajevo - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(372, 'Europe/Simferopol', NULL, 'Europe/Simferopol - Moscow Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(373, 'Europe/Skopje', NULL, 'Europe/Skopje - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(374, 'Europe/Sofia', NULL, 'Europe/Sofia - Eastern European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(375, 'Europe/Stockholm', NULL, 'Europe/Stockholm - Central European Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(376, 'Indian/Antananarivo', NULL, 'Indian/Antananarivo - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(377, 'Indian/Chagos', NULL, 'Indian/Chagos - Indian Ocean Territory Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(378, 'Indian/Christmas', NULL, 'Indian/Christmas - Christmas Island Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(379, 'Indian/Cocos', NULL, 'Indian/Cocos - Cocos Islands Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(380, 'Indian/Comoro', NULL, 'Indian/Comoro - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(381, 'Indian/Kerguelen', NULL, 'Indian/Kerguelen - French Southern & Antarctic Lands Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(382, 'Indian/Mahe', NULL, 'Indian/Mahe - Seychelles Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(383, 'Indian/Maldives', NULL, 'Indian/Maldives - Maldives Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(384, 'Indian/Mauritius', NULL, 'Indian/Mauritius - Mauritius Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(385, 'Indian/Mayotte', NULL, 'Indian/Mayotte - Eastern African Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(386, 'Indian/Reunion', NULL, 'Indian/Reunion - Reunion Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(387, 'Pacific/Apia', NULL, 'Pacific/Apia - West Samoa Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(388, 'Pacific/Auckland', NULL, 'Pacific/Auckland - New Zealand Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(389, 'Pacific/Bougainville', NULL, 'Pacific/Bougainville - Bougainville Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(390, 'Pacific/Chatham', NULL, 'Pacific/Chatham - Chatham Standard Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(391, 'Pacific/Chuuk', NULL, 'Pacific/Chuuk - Chuuk Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(392, 'Pacific/Easter', NULL, 'Pacific/Easter - Easter Is. Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(393, 'Pacific/Efate', NULL, 'Pacific/Efate - Vanuatu Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(394, 'Pacific/Enderbury', NULL, 'Pacific/Enderbury - Phoenix Is. Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(395, 'Pacific/Fakaofo', NULL, 'Pacific/Fakaofo - Tokelau Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(396, 'Pacific/Fiji', NULL, 'Pacific/Fiji - Fiji Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(397, 'Pacific/Funafuti', NULL, 'Pacific/Funafuti - Tuvalu Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(398, 'Pacific/Galapagos', NULL, 'Pacific/Galapagos - Galapagos Time', 1, '2015-07-18 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Account Mapping Table' AUTO_INCREMENT=26 ;

--
-- Dumping data for table `uacmp`
--

INSERT INTO `uacmp` (`MPNID`, `USRID`, `ACCID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 1, 1, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 2, 2, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 3, 3, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 4, 4, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(5, 5, 9, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(6, 6, 10, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(7, 7, 11, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(8, 8, 12, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(9, 23, 13, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(10, 24, 14, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(11, 25, 15, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(12, 26, 16, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(13, 27, 17, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(14, 28, 18, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(15, 29, 19, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(16, 30, 20, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(17, 31, 21, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(18, 32, 22, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(19, 33, 23, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(20, 34, 24, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(21, 35, 25, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(22, 36, 26, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(23, 37, 27, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(24, 38, 28, 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(25, 39, 29, 1, '2015-07-18 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Account Master' AUTO_INCREMENT=30 ;

--
-- Dumping data for table `uacmt`
--

INSERT INTO `uacmt` (`ACCID`, `USRNM`, `UERPW`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'admin@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(2, 'john.doe@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(3, 'thomas.stewart@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(4, 'jane.pearson@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(9, 'rakesh.kulkarni@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(10, 'ramesh.jha@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(11, 'swati.trivedi@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(12, 'dayanand.sharma@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(13, 'rohini.pandey@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(14, 'prabhu.acharya@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(15, 'john.abbott@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(16, 'alma.berry@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(17, 'celia.blake@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(18, 'claudia.carter@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(19, 'danita.garret@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(20, 'edwina.gibbs@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(21, 'hazel.johnson@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(22, 'kim.joshep@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(23, 'lane.joshep@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(24, 'minta.lynn@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(25, 'nita.parekh@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(26, 'rosa.moors@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(27, 'clifton.ray@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(28, 'dawson.neal@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL),
(29, 'daxter.nowell@aimersinfosoft.com', 'aim@123', 1, '2015-07-18 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Master - Address Master Mapping' AUTO_INCREMENT=27 ;

--
-- Dumping data for table `uadmp`
--

INSERT INTO `uadmp` (`MPNID`, `USRID`, `ADRID`, `PRIMR`, `ACTIV`, `CHNDT`, `CRTDT`, `CRTBY`, `CHNBY`) VALUES
(1, 1, 1, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(2, 2, 2, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(3, 3, 3, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(4, 4, 4, 1, 1, NULL, '2015-07-18 00:00:00', 1, NULL),
(5, 5, 5, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(6, 6, 6, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(7, 7, 7, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(8, 8, 8, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(9, 23, 9, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(10, 24, 10, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(11, 25, 11, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(12, 26, 12, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(13, 27, 13, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(14, 28, 14, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(15, 29, 4, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(16, 30, 7, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(17, 31, 12, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(18, 32, 6, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(19, 33, 8, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(20, 36, 10, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(21, 37, 10, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(22, 38, 5, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(23, 39, 14, 1, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(24, 7, 11, NULL, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(25, 27, 7, NULL, 1, NULL, '2015-07-23 00:00:00', 1, NULL),
(26, 33, 11, NULL, 1, NULL, '2015-07-23 00:00:00', 1, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Cherectristics Master' AUTO_INCREMENT=263 ;

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
(15, 1, 2, 4, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(16, 2, 2, 4, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(17, 3, 2, 4, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(18, 4, 2, 4, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(19, 5, 2, 4, 'email@company.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(20, 6, 2, 4, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(21, 7, 2, 4, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(22, 8, 1, 1, 'M-9.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(23, 8, 2, 7, 'F-4.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(24, 8, 2, 23, 'F-5.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(25, 8, 2, 26, 'F-6.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(26, 8, 2, 27, 'F-7.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(27, 8, 2, 28, 'F-8.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(28, 8, 2, 29, 'F-9.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(29, 8, 2, 30, 'F-10.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(30, 8, 2, 31, 'F-11.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(31, 8, 2, 32, 'F-1.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(32, 8, 2, 33, 'F-2.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(33, 8, 2, 34, 'F-3.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(34, 8, 2, 5, 'M-1.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(35, 8, 2, 6, 'M-3.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(36, 8, 2, 8, 'M-2.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(37, 8, 2, 24, 'M-4.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(38, 8, 2, 25, 'M-5.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(39, 8, 3, 39, 'M-8.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(40, 8, 3, 38, 'M-7.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(41, 8, 3, 37, 'M-6.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(42, 8, 3, 35, 'F-10.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(43, 8, 3, 36, 'F-3.jpg', 1, '2015-07-25 00:00:00', 1, NULL, NULL),
(44, 1, 2, 5, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(45, 1, 2, 6, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(46, 1, 2, 7, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(47, 1, 2, 8, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(48, 1, 2, 23, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(49, 1, 2, 24, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(50, 1, 2, 25, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(51, 1, 2, 26, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(52, 1, 2, 27, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(53, 1, 2, 28, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(54, 1, 2, 29, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(55, 1, 2, 30, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(56, 1, 2, 31, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(57, 1, 2, 32, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(58, 1, 2, 33, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(59, 1, 2, 34, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(60, 1, 3, 35, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(61, 1, 3, 36, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(62, 1, 3, 37, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(63, 1, 3, 38, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(64, 1, 3, 39, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(75, 2, 2, 5, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(76, 2, 2, 6, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(77, 2, 2, 7, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(78, 2, 2, 8, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(79, 2, 2, 23, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(80, 2, 2, 24, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(81, 2, 2, 25, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(82, 2, 2, 26, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(83, 2, 2, 27, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(84, 2, 2, 28, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(85, 2, 2, 29, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(86, 2, 2, 30, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(87, 2, 2, 31, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(88, 2, 2, 32, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(89, 2, 2, 33, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(90, 2, 2, 34, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(91, 2, 3, 35, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(92, 2, 3, 36, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(93, 2, 3, 37, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(94, 2, 3, 38, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(95, 2, 3, 39, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(106, 2, 3, 2, 'http://www.twitter.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(107, 1, 3, 2, 'http://www.facebook.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(108, 3, 3, 2, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(109, 3, 2, 5, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(110, 3, 2, 6, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(111, 3, 2, 7, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(112, 3, 2, 8, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(113, 3, 2, 23, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(114, 3, 2, 24, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(115, 3, 2, 25, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(116, 3, 2, 26, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(117, 3, 2, 27, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(118, 3, 2, 28, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(119, 3, 2, 29, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(120, 3, 2, 30, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(121, 3, 2, 31, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(122, 3, 2, 32, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(123, 3, 2, 33, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(124, 3, 2, 34, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(125, 3, 3, 35, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(126, 3, 3, 36, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(127, 3, 3, 37, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(128, 3, 3, 38, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(129, 3, 3, 39, 'http://www.plus.google.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(139, 4, 3, 2, 'john.doe@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(140, 4, 2, 5, 'rakesh.kulkarni@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(141, 4, 2, 6, 'ramesh.jha@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(142, 4, 2, 7, 'swati.trivedi@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(143, 4, 2, 8, 'dayanand.sharma@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(144, 4, 2, 23, 'rohini.pandey@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(145, 4, 2, 24, 'prabhu.acharya@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(146, 4, 2, 25, 'john.abbott@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(147, 4, 2, 26, 'alma.berry@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(148, 4, 2, 27, 'celia.blake@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(149, 4, 2, 28, 'claudia.carter@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(150, 4, 2, 29, 'danita.garret@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(151, 4, 2, 30, 'edwina.gibbs@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(152, 4, 2, 31, 'hazel.johnson@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(153, 4, 2, 32, 'kim.joshep@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(154, 4, 2, 33, 'lane.joshep@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(155, 4, 2, 34, 'minta.lynn@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(156, 4, 3, 35, 'nita.parekh@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(157, 4, 3, 36, 'rosa.moors@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(158, 4, 3, 37, 'clifton.ray@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(159, 4, 3, 38, 'dawson.neal@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(160, 4, 3, 39, 'daxter.nowell@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(170, 5, 3, 2, 'john.doe@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(171, 5, 2, 5, 'rakesh.kulkarni@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(172, 5, 2, 6, 'ramesh.jha@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(173, 5, 2, 7, 'swati.trivedi@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(174, 5, 2, 8, 'dayanand.sharma@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(175, 5, 2, 23, 'rohini.pandey@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(176, 5, 2, 24, 'prabhu.acharya@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(177, 5, 2, 25, 'john.abbott@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(178, 5, 2, 26, 'alma.berry@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(179, 5, 2, 27, 'celia.blake@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(180, 5, 2, 28, 'claudia.carter@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(181, 5, 2, 29, 'danita.garret@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(182, 5, 2, 30, 'edwina.gibbs@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(183, 5, 2, 31, 'hazel.johnson@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(184, 5, 2, 32, 'kim.joshep@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(185, 5, 2, 33, 'lane.joshep@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(186, 5, 2, 34, 'minta.lynn@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(187, 5, 3, 35, 'nita.parekh@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(188, 5, 3, 36, 'rosa.moors@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(189, 5, 3, 37, 'clifton.ray@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(190, 5, 3, 38, 'dawson.neal@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(191, 5, 3, 39, 'daxter.nowell@aimersinfosoft.com', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(201, 6, 3, 2, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(202, 6, 2, 5, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(203, 6, 2, 6, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(204, 6, 2, 7, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(205, 6, 2, 8, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(206, 6, 2, 23, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(207, 6, 2, 24, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(208, 6, 2, 25, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(209, 6, 2, 26, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(210, 6, 2, 27, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(211, 6, 2, 28, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(212, 6, 2, 29, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(213, 6, 2, 30, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(214, 6, 2, 31, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(215, 6, 2, 32, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(216, 6, 2, 33, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(217, 6, 2, 34, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(218, 6, 3, 35, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(219, 6, 3, 36, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(220, 6, 3, 37, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(221, 6, 3, 38, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(222, 6, 3, 39, '08012121212', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(232, 7, 3, 2, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(233, 7, 2, 5, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(234, 7, 2, 6, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(235, 7, 2, 7, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(236, 7, 2, 8, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(237, 7, 2, 23, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(238, 7, 2, 24, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(239, 7, 2, 25, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(240, 7, 2, 26, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(241, 7, 2, 27, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(242, 7, 2, 28, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(243, 7, 2, 29, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(244, 7, 2, 30, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(245, 7, 2, 31, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(246, 7, 2, 32, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(247, 7, 2, 33, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(248, 7, 2, 34, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(249, 7, 3, 35, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(250, 7, 3, 36, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(251, 7, 3, 37, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(252, 7, 3, 38, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL),
(253, 7, 3, 39, '9999999999', 1, '2015-07-19 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Type- Entity Type Mapping' AUTO_INCREMENT=41 ;

--
-- Dumping data for table `uetmp`
--

INSERT INTO `uetmp` (`MPNID`, `UTYID`, `USRID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 2, 3, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(2, 3, 2, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 1, 1, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 2, 4, 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(5, 2, 5, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(6, 2, 6, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(7, 2, 7, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(8, 2, 8, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(9, 2, 23, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(10, 2, 24, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(11, 2, 25, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(12, 2, 26, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(13, 2, 27, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(14, 2, 28, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(15, 2, 29, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(16, 2, 30, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(17, 2, 31, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(18, 2, 32, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(19, 2, 33, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(20, 2, 34, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(36, 3, 35, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(37, 3, 36, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(38, 3, 37, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(39, 3, 38, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0),
(40, 3, 39, 1, '2015-07-23 00:00:00', 1, '0000-00-00 00:00:00', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='User Master Table' AUTO_INCREMENT=40 ;

--
-- Dumping data for table `usrmt`
--

INSERT INTO `usrmt` (`USRID`, `URCOD`, `PRFIX`, `TITLE`, `FRNAM`, `LTNAM`, `URDOB`, `GENDR`, `DSPNM`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`) VALUES
(1, 'A150000001', NULL, NULL, 'Aimers', 'Admin', '2015-07-15', 1, 'Aimers Administrator', 1, '2015-07-15 00:00:00', 1, NULL, NULL),
(2, 'A150000002', NULL, 'Mr.', 'John', 'Doe', '2015-07-17', 1, 'John Doe', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(3, 'A150000003', 'Dr.', 'Mr.', 'Thomas', 'Stewart', '2015-07-17', 1, 'Thomas Stewart', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(4, 'A150000004', 'Dr.', 'Ms.', 'Jane', 'Pearson', '2015-07-17', 2, 'Jane  Pearson', 1, '2015-07-17 00:00:00', 1, NULL, NULL),
(5, 'A150000005', 'Dr.', 'Mr.', 'Rakesh', 'Kulkarni', '2015-07-16', 1, 'Dr. Rakesh Kulkarni', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(6, 'A150000006', 'Dr.', 'Mr.', 'Ramesh', 'Jha', '1978-01-01', 1, 'Dr. Ramesh Jha', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(7, 'A150000007', 'Dr.', 'Ms.', 'Swati', 'Trivedi', '1999-10-21', 2, 'Dr. Swati Trivedi', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(8, 'A150000008', 'Dr.', 'Mr.', 'Dayanand', 'Sharma', '1984-11-26', 1, 'Dr. Dayanand Sharma', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(23, 'A150000009', 'Dr.', 'Ms.', 'Rohini', 'Pandey', '1975-07-20', 2, 'Dr. Rohini Pandey', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(24, 'A150000010', 'Dr.', 'Mr.', 'Prabhu', 'Acharya', '1985-08-16', 1, 'Dr. Prabhu Acharya', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(25, 'A150000011', 'Dr.', 'Mr.', 'John', 'Abbott', '1985-07-10', 1, 'Dr. John Abbott', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(26, 'A150000012', 'Dr.', 'Ms.', 'Alma', 'Berry', '2000-05-03', 2, 'Dr. Alma Berry', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(27, 'A150000013', 'Dr.', 'Ms.', 'Celia', 'Blake', '1988-05-05', 2, 'Dr. Celia Blake', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(28, 'A150000014', 'Dr.', 'Ms.', 'Claudia', 'Carter', '1963-03-04', 2, 'Dr. Claudia Carter', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(29, 'A150000015', 'Dr.', 'Ms.', 'Danita', 'Garret', '1987-07-25', 2, 'Dr. Danita Garret', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(30, 'A150000016', 'Dr.', 'Ms.', 'Edwina', 'Gibbs', '1954-01-25', 2, 'Dr. Edwina Gibbs', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(31, 'A150000017', 'Dr.', 'Ms.', 'Hazel', 'Johnson', '1977-07-16', 2, 'Dr. Hazel Johnson', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(32, 'A150000018', 'Dr.', 'Ms.', 'Kim', 'Joshep', '1975-04-26', 2, 'Dr. Kim Joshep', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(33, 'A150000019', 'Dr.', 'Ms.', 'Lane', 'Joshep', '1978-03-31', 2, 'Dr. Lane Joshep', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(34, 'A150000020', 'Dr.', 'Ms.', 'Minta', 'Lynn', '1983-04-30', 2, 'Dr. Minta Lynn', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(35, 'A150000021', '', 'Ms.', 'Nita', 'Parekh', '1978-01-01', 2, 'Nita Parekh', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(36, 'A150000022', '', 'Ms.', 'Rosa', 'Moors', '1999-10-21', 2, 'Rosa Moors', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(37, 'A150000023', '', 'Mr.', 'Clifton', 'Ray', '1984-11-26', 1, 'Clifton Ray', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(38, 'A150000024', '', 'Mr.', 'Dawson', 'Neal', '1969-07-16', 1, 'Dason Neal', 1, '2015-07-22 00:00:00', 1, NULL, NULL),
(39, 'A150000025', '', 'Mr.', 'Daxter', 'Nowell', '1975-07-20', 1, 'Daxter Nowell', 1, '2015-07-22 00:00:00', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Vendor Rules Master Table' AUTO_INCREMENT=190 ;

--
-- Dumping data for table `vrumt`
--

INSERT INTO `vrumt` (`VRMID`, `ACTIV`, `CRTDT`, `CRTBY`, `CHNDT`, `CHNBY`, `ETYID`, `ETCID`, `ENTID`, `RULID`, `UTYID`, `USRID`) VALUES
(1, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 1, 2, 4),
(2, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 1, 2, 3),
(3, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 1, 2, 8),
(4, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 1, 2, 26),
(5, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 2, 2, 4),
(6, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 1, 2, 24),
(7, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 1, 2, 27),
(8, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 2, 1, 2, 7),
(9, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 2, 1, 2, 4),
(10, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 2, 1, 2, 24),
(11, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 2, 1, 2, 27),
(12, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 3, 1, 2, 6),
(13, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 3, 1, 2, 7),
(14, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 3, 1, 2, 25),
(15, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 4, 1, 2, 5),
(16, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 4, 1, 2, 23),
(17, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 4, 1, 2, 26),
(18, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 4, 1, 2, 27),
(19, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 5, 1, 2, 5),
(20, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 5, 1, 2, 6),
(21, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 5, 1, 2, 8),
(22, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 5, 1, 2, 25),
(23, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 6, 1, 2, 3),
(24, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 6, 1, 2, 6),
(25, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 6, 1, 2, 23),
(26, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 6, 1, 2, 27),
(27, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 7, 1, 2, 4),
(28, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 7, 1, 2, 8),
(29, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 7, 1, 2, 24),
(30, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 7, 1, 2, 26),
(31, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 8, 1, 2, 5),
(32, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 8, 1, 2, 7),
(33, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 8, 1, 2, 25),
(34, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 9, 1, 2, 5),
(35, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 9, 1, 2, 23),
(36, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 9, 1, 2, 27),
(37, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 10, 1, 2, 23),
(38, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 10, 1, 2, 4),
(39, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 10, 1, 2, 6),
(40, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 10, 1, 2, 24),
(41, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 11, 1, 2, 3),
(42, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 11, 1, 2, 8),
(43, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 11, 1, 2, 26),
(44, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 12, 1, 2, 23),
(45, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 12, 1, 2, 25),
(46, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 13, 1, 2, 3),
(47, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 13, 1, 2, 5),
(48, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 13, 1, 2, 27),
(49, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 14, 1, 2, 8),
(50, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 14, 1, 2, 4),
(51, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 14, 1, 2, 7),
(52, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 14, 1, 2, 26),
(53, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 15, 1, 2, 6),
(54, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 15, 1, 2, 23),
(55, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 15, 1, 2, 24),
(56, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 16, 1, 2, 24),
(57, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 16, 1, 2, 5),
(58, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 16, 1, 2, 8),
(59, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 16, 1, 2, 27),
(60, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 17, 1, 2, 7),
(61, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 17, 1, 2, 25),
(62, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 18, 1, 2, 6),
(63, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 18, 1, 2, 23),
(64, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 19, 1, 2, 3),
(65, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 19, 1, 2, 7),
(66, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 19, 1, 2, 26),
(67, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 19, 1, 2, 27),
(68, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 20, 1, 2, 26),
(69, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 20, 1, 2, 5),
(70, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 20, 1, 2, 8),
(71, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 20, 1, 2, 24),
(72, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 21, 1, 2, 4),
(73, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 21, 1, 2, 7),
(74, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 21, 1, 2, 26),
(75, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 22, 1, 2, 27),
(76, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 22, 1, 2, 6),
(77, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 22, 1, 2, 8),
(78, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 22, 1, 2, 25),
(79, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 23, 1, 2, 5),
(80, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 23, 1, 2, 24),
(81, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 23, 1, 2, 27),
(82, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 1, 2, 25),
(83, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 1, 2, 4),
(84, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 1, 2, 23),
(128, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 2, 2, 29),
(129, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 2, 2, 30),
(130, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 2, 2, 2, 30),
(131, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 3, 2, 2, 29),
(132, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 3, 2, 2, 31),
(133, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 4, 2, 2, 31),
(134, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 5, 2, 2, 28),
(135, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 6, 2, 2, 30),
(136, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 8, 2, 2, 28),
(137, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 8, 2, 2, 31),
(138, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 9, 2, 2, 30),
(139, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 10, 2, 2, 28),
(140, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 11, 2, 2, 31),
(141, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 12, 2, 2, 28),
(142, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 12, 2, 2, 29),
(143, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 13, 2, 2, 29),
(144, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 14, 2, 2, 30),
(145, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 15, 2, 2, 30),
(146, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 15, 2, 2, 29),
(147, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 17, 2, 2, 31),
(148, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 17, 2, 2, 28),
(149, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 18, 2, 2, 30),
(150, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 19, 2, 2, 31),
(151, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 20, 2, 2, 28),
(152, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 21, 2, 2, 29),
(153, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 22, 2, 2, 28),
(154, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 23, 2, 2, 30),
(155, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 2, 2, 28),
(156, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 2, 2, 31),
(159, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 3, 2, 34),
(160, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 3, 2, 32),
(161, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 2, 3, 2, 32),
(162, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 3, 3, 2, 33),
(163, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 5, 3, 2, 34),
(164, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 6, 3, 2, 32),
(165, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 7, 3, 2, 32),
(166, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 9, 3, 2, 32),
(167, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 9, 3, 2, 33),
(168, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 11, 3, 2, 34),
(169, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 13, 3, 2, 32),
(170, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 15, 3, 2, 34),
(171, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 16, 3, 2, 32),
(172, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 18, 3, 2, 32),
(173, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 18, 3, 2, 33),
(174, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 19, 3, 2, 33),
(175, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 20, 3, 2, 34),
(176, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 21, 3, 2, 32),
(177, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 22, 3, 2, 33),
(178, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 23, 3, 2, 34),
(179, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 23, 3, 2, 33),
(180, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 3, 2, 32),
(181, 1, '2015-07-26 00:00:00', 1, NULL, NULL, 1, 1, 24, 3, 2, 34);

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
