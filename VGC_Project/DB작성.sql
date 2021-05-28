SET AUTOCOMMIT = FALSE;

CREATE TABLE if not exists user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    user_Id VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    birth_Date VARCHAR(8) NOT NULL,
    phone VARCHAR(11) NOT NULL
);
CREATE TABLE if not exists movie(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    running_Time INT NOT NULL
);

CREATE TABLE if not exists seat(
    id INT PRIMARY KEY AUTO_INCREMENT,
    seat_Type VARCHAR(5),
    seat_Row INT, 
    seat_Col INT
);

CREATE TABLE if not exists reserve(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_Id VARCHAR(30) NOT NULL,
    movie_Id INT NOT NULL,
    reserve_Date VARCHAR(40) NOT NULL,
    reserve_Time DATETIME DEFAULT CURRENT_TIMESTAMP,
    reserve_Cnt INT NOT NULL,
    seat VARCHAR(50) NOT NULL,
    FOREIGN KEY(movie_Id) REFERENCES movie(id)
);

CREATE TABLE if not exists movie_Info(
    id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    Director VARCHAR(10),
    Actor VARCHAR(300),
    Grade VARCHAR(10),
    poster VARCHAR(100),
    FOREIGN KEY(movie_Id) REFERENCES movie(id)
);

INSERT INTO seat VALUES (NULL,'A',5,5);


COMMIT;
