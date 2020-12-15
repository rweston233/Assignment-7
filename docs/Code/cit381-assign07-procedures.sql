-- insterts data into author_info table 
DELIMITER //
CREATE PROCEDURE sp_insertAuthor (IN name varchar(45))
BEGIN
       INSERT INTO author_info
              (name)
       VALUES
              (name);
END //
DELIMITER ;

-- insterts data into post_info table 
DELIMITER //
CREATE PROCEDURE sp_insertPost (IN title varchar(255), IN link varchar(255), IN score INT, IN comment_count INT, IN cross_post_count INT, IN post_date timestamp, In author_id INT)
BEGIN
       INSERT INTO post_info
              (title, link, score, comment_count, cross_post_count, post_date, author_id)
       VALUES
              (title, link, score, comment_count, cross_post_count, post_date, author_id);
END //
DELIMITER ;