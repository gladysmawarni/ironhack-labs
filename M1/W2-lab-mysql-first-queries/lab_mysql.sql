SELECT * 
FROM lab_sql.applestore2;

/* 1. which are the different genres */
SELECT DISTINCT prime_genre
FROM lab_sql.applestore2;

/* 2. which is the genre with the more apps rated */
SELECT SUM(rating_count_tot) AS total_rating, prime_genre
FROM lab_sql.applestore2
GROUP BY prime_genre
ORDER BY total_rating DESC
LIMIT 1;

SELECT prime_genre, SUM(rating_count_tot) FROM lab_sql.applestore2
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

SELECT SUM(rating_count_tot) FROM lab_sql.applestore2;

/* 3. which is the genre with more apps */
SELECT COUNT(prime_genre) AS total_apps, prime_genre
FROM lab_sql.applestore2
GROUP BY prime_genre
ORDER BY total_apps DESC;

SELECT prime_genre, COUNT(track_name) FROM lab_sql.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

/* 4. which is the one with less apps */
SELECT COUNT(prime_genre) AS total_apps, prime_genre
FROM lab_sql.applestore2
GROUP BY prime_genre
ORDER BY total_apps ASC
LIMIT 1;

/* 5. top 10 most rated apps */
SELECT rating_count_tot , track_name
FROM lab_sql.applestore2
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name
FROM lab_sql.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10; 

SELECT track_name, prime_genre, MAX(rating_count_tot) FROM lab_sql.applestore2
GROUP BY track_name, prime_genre
ORDER BY MAX(rating_count_tot) DESC LIMIT 10;

/* 6. top 10 best rated apps */
SELECT user_rating, track_name
FROM lab_sql.applestore2
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights */
/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* 9. Now compare the data from questions 5 and 6. What do you see? */

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT rating_count_tot , track_name, user_rating
FROM lab_sql.applestore2
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name, user_rating AS overall_rating, rating_count_tot AS votes FROM lab_sql.applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name, rating_count_tot AS votes, user_rating 
FROM lab_sql.applestore2
ORDER BY user_rating DESC, votes DESC
LIMIT 3;

/* 11. Does people care about the price? */ 
/* query highest price, total rating count, user rating */
/* order by highest price*/
SELECT price, rating_count_tot, track_name
FROM lab_sql.applestore2
ORDER BY price DESC, rating_count_tot DESC;

SELECT * FROM lab_sql.applestore2
Order by USER_RATING DESC, rating_count_tot DESC
LIMIT 30;
SELECT MAX(rating_count_tot) FROM lab_sql.applestore2;