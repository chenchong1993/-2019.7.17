/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50640
Source Host           : 121.28.103.199:5571
Source Database       : ObservationDatabase

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-07-17 11:27:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `GNSS`
-- ----------------------------
DROP TABLE IF EXISTS `GNSS`;
CREATE TABLE `GNSS` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `Station` blob,
  `MSM4` blob,
  `BDSbrdc` blob,
  `GPSbrdc` blob,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of GNSS
-- ----------------------------

-- ----------------------------
-- Table structure for `hand_accelerate`
-- ----------------------------
DROP TABLE IF EXISTS `hand_accelerate`;
CREATE TABLE `hand_accelerate` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hand_accelerate
-- ----------------------------

-- ----------------------------
-- Table structure for `hand_bluetooth`
-- ----------------------------
DROP TABLE IF EXISTS `hand_bluetooth`;
CREATE TABLE `hand_bluetooth` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `MAC` varchar(255) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hand_bluetooth
-- ----------------------------

-- ----------------------------
-- Table structure for `hand_gyroscope`
-- ----------------------------
DROP TABLE IF EXISTS `hand_gyroscope`;
CREATE TABLE `hand_gyroscope` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hand_gyroscope
-- ----------------------------

-- ----------------------------
-- Table structure for `hand_ini`
-- ----------------------------
DROP TABLE IF EXISTS `hand_ini`;
CREATE TABLE `hand_ini` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `X` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `Z` double DEFAULT NULL,
  `azimuth` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hand_ini
-- ----------------------------

-- ----------------------------
-- Table structure for `hand_magnetometer`
-- ----------------------------
DROP TABLE IF EXISTS `hand_magnetometer`;
CREATE TABLE `hand_magnetometer` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hand_magnetometer
-- ----------------------------

-- ----------------------------
-- Table structure for `hand_wifi`
-- ----------------------------
DROP TABLE IF EXISTS `hand_wifi`;
CREATE TABLE `hand_wifi` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `MAC` varchar(255) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL,
  `Frequence` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hand_wifi
-- ----------------------------

-- ----------------------------
-- Table structure for `Pseudolites`
-- ----------------------------
DROP TABLE IF EXISTS `Pseudolites`;
CREATE TABLE `Pseudolites` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `BDSbrdc` blob,
  `GPSbrdc` blob,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Pseudolites
-- ----------------------------

-- ----------------------------
-- Table structure for `terminalPos`
-- ----------------------------
DROP TABLE IF EXISTS `terminalPos`;
CREATE TABLE `terminalPos` (
  `IMEI` bigint(20) NOT NULL,
  `fixedStr` char(255) DEFAULT NULL,
  `UTC` datetime DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `lat_Direction` varchar(255) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `long_Direction` varchar(255) DEFAULT NULL,
  `GPSquality` varchar(255) DEFAULT NULL,
  `satNum` varchar(255) DEFAULT NULL,
  `HDOP` varchar(255) DEFAULT NULL,
  `H` varchar(255) DEFAULT NULL,
  `N` varchar(255) DEFAULT NULL,
  `IODE` varchar(255) DEFAULT NULL,
  `checkSum` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of terminalPos
-- ----------------------------

-- ----------------------------
-- Table structure for `user_device`
-- ----------------------------
DROP TABLE IF EXISTS `user_device`;
CREATE TABLE `user_device` (
  `userID` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `handDeviceID` bigint(20) DEFAULT NULL,
  `handDeviceType` varchar(255) DEFAULT NULL,
  `wearDeviceID` bigint(20) DEFAULT NULL,
  `wearDeviceType` varchar(255) DEFAULT NULL,
  `pseudolites` tinyint(4) DEFAULT NULL,
  `gnss` tinyint(4) DEFAULT NULL,
  `posLevel` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_device
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_accelerate`
-- ----------------------------
DROP TABLE IF EXISTS `wear_accelerate`;
CREATE TABLE `wear_accelerate` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_accelerate
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_bluetooth`
-- ----------------------------
DROP TABLE IF EXISTS `wear_bluetooth`;
CREATE TABLE `wear_bluetooth` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `MAC` varchar(255) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_bluetooth
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_gyroscope`
-- ----------------------------
DROP TABLE IF EXISTS `wear_gyroscope`;
CREATE TABLE `wear_gyroscope` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_gyroscope
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_ini`
-- ----------------------------
DROP TABLE IF EXISTS `wear_ini`;
CREATE TABLE `wear_ini` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `X` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `Z` double DEFAULT NULL,
  `azimuth` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_ini
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_magnetometer`
-- ----------------------------
DROP TABLE IF EXISTS `wear_magnetometer`;
CREATE TABLE `wear_magnetometer` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_magnetometer
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_position`
-- ----------------------------
DROP TABLE IF EXISTS `wear_position`;
CREATE TABLE `wear_position` (
  `IMEI` bigint(20) NOT NULL,
  `data/time` datetime DEFAULT NULL,
  `X` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `Z` double DEFAULT NULL,
  `vel_x` double DEFAULT NULL,
  `vel_y` double DEFAULT NULL,
  `vel_z` double DEFAULT NULL,
  `azimuth` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_position
-- ----------------------------

-- ----------------------------
-- Table structure for `wear_wifi`
-- ----------------------------
DROP TABLE IF EXISTS `wear_wifi`;
CREATE TABLE `wear_wifi` (
  `IMEI` bigint(20) NOT NULL,
  `date/time` datetime DEFAULT NULL,
  `MAC` varchar(255) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL,
  `Frequence` double DEFAULT NULL,
  PRIMARY KEY (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wear_wifi
-- ----------------------------
