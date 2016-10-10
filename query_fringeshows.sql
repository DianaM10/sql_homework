-- SELECT * FROM users;

-- -- -- SELECT * FROM shows WHERE price < 15.00;

-- INSERT INTO users (name) VALUES ('Val Gibson'); 

-- SELECT id FROM shows WHERE name = 'Two girls, one cup of comedy';
-- SELECT id from users WHERE name = 'Val Gibson';
-- INSERT INTO shows_users(show_id, user_id) VALUES (12,25);

-- UPDATE users SET name = 'Valerie Gibson' WHERE name = 'Val Gibson';

-- DELETE from users where name = 'Valerie Gibson';

-- DELETE from shows_users WHERE user_id = 25;
-- SELECT * FROM shows ORDER BY name, price;
-- SELECT * FROM shows ORDER BY price ASC;


-- SELECT AVG(price) FROM shows;

-- SELECT MIN(price) FROM shows;

-- SELECT SUM(price) FROM shows;

-- SELECT * FROM shows WHERE price < 20;
-- SELECT SUM(price) FROM shows WHERE price < 20;

-- SELECT name, price FROM shows WHERE price IN (SELECT max(price) FROM shows);

 
 -- SELECT name, price FROM SHOWS WHERE price IN (SELECT MIN(price) FROM shows) > (SELECT MIN(price) FROM shows);

-- SELECT price from shows WHERE price in(SELECT DISTINCT price from  (SELECT shows.price, row_number() over () as row_number FROM shows) as x where x.row_number = 2);

-- SELECT * FROM users WHERE name LIKE 'N%';

-- SELECT * FROM users WHERE name LIKE '%er%';

-- SELECT shows.name FROM shows INNER JOIN times ON times.id = shows.id WHERE shows.name = 'Edinburgh Royal Tattoo';

-- SELECT times.time FROM times INNER JOIN shows ON shows.id = times.id WHERE shows.name = 'Edinburgh Royal Tattoo';

-- SELECT shows.name FROM shows INNER JOIN shows_users ON shows_users.id = shows.id WHERE shows.name = 'Shitfaced Shakespeare';

SELECT shows_users.show_id, shows_users.user_id FROM shows_users INNER JOIN shows ON shows.id = shows_users.show_id WHERE shows.name = 'Shitfaced Shakespeare';







