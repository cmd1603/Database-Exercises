CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
('adele', 'adele@example.com', null),
('jimmy', 'jimmy@example.com', 2),
('bobbydyl', 'bobbydyl@example.com', 2),
('carrie', 'carrie@example.com', 2);

-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

SELECT * FROM users AS u
JOIN roles as r ON u.role_id = r.id;
-- 7 rows of results (null for role name is not included)

SELECT * FROM users AS u
LEFT JOIN roles as r ON u.role_id = r.id;
-- 10 rowsof results affected (includes the nulls)

SELECT * FROM users AS u
RIGHT JOIN roles as r ON u.role_id = r.id;
-- INCLUDES THE ROLE OF COMMENTER BUT NOT ADELE WHO HAD NO JOB

-- Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query

SELECT r.id, r.name, count(u.id) FROM users AS u
RIGHT JOIN roles as r ON u.role_id = r.id
GROUP BY r.id;
--need to group by the u.id here, because the r.id would just give count all of the role ids listed, not the number of people.
-- thats why it gave me a result of 1 for commenter even though no one is assigned that role.