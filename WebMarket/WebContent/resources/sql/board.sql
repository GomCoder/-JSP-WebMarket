CREATE TABLE board(
	num int NOT NULL auto_increment,
	id VARCHAR(10) NOT NULL,
	name VARCHAR(10) NOT NULL,
	subject VARCHAR(100) NOT NULL,
	content text NOT NULL,
	regist_day VARCHAR(30),
	hit INT,
	ip VARCHAR(20),
	PRIMARY KEY(num)
)default CHARSET=utf8;

SELECT * FROM board;