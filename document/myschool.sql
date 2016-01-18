-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.47-MariaDB-log - mariadb.org binary distribution
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 myschool 的数据库结构
CREATE DATABASE IF NOT EXISTS `myschool` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `myschool`;


-- 导出  表 myschool.grade 结构
CREATE TABLE IF NOT EXISTS `grade` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  myschool.grade 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` (`ID`, `Name`) VALUES
	(1, 's1'),
	(2, 's2'),
	(3, 'y2');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;


-- 导出  表 myschool.student 结构
CREATE TABLE IF NOT EXISTS `student` (
  `StuNo` varchar(50) NOT NULL,
  `StuName` varchar(20) NOT NULL,
  `StuPwd` varchar(20) NOT NULL,
  `GradeId` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StuNo`),
  KEY `FK_Grade` (`GradeId`),
  CONSTRAINT `FK_Grade` FOREIGN KEY (`GradeId`) REFERENCES `grade` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  myschool.student 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`StuNo`, `StuName`, `StuPwd`, `GradeId`, `Email`, `Phone`) VALUES
	('001', '胡旭挺', '000000', 1, 'hxt@163.com', '12695847895'),
	('002', '黄文海', '000000', 1, 'hwh@163.com', '15989578965'),
	('003', '李乐', '111111', 2, 'll@163.com', '12563568947');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
