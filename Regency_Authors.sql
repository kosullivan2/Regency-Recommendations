-- CREATE DATABASE regency_recommendations;
-- USE regency_recommendations;
-- CREATE TABLE regency_authors
-- (author_id INTEGER,
-- author_name VARCHAR(50),
-- keyword VARCHAR(50));
INSERT INTO regency_authors
(author_id, author_name, keyword)
VALUES
-- (1, 'Georgette Heyer', 'clean'),
-- (1, 'Georgette Heyer', 'happy endings'),
-- (1, 'Georgette Heyer', 'frothy'),
-- (1, 'Georgette Heyer', 'uplifting'),
-- (1, 'Georgette Heyer', 'heart-warming')
-- (1, 'Georgette Heyer', 'witty'),
-- (2, 'M.C.Beaton', 'witty'),
-- (2, 'M.C.Beaton', 'funny'),
-- (2, 'M.C.Beaton', 'happy endings'),
-- (2, 'M.C.Beaton', 'relatively clean'),
-- (3, 'Jane Austen', 'clean'),
-- (3, 'Jane Austen', 'happy endings'),
-- (3, 'Jane Austen', 'classics'),
-- (3, 'Jane Austen', 'film/tv series'),
-- (4, 'Julia Quinn', 'adult content'),
-- (4, 'Julia Quinn', 'film/tv series'),
-- (4, 'Julia Quinn', 'happy endings'),
-- (5, 'Anna Jacobs', 'happy endings'),
-- (5, 'Anna Jacobs', 'clean'),
-- (6, 'Mary Balogh', 'adult content')
-- (6, 'Mary Balogh', 'happy endings')
-- ; 
-- (7, 'Barbara Cartland', 'clean'),
-- (7, 'Barbara Cartland', 'happy_endings'),
-- (8, 'Laurie Viera Rigler', 'clean'),
-- (8, 'Laurie Viera Rigler', 'happy_endings'),
-- (8, 'Laurie Viera Rigler', 'fantasy'),
-- (9, 'Annie Darling', 'clean'),
-- (9, 'Annie Darling', 'Jane_Austen_inspired'),
-- (9, 'Annie Darling', 'happy_endings'),
-- (10, 'Ada Bright & Cass Grafton', 'clean'),
-- (10, 'Ada Bright & Cass Grafton', 'happy_endings'),
-- (10, 'Ada Bright & Cass Grafton', 'fantasy');
-- (10, 'Ada Bright & Cass Grafton', 'uplifting');
-- (10, 'Ada Bright & Cass Grafton', 'heart-warming');
-- UPDATE regency_authors
-- SET keyword = 'film_or_tv_series'
-- WHERE keyword = 'film or tv series';

SELECT * FROM regency_authors
-- WHERE keyword = 'witty'
ORDER BY author_id;
-- SELECT * FROM regency_authors;
-- SELECT * FROM regency_authors WHERE keyword ='adult';
-- UPDATE regency_authors
-- SET keyword = 'happy endings'
-- WHERE keyword = 'happy_endings';