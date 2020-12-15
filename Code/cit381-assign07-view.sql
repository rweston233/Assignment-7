CREATE VIEW vw_postAge
  AS
SELECT 
pi.post_id, 
pi.title As "Post_Title",
ai.name AS "Author_Name",
timestampdiff(day, pi.post_date, current_timestamp) as "Post days old"
FROM
  post_info pi
    INNER JOIN
author_info ai ON pi.author_id = ai.author_id;