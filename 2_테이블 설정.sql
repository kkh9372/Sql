#날짜 : 2021/08/03
#이름 : 김관후
#내용 : 테이블 설정

#실습하기 2-1
CREATE TABLE `USER2`(
		`uid` VARCHAR(10) PRIMARY KEY,
		`name` VARCHAR(10),
		`hp` CHAR(13),
		`age` INT
);

INSERT INTO `USER2` VALUES ('A101','김춘추','010-1234-1111',23);
INSERT INTO `USER2` VALUES ('A102','김유신','010-1234-2222',25);
INSERT INTO `USER2` VALUES ('A103','장보고','010-1234-3333',31);
INSERT INTO `USER2` VALUES ('A104','김춘추','010-1234-1111',23);

#실습하기 2-2
CREATE TABLE `USER3`(
		`uid` VARCHAR(10) PRIMARY KEY,
		`name` VARCHAR(10),
		`hp` CHAR(13) UNIQUE,
		`age` INT
);

INSERT INTO `USER3` VALUES ('A104','김춘추','010-1234-4444',23);
INSERT INTO `USER3` VALUES ('A102','김유신','010-1234-2222',25);
INSERT INTO `USER3` VALUES ('A103','장보고','010-1234-3333',31);

#실습하기 2-3
CREATE TABLE `USER5`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`	VARCHAR(10),
	`gender` TINYINT,
	`age`		INT,
	`addr`	VARCHAR(255)
);

INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,25,'김해시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('선덕여왕',2,27,'경주시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('김춘추',1,25,'경주시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('신사임당',2,35,'강릉시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('이순신',1,51,'서울시');

#실습하기 2-4
USER6

#실습하기 2-5
INSERT INTO `USER6` SELECT * FROM `USER5`;

INSERT INTO `USER6` (`name`,`gender`,`age`,`addr`)
SELECT `name`,`gender`,`age`,`addr` FROM `USER5`;

