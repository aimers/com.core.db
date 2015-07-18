SET SESSION FOREIGN_KEY_CHECKS=0;

 



/* Drop Tables */

DROP TABLE IF EXISTS UADMP;
DROP TABLE IF EXISTS ADDMT;
DROP TABLE IF EXISTS APRMP;
DROP TABLE IF EXISTS AURMP;
DROP TABLE IF EXISTS AUTMT;
DROP TABLE IF EXISTS UCHMP;
DROP TABLE IF EXISTS UCHMT;
DROP TABLE IF EXISTS VGRDT;
DROP TABLE IF EXISTS CHRMT;
DROP TABLE IF EXISTS CINMP;
DROP TABLE IF EXISTS CTYMT;
DROP TABLE IF EXISTS STTMT;
DROP TABLE IF EXISTS CNTMT;
DROP TABLE IF EXISTS ENCMP;
DROP TABLE IF EXISTS ENRMP;
DROP TABLE IF EXISTS ENTMP;
DROP TABLE IF EXISTS IENMP;
DROP TABLE IF EXISTS VEMPT;
DROP TABLE IF EXISTS VGRMT;
DROP TABLE IF EXISTS VRUMT;
DROP TABLE IF EXISTS VTRDT;
DROP TABLE IF EXISTS VTRMT;
DROP TABLE IF EXISTS ENTMT;
DROP TABLE IF EXISTS ETCMT;
DROP TABLE IF EXISTS ETYMT;
DROP TABLE IF EXISTS INCMP;
DROP TABLE IF EXISTS INTMP;
DROP TABLE IF EXISTS INTMT;
DROP TABLE IF EXISTS ITCMT;
DROP TABLE IF EXISTS ITYMT;
DROP TABLE IF EXISTS PRLMT;
DROP TABLE IF EXISTS UTRMP;
DROP TABLE IF EXISTS ROLMT;
DROP TABLE IF EXISTS RULMT;
DROP TABLE IF EXISTS TZNMT;
DROP TABLE IF EXISTS UACMP;
DROP TABLE IF EXISTS UACMT;
DROP TABLE IF EXISTS UETMP;
DROP TABLE IF EXISTS UFRTR;
DROP TABLE IF EXISTS USRMT;
DROP TABLE IF EXISTS UTYMT;




/* Create Tables */

-- Address Master
CREATE TABLE ADDMT
(
	-- Address ID
	ADRID BIGINT(8) NOT NULL COMMENT 'Address ID',
	-- Street
	STRET VARCHAR(100) COMMENT 'Street',
	-- Landmark
	LNDMK VARCHAR(40) COMMENT 'Landmark',
	-- Locality
	LOCLT VARCHAR(40) COMMENT 'Locality',
	-- City ID
	CTYID BIGINT NOT NULL COMMENT 'City ID',
	-- Pincode
	PINCD CHAR(6) COMMENT 'Pincode',
	-- Longitude
	LONGT DECIMAL(9,6) COMMENT 'Longitude',
	-- Latitude
	LATIT DECIMAL(9,6) COMMENT 'Latitude',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	PRIMARY KEY (ADRID)
) COMMENT = 'Address Master';


-- Account Privacy Rule Mapping
CREATE TABLE APRMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- Account ID
	ACCID BIGINT(8) NOT NULL COMMENT 'Account ID',
	-- Privacy Rule ID
	PRVID INT NOT NULL COMMENT 'Privacy Rule ID',
	-- On / Off
	ACTIV BOOLEAN COMMENT 'On / Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'Account Privacy Rule Mapping';


-- AUth Object Role Master Mapping
CREATE TABLE AURMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- Role ID
	ROLID INT NOT NULL COMMENT 'Role ID',
	-- Auth ID
	AUTID INT NOT NULL COMMENT 'Auth ID',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	PRIMARY KEY (MPNID)
) COMMENT = 'AUth Object Role Master Mapping';


-- Auth Master
CREATE TABLE AUTMT
(
	-- Auth ID
	AUTID INT NOT NULL COMMENT 'Auth ID',
	-- Description
	DESCR VARCHAR(100) COMMENT 'Description',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	PRIMARY KEY (AUTID)
) COMMENT = 'Auth Master';


-- Charactiristics Type Master
CREATE TABLE CHRMT
(
	-- Chr Type ID
	CHRID INT NOT NULL COMMENT 'Chr Type ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- Regular Experession Type
	REGXT CHAR(10) COMMENT 'Regular Experession Type',
	-- Medium Text
	MDTEXT VARCHAR(15) COMMENT 'Medium Text',
	-- Long Text
	LNTXT VARCHAR(20) COMMENT 'Long Text',
	-- Short Text
	SRTXT VARCHAR(10) COMMENT 'Short Text',
	-- Logo Image URL
	LOGOI VARCHAR(100) COMMENT 'Logo Image URL',
	-- on/off
	ACTIV BOOLEAN COMMENT 'on/off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (CHRID)
) COMMENT = 'Charactiristics Type Master';


-- Consumer Intent Mapping Table
CREATE TABLE CINMP
(
	-- Mapping ID
	MPNID BIGINT(16) NOT NULL COMMENT 'Mapping ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Intent Type ID
	ITYID INT NOT NULL COMMENT 'Intent Type ID',
	-- Intent Category ID
	ITCMT INT NOT NULL COMMENT 'Intent Category ID',
	-- Intent ID
	INTID INT NOT NULL COMMENT 'Intent ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'Consumer Intent Mapping Table';


-- Country Master
CREATE TABLE CNTMT
(
	-- Country ID
	CNTID BIGINT NOT NULL COMMENT 'Country ID',
	-- Country Name
	CNTNM VARCHAR(40) COMMENT 'Country Name',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (CNTID)
) COMMENT = 'Country Master';


-- City Master
CREATE TABLE CTYMT
(
	-- City ID
	CTYID BIGINT NOT NULL COMMENT 'City ID',
	-- City Name
	CTYNM VARCHAR(40) COMMENT 'City Name',
	-- State ID
	STTID BIGINT NOT NULL COMMENT 'State ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (CTYID)
) COMMENT = 'City Master';


-- Entity Type - Entity Category
CREATE TABLE ENCMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	PRIMARY KEY (MPNID)
) COMMENT = 'Entity Type - Entity Category';


-- Entity Rules Mapping Table
CREATE TABLE ENRMP
(
	-- Mappping ID
	MPNID BIGINT(10) NOT NULL COMMENT 'Mappping ID',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'Entity Rules Mapping Table';


-- Entity Category - Entity Master
CREATE TABLE ENTMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	PRIMARY KEY (MPNID)
) COMMENT = 'Entity Category - Entity Master';


-- Entity Master
CREATE TABLE ENTMT
(
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- Description
	-- 
	DESCR VARCHAR(40) COMMENT 'Description
',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (ENTID)
) COMMENT = 'Entity Master';


-- Entity Category Master
CREATE TABLE ETCMT
(
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Creted Date
	CRTDT DATETIME COMMENT 'Creted Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (ETCID)
) COMMENT = 'Entity Category Master';


-- Entity Type Master
CREATE TABLE ETYMT
(
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (ETYID)
) COMMENT = 'Entity Type Master';


-- Intent Entity Mapping Table
CREATE TABLE IENMP
(
	-- Mapping ID
	MPNID BIGINT(16) NOT NULL COMMENT 'Mapping ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- Intent Category ID
	ITCMT INT NOT NULL COMMENT 'Intent Category ID',
	-- Intent Type ID
	ITYID INT NOT NULL COMMENT 'Intent Type ID',
	-- Intent ID
	INTID INT NOT NULL COMMENT 'Intent ID',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'Intent Entity Mapping Table';


-- Intent type - category master
CREATE TABLE INCMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Intent Type ID
	ITYID INT NOT NULL COMMENT 'Intent Type ID',
	-- Intent Category ID
	ITCMT INT NOT NULL COMMENT 'Intent Category ID',
	PRIMARY KEY (MPNID)
) COMMENT = 'Intent type - category master';


-- Intent Category - Intent Master
CREATE TABLE INTMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	-- Intent ID
	INTID INT NOT NULL COMMENT 'Intent ID',
	-- Intent Category ID
	ITCMT INT NOT NULL COMMENT 'Intent Category ID',
	PRIMARY KEY (MPNID)
) COMMENT = 'Intent Category - Intent Master';


-- Intent Master
CREATE TABLE INTMT
(
	-- Intent ID
	INTID INT NOT NULL COMMENT 'Intent ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (INTID)
) COMMENT = 'Intent Master';


-- Intent category master
CREATE TABLE ITCMT
(
	-- Intent Category ID
	ITCMT INT NOT NULL COMMENT 'Intent Category ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- on/off
	ACTIV BOOLEAN COMMENT 'on/off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (ITCMT)
) COMMENT = 'Intent category master';


-- Intent Type Master
CREATE TABLE ITYMT
(
	-- Intent Type ID
	ITYID INT NOT NULL COMMENT 'Intent Type ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (ITYID)
) COMMENT = 'Intent Type Master';


-- Privacy Rule Master
CREATE TABLE PRLMT
(
	-- Privacy Rule ID
	PRVID INT NOT NULL COMMENT 'Privacy Rule ID',
	-- Rule Text
	RULTX VARCHAR(200) COMMENT 'Rule Text',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (PRVID)
) COMMENT = 'Privacy Rule Master';


-- Role Master
CREATE TABLE ROLMT
(
	-- Role ID
	ROLID INT NOT NULL COMMENT 'Role ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	PRIMARY KEY (ROLID)
) COMMENT = 'Role Master';


-- Rules Master Table
CREATE TABLE RULMT
(
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	-- Rule Short Text
	RSTXT VARCHAR(50) COMMENT 'Rule Short Text',
	-- Description
	DESCR VARCHAR(200) COMMENT 'Description',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (RULID)
) COMMENT = 'Rules Master Table';


-- State Master
CREATE TABLE STTMT
(
	-- State ID
	STTID BIGINT NOT NULL COMMENT 'State ID',
	-- State Name
	STTNM VARCHAR(40) COMMENT 'State Name',
	-- Country ID
	CNTID BIGINT NOT NULL COMMENT 'Country ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (STTID)
) COMMENT = 'State Master';


CREATE TABLE TZNMT
(
	-- Time Zone Master ID
	TZNID INT NOT NULL COMMENT 'Time Zone Master ID',
	-- Time Zone Code
	TZCOD CHAR(10) COMMENT 'Time Zone Code',
	-- Actual Value
	TIMZN CHAR COMMENT 'Actual Value',
	DESCR VARCHAR(100),
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (TZNID)
);


-- User Account Mapping Table
CREATE TABLE UACMP
(
	-- Mapping ID
	MPNID BIGINT(16) COMMENT 'Mapping ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Account ID
	ACCID BIGINT(8) NOT NULL COMMENT 'Account ID',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By'
) COMMENT = 'User Account Mapping Table';


-- User Account Master
CREATE TABLE UACMT
(
	-- Account ID
	ACCID BIGINT(8) NOT NULL COMMENT 'Account ID',
	-- User Name
	USRNM VARCHAR(20) COMMENT 'User Name',
	-- Password
	UERPW VARCHAR(15) COMMENT 'Password',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (ACCID)
) COMMENT = 'User Account Master';


-- User Master - Address Master Mapping
CREATE TABLE UADMP
(
	-- Mapping ID
	MPNID BIGINT(16) NOT NULL COMMENT 'Mapping ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Address ID
	ADRID BIGINT(8) NOT NULL COMMENT 'Address ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (MPNID),
	UNIQUE (MPNID, USRID, ADRID)
) COMMENT = 'User Master - Address Master Mapping';


-- User Type Characteristic Mapping
CREATE TABLE UCHMP
(
	-- Usertype Contact Mapping ID
	MPNID INT NOT NULL COMMENT 'Usertype Contact Mapping ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- Chr Type ID
	CHRID INT NOT NULL COMMENT 'Chr Type ID',
	-- On/ Off
	ACTIV BOOLEAN COMMENT 'On/ Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'User Type Characteristic Mapping';


-- User Cherectristics Master
CREATE TABLE UCHMT
(
	-- Mapping ID
	UCHID BIGINT(16) NOT NULL COMMENT 'Mapping ID',
	-- Chr Type ID
	CHRID INT NOT NULL COMMENT 'Chr Type ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Value
	VALUE VARCHAR(100) COMMENT 'Value',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (UCHID)
) COMMENT = 'User Cherectristics Master';


-- User Type- Entity Type Mapping
CREATE TABLE UETMP
(
	-- Mapping ID
	MPNID INT NOT NULL COMMENT 'Mapping ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'User Type- Entity Type Mapping';


-- Feedback and Recommandation
CREATE TABLE UFRTR
(
	-- Feedback Recommandation ID
	FRMID BIGINT(10) NOT NULL COMMENT 'Feedback Recommandation ID',
	-- Rating
	RATIN INT COMMENT 'Rating',
	-- Text
	DESCR VARCHAR(500) COMMENT 'Text',
	-- Feedback 0
	-- Recommandation 1
	RTYPE BOOLEAN COMMENT 'Feedback 0
Recommandation 1',
	-- From User
	FMUSR BIGINT(8) COMMENT 'From User',
	-- To User
	TOUSR BIGINT(8) COMMENT 'To User',
	-- On/Off
	ACTIV BOOLEAN COMMENT 'On/Off',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (FRMID)
) COMMENT = 'Feedback and Recommandation';


-- User Master Table
CREATE TABLE USRMT
(
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- User Code,
	-- Example: AIM0000001
	-- 
	-- Auto Generate
	URCOD CHAR(10) DEFAULT '' COMMENT 'User Code,
Example: AIM0000001

Auto Generate',
	-- Prefix
	-- 
	-- Dr.
	-- Er.
	-- 
	PRFIX CHAR(4) COMMENT 'Prefix

Dr.
Er.
',
	-- Salulation 
	-- 
	-- Mr.
	-- Ms.
	-- Mrs.
	TITLE CHAR(4) COMMENT 'Salulation 

Mr.
Ms.
Mrs.',
	-- First Name
	-- 
	FRNAM VARCHAR(20) DEFAULT '' COMMENT 'First Name
',
	-- Last Name
	-- 
	LTNAM VARCHAR(20) DEFAULT '' COMMENT 'Last Name
',
	-- Date Of Birth
	-- 
	URDOB DATE COMMENT 'Date Of Birth
',
	-- Gender
	-- 1-MALE
	-- 2-FEMALE
	-- 3-THIRD
	GENDR BIT(1) COMMENT 'Gender
1-MALE
2-FEMALE
3-THIRD',
	-- Display Name,
	-- 
	-- If not provided, First Name + Last Name
	DSPNM VARCHAR(50) DEFAULT '' COMMENT 'Display Name,

If not provided, First Name + Last Name',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Created Date
	CRTDT DATETIME NOT NULL COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (USRID)
) COMMENT = 'User Master Table';


-- User Type Role Mapping
CREATE TABLE UTRMP
(
	-- Mapping ID
	MPNID BIGINT(16) NOT NULL COMMENT 'Mapping ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- Role ID
	ROLID INT NOT NULL COMMENT 'Role ID',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	PRIMARY KEY (MPNID)
) COMMENT = 'User Type Role Mapping';


-- User Type Master
CREATE TABLE UTYMT
(
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- Description
	DESCR VARCHAR(40) COMMENT 'Description',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	PRIMARY KEY (UTYID)
) COMMENT = 'User Type Master';


-- Vendor Entity Map table
CREATE TABLE VEMPT
(
	-- Mapping ID
	MPNID BIGINT(16) NOT NULL COMMENT 'Mapping ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	PRIMARY KEY (MPNID)
) COMMENT = 'Vendor Entity Map table';


-- Vendor General Rule Master
-- This is the table where general r
CREATE TABLE VGRDT
(
	-- Vendor General Rule Master ID
	VGDID BIGINT(16) NOT NULL COMMENT 'Vendor General Rule Master ID',
	-- Chr Type ID
	CHRID INT NOT NULL COMMENT 'Chr Type ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	PRIMARY KEY (VGDID)
) COMMENT = 'Vendor General Rule Master
This is the table where general r';


-- Vendor Time Rule Master Table
-- This is the table where genera
CREATE TABLE VGRMT
(
	-- Vendor General Rule Master ID
	VGRID BIGINT(16) NOT NULL COMMENT 'Vendor General Rule Master ID',
	-- Chr Type ID
	CHRID INT COMMENT 'Chr Type ID',
	-- Vendor User ID
	VSUID BIGINT(16) COMMENT 'Vendor User ID',
	-- Vendor User Type ID
	VUTID BIGINT(16) COMMENT 'Vendor User Type ID',
	-- Consumer ID
	CUSID BIGINT(16) COMMENT 'Consumer ID',
	-- Custer User Type ID
	CUTID BIGINT(16) COMMENT 'Custer User Type ID',
	-- ON/OFF
	ACTIV BOOLEAN COMMENT 'ON/OFF',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	PRIMARY KEY (VGRID)
) COMMENT = 'Vendor Time Rule Master Table
This is the table where genera';


-- Vendor Rules Master Table
CREATE TABLE VRUMT
(
	VRMID BIGINT(16) NOT NULL,
	-- On/ Off
	ACTIV BOOLEAN COMMENT 'On/ Off',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	PRIMARY KEY (VRMID)
) COMMENT = 'Vendor Rules Master Table';


-- Vendor Time Rule Master Table
-- This is the table where time r
CREATE TABLE VTRDT
(
	-- Vendor Rule Master ID
	VTRID BIGINT(16) NOT NULL COMMENT 'Vendor Rule Master ID',
	-- User Type ID
	UTYID INT NOT NULL COMMENT 'User Type ID',
	-- User ID
	USRID BIGINT(8) NOT NULL COMMENT 'User ID',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- Entity Category ID
	ETCID INT NOT NULL COMMENT 'Entity Category ID',
	-- Entity Type ID
	ETYID INT NOT NULL COMMENT 'Entity Type ID',
	-- Day Start Time
	DSTIM TIME COMMENT 'Day Start Time',
	-- Day End Time
	DETIM TIME COMMENT 'Day End Time',
	-- TIme Zone
	TIMZN CHAR(6) COMMENT 'TIme Zone',
	-- Offer Start Time Slot
	OSTSL TIME COMMENT 'Offer Start Time Slot',
	-- Offer End Time Slot
	OETSL TIME COMMENT 'Offer End Time Slot',
	-- Active Flag
	-- True / False
	ACTIV BOOLEAN COMMENT 'Active Flag
True / False',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BIGINT(16) COMMENT 'Changed By',
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	PRIMARY KEY (VTRID)
) COMMENT = 'Vendor Time Rule Master Table
This is the table where time r';


CREATE TABLE VTRMT
(
	-- Vendor Rule Master ID
	VTRMI BIGINT(16) NOT NULL COMMENT 'Vendor Rule Master ID',
	-- Vendor User ID
	VSUID BIGINT(16) COMMENT 'Vendor User ID',
	-- Vendor User Type ID
	VUTID BIGINT(16) COMMENT 'Vendor User Type ID',
	-- Consumer ID
	CUSID BIGINT(16) COMMENT 'Consumer ID',
	-- Custer User Type ID
	CUTID BIGINT(16) COMMENT 'Custer User Type ID',
	-- Booking Date Time
	BDTIM DATETIME COMMENT 'Booking Date Time',
	-- Booking Time Zone
	BTIMZ CHAR(10) COMMENT 'Booking Time Zone',
	-- Booking Offer Start Time Slot
	BOSTM DATETIME COMMENT 'Booking Offer Start Time Slot',
	-- Booking Offer  End Time Slot 
	BOETM TIME COMMENT 'Booking Offer  End Time Slot ',
	-- Recurrsion Type
	RTYPE SMALLINT COMMENT 'Recurrsion Type',
	-- Status of Booking
	STATS SMALLINT COMMENT 'Status of Booking',
	-- Active Flag
	ACTIV BOOLEAN COMMENT 'Active Flag',
	-- Created Date
	CRTDT DATETIME COMMENT 'Created Date',
	-- Created By
	CRTBY BIGINT(16) COMMENT 'Created By',
	-- Changed Date
	CHNDT DATETIME COMMENT 'Changed Date',
	-- Changed By
	CHNBY BINARY(8) COMMENT 'Changed By',
	-- Entity ID
	ENTID INT NOT NULL COMMENT 'Entity ID',
	-- Rule ID
	RULID INT NOT NULL COMMENT 'Rule ID',
	PRIMARY KEY (VTRMI)
);



/* Create Foreign Keys */

ALTER TABLE UADMP
	ADD FOREIGN KEY (ADRID)
	REFERENCES ADDMT (ADRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE AURMP
	ADD FOREIGN KEY (AUTID)
	REFERENCES AUTMT (AUTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UCHMP
	ADD FOREIGN KEY (CHRID)
	REFERENCES CHRMT (CHRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UCHMT
	ADD FOREIGN KEY (CHRID)
	REFERENCES CHRMT (CHRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (CHRID)
	REFERENCES CHRMT (CHRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE STTMT
	ADD FOREIGN KEY (CNTID)
	REFERENCES CNTMT (CNTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ADDMT
	ADD FOREIGN KEY (CTYID)
	REFERENCES CTYMT (CTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENRMP
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENTMP
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VEMPT
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRMT
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VRUMT
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRDT
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRMT
	ADD FOREIGN KEY (ENTID)
	REFERENCES ENTMT (ENTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENCMP
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENRMP
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENTMP
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VEMPT
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VRUMT
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRDT
	ADD FOREIGN KEY (ETCID)
	REFERENCES ETCMT (ETCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENCMP
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENRMP
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VEMPT
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VRUMT
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRDT
	ADD FOREIGN KEY (ETYID)
	REFERENCES ETYMT (ETYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CINMP
	ADD FOREIGN KEY (INTID)
	REFERENCES INTMT (INTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (INTID)
	REFERENCES INTMT (INTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE INTMP
	ADD FOREIGN KEY (INTID)
	REFERENCES INTMT (INTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CINMP
	ADD FOREIGN KEY (ITCMT)
	REFERENCES ITCMT (ITCMT)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (ITCMT)
	REFERENCES ITCMT (ITCMT)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE INCMP
	ADD FOREIGN KEY (ITCMT)
	REFERENCES ITCMT (ITCMT)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE INTMP
	ADD FOREIGN KEY (ITCMT)
	REFERENCES ITCMT (ITCMT)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CINMP
	ADD FOREIGN KEY (ITYID)
	REFERENCES ITYMT (ITYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (ITYID)
	REFERENCES ITYMT (ITYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE INCMP
	ADD FOREIGN KEY (ITYID)
	REFERENCES ITYMT (ITYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE APRMP
	ADD FOREIGN KEY (PRVID)
	REFERENCES PRLMT (PRVID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE AURMP
	ADD FOREIGN KEY (ROLID)
	REFERENCES ROLMT (ROLID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UTRMP
	ADD FOREIGN KEY (ROLID)
	REFERENCES ROLMT (ROLID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ENRMP
	ADD FOREIGN KEY (RULID)
	REFERENCES RULMT (RULID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (RULID)
	REFERENCES RULMT (RULID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRMT
	ADD FOREIGN KEY (RULID)
	REFERENCES RULMT (RULID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VRUMT
	ADD FOREIGN KEY (RULID)
	REFERENCES RULMT (RULID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRDT
	ADD FOREIGN KEY (RULID)
	REFERENCES RULMT (RULID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRMT
	ADD FOREIGN KEY (RULID)
	REFERENCES RULMT (RULID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CTYMT
	ADD FOREIGN KEY (STTID)
	REFERENCES STTMT (STTID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE APRMP
	ADD FOREIGN KEY (ACCID)
	REFERENCES UACMT (ACCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UACMP
	ADD FOREIGN KEY (ACCID)
	REFERENCES UACMT (ACCID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CINMP
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UACMP
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UADMP
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UCHMT
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UETMP
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UFRTR
	ADD FOREIGN KEY (TOUSR)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UFRTR
	ADD FOREIGN KEY (FMUSR)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VEMPT
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VRUMT
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRDT
	ADD FOREIGN KEY (USRID)
	REFERENCES USRMT (USRID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CINMP
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE IENMP
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UCHMP
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UCHMT
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UETMP
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE UTRMP
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VEMPT
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VGRDT
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VRUMT
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE VTRDT
	ADD FOREIGN KEY (UTYID)
	REFERENCES UTYMT (UTYID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



/* Create Indexes */

CREATE UNIQUE INDEX IDX_USRCOD  USING BTREE ON USRMT (URCOD ASC);



