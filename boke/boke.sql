
DROP TABLE IF EXISTS user;
CREATE TABLE user(
    id INT(12) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    password VARCHAR(255)
) DEFAULT CHARSET = utf8;
INSERT INTO user ( password,name) VALUES
('asd','asd'),
('123456','asd');


DROP TABLE IF EXISTS article;
CREATE TABLE article(
    id INT(12) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    content VARCHAR(255),
    ctime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    uid VARCHAR(255)
) DEFAULT CHARSET = utf8;
INSERT INTO article ( uid,title,content) VALUES
( 1,'博客系统开发1','<div><p>第一段</p></div>'),
( 2,'博客系统开发2','<div><p>第一段</p></div>'),
( 3,'博客系统开发3','<div><p>第一段</p></div>'),
( 4,'博客系统开发4','<div><p>第一段</p></div>'),
( 5,'博客系统开发5','<div><p>第一段</p></div>');




DROP TABLE IF EXISTS article_info;
CREATE TABLE article_info(
    id INT(12) PRIMARY KEY AUTO_INCREMENT,
    good INT(12),
    bad INT(12),
    ctime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    article_id INT(12)
) DEFAULT CHARSET = utf8;
INSERT INTO article_info ( good,bad,article_id) VALUES
(0,0,1),
(0,0,2),
(0,0,3),
(0,0,4),
(0,0,5);

-- 百度云视图
-- SELECT a.* ,b.good,b.bad
-- FROM article  AS a, article_info AS b
-- WHERE  a.id = b.article_id
-- AND a.id = 5;


DROP VIEW IF EXISTS article_view;
CREATE VIEW article_view AS
SELECT a.* ,b.good,b.bad
FROM article  AS a, article_info AS b
WHERE  a.id = b.article_id;
AND a.id = 5;

--  视图
DROP VIEW IF EXISTS a_info;
CREATE VIEW a_info AS
SELECT A.* , B.good, B.bad
FROM article AS A, article_info AS B
WHERE A.id = B.article_id;
-- AND A.id = 5;
