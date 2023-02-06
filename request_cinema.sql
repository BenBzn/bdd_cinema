-- Active: 1666714138848@@127.0.0.1@3306@cinema
CREATE DATABASE cinema CHARACTER SET utf8 COLLATE utf8_general_ci;

USE cinema;

-- CREATING ALL TABLE
CREATE TABLE Users (
    id_user INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(255) NOT NULL,
    customertype INT(11)
) ENGINE = INNODB;

ALTER TABLE Users ADD FOREIGN KEY (customertype) REFERENCES CustomersType(id_customer_type);
DESC Users;
CREATE TABLE Admin (
    id_admin INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    is_admin INT(11) NOT NULL,
    FOREIGN KEY (is_admin) REFERENCES Users(id_user)
) ENGINE = INNODB;

CREATE TABLE CustomersType (
    id_customer_type INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_type VARCHAR(30) NOT NULL,
    ticket_price DECIMAL(4,2) NOT NULL
) ENGINE = INNODB;

CREATE TABLE Reservations (
    id_reservations INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_reservation DATETIME NOT NULL,
    id_user INT(11),
    id_projection INT(11),
    FOREIGN KEY (id_user) REFERENCES Users(id_user),
    FOREIGN KEY (id_projection) REFERENCES Projections(id_projection)
) ENGINE = INNODB;

CREATE TABLE Cinema (
    id_cinema INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    id_admin INT(11),
    FOREIGN KEY (id_admin) REFERENCES Admin(id_admin)
) ENGINE = INNODB;

CREATE TABLE Rooms (
    id_rooms INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nb_place INT(250) NOT NULL,
    id_cinema INT(11),
    FOREIGN KEY (id_cinema) REFERENCES Cinema(id_cinema)
) ENGINE = INNODB;

CREATE TABLE Projections (
    id_projection INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    projection_date DATETIME NOT NULL,
    id_rooms INT(11),
    FOREIGN KEY (id_rooms) REFERENCES Rooms(id_rooms)
) ENGINE = INNODB;

CREATE TABLE MOVIE (
    id_movie INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(30) NOT NULL,
    producer VARCHAR(100) NOT NULL,
    id_projection INT(11),
    FOREIGN KEY (id_projection) REFERENCES Projections(id_projection)
) ENGINE = INNODB;

-- END CREATE TABLE
-- ADD DATA TO customer_type
insert into customerstype (customer_type, ticket_price)
    VALUES
    ('full_price', 9.20),
    ('Student', 7.60),
    ('Child', 5.90);
-- Add Data to Users (Using Mockaroo to get faster fake data)
insert into Users (first_name, last_name, username, password) values ('Petronilla', 'Caplin', 'pcaplin0', 'fWUufvLU'); 
insert into Users (first_name, last_name, username, password) values ('Paten', 'Gianinotti', 'pgianinotti1', 'zRAPpg2');
insert into Users (first_name, last_name, username, password) values ('Amii', 'Hansemann', 'ahansemann2', 'NTLkGRP');
insert into Users (first_name, last_name, username, password, customertype) values ('Fletch', 'Chazelas', 'fchazelas3', 'Bpk6lJL', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Auguste', 'Howcroft', 'ahowcroft4', 'AQoduu384', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Ashien', 'Snoden', 'asnoden5', 'nRk4cE', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Burt', 'Wilmot', 'bwilmot6', 'DuyAWfs9gDhN', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Ginnifer', 'Holdworth', 'gholdworth7', 'tst9zQ', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Barry', 'Sacco', 'bsacco8', 'nzfOaecJq', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Allayne', 'Adlington', 'aadlington9', 'CyJDxt', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Antoinette', 'Ryles', 'arylesa', 'kadZeUZRvZ', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Aline', 'Timbs', 'atimbsb', 'HoHWbHiv', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Agustin', 'MacColgan', 'amaccolganc', 'VOEaJFd6u', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Greg', 'Fendley', 'gfendleyd', 'U4J5Nh', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Bridie', 'Swatheridge', 'bswatheridgee', '2FvLF5XU', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Faustina', 'Speddin', 'fspeddinf', 'EOFF9Fw8a8', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Nancy', 'Craker', 'ncrakerg', 'eXsv95O9HN8', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Ilaire', 'Tees', 'iteesh', 'nOdx30Ol', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Corbie', 'Wartnaby', 'cwartnabyi', 'rT5SsOEncN', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Mary', 'Derkes', 'mderkesj', '8zeB7peuLnF', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Zerk', 'Conn', 'zconnk', 'YIsYAujxo', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Stesha', 'Lanfranconi', 'slanfranconil', 'vPQ3iC', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Marven', 'Jennaway', 'mjennawaym', 'PmT9RxH', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Rosabella', 'Karet', 'rkaretn', 'gIE9oMKQ', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Matty', 'Lear', 'mlearo', 'AQXVIik', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Celestyna', 'Handslip', 'chandslipp', 'tSxJjvC', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Odo', 'Dunican', 'odunicanq', 'jMPhIo', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Sammy', 'Connichie', 'sconnichier', 'dOnk52jOqrh', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Ryley', 'Djurisic', 'rdjurisics', 'QpHJqFgJPawc', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Keary', 'Lambal', 'klambalt', 'B7DjMwEb3A', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Jarrod', 'Westraw', 'jwestrawu', 'so3RupQUSf', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Darya', 'Chasmor', 'dchasmorv', 'hBDNmh0',2);
insert into Users (first_name, last_name, username, password, customertype) values ('Marcie', 'Bascombe', 'mbascombew', 'fE5POJi4', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Albina', 'Chawkley', 'achawkleyx', 'gC1PVTkKs', 3);
insert into Users (first_name, last_name, username, password, customertype) values ('Ginevra', 'Bolderstone', 'gbolderstoney', 'FAFIwf7U', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Darwin', 'Wackley', 'dwackleyz', 'QgUWeLq', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Ruby', 'Milesap', 'rmilesap10', 'y8JDe4SL', 2);
insert into Users (first_name, last_name, username, password, customertype) values ('Mahmud', 'Ive', 'mive11', 'E7iblJq', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Byram', 'Maffioni', 'bmaffioni12', 'N07YB32VkAt4', 1);
insert into Users (first_name, last_name, username, password, customertype) values ('Inness', 'Espinazo', 'iespinazo13', '0l8riMf', 1);
insert into Users (first_name, last_name, username, password) values ('Alyss', 'Kibbey', 'akibbey0', 'MEMVl2FH');
insert into Users (first_name, last_name, username, password) values ('Alix', 'Moodycliffe', 'amoodycliffe1', '1W25xxGV9Gh');
insert into Users (first_name, last_name, username, password) values ('Dorolisa', 'Stanes', 'dstanes2', 'LRA2g76');
--Deleting duplicate users
DELETE FROM `users` WHERE `users`.`id_user` = 12;
DELETE FROM `users` WHERE `users`.`id_user` = 13;
DELETE FROM `users` WHERE `users`.`id_user` = 14;
DELETE FROM `users` WHERE `users`.`id_user` = 15;

-- ADD DATA TO ADMIN
insert into Admin (id_admin, is_admin) 
    VALUES 
        (1, 1),
        (2, 2),
        (3, 3);

-- ADD DATA TO CINEMA
insert into cinema (name, address, city, id_admin)
    VALUES
     ('Spectakl', '8, impasse Bruneau', 'Martineau-sur-Techer', 2 ),
     ('Projector', '966 boulevard Hebert', 'GilbertVille', 1 ),
     ('CTC', '25 avenue Diallo', 'Robert-sur-Bouchet', 3 );

--ADD DATA TO ROOMS
INSERT INTO rooms (nb_place, id_rooms)
    VALUES
        (210 , 1),
        (200, 2),
        (250, 3);

-- ADD DATA TO PROJECTION (using mockaroo to get faster fake data)
insert into projections (projection_date, id_rooms) values ('2023-02-27 9:15:00', 1);
insert into projections (projection_date, id_rooms) values ('2023-02-22 13:45:00', 2);
insert into projections (projection_date, id_rooms) values ('2023-02-11 16:10:00', 3);
insert into projections (projection_date, id_rooms) values ('2023-02-27 22:00:00', 3);
insert into projections (projection_date, id_rooms) values ('2023-02-23 11:30:00', 3);
insert into projections (projection_date, id_rooms) values ('2023-02-18 11:30:00', 2);
insert into projections (projection_date, id_rooms) values ('2023-02-25 10:45:00', 1);
insert into projections (projection_date, id_rooms) values ('2023-02-27 12:00:00', 1);
insert into projections (projection_date, id_rooms) values ('2023-02-06 13:20:00', 1);
insert into projections (projection_date, id_rooms) values ('2023-02-23 14:30:00', 1);
insert into projections (projection_date, id_rooms) values ('2023-02-10 15:00:00', 3);
insert into projections (projection_date, id_rooms) values ('2023-02-04 9:45:00', 3);
insert into projections (projection_date, id_rooms) values ('2023-02-17 9:45:00', 2);
insert into projections (projection_date, id_rooms) values ('2023-02-08 20:20:00', 2);
insert into projections (projection_date, id_rooms) values ('2023-02-16 18:50:00', 1);
-- ADD DATA TO MOVIE (using mockaroo again)
insert into movie (title, genre, producer, id_projection) values ('Date with Judy, A', 'Comedy|Musical|Romance', 'Alister Bangham', 16);
insert into movie (title, genre, producer, id_projection) values ('Fall of the House of Usher, The (Zánik domu Usheru)', 'Animation', 'Karissa Slinger', 15);
insert into movie (title, genre, producer, id_projection) values ('Thief', 'Crime|Drama|Thriller', 'Ambur MacCallester', 14);
insert into movie (title, genre, producer, id_projection) values ('A Girl Walks Home Alone at Night', 'Horror|Romance|Thriller', 'Colver McCole', 13);
insert into movie (title, genre, producer, id_projection) values ('Paul', 'Adventure|Comedy|Sci-Fi', 'Stacie O''Hearn', 12);
insert into movie (title, genre, producer, id_projection) values ('T-Men', 'Film-Noir', 'Ermina Drewry', 11);
insert into movie (title, genre, producer, id_projection) values ('Generale Della Rovere, Il', 'Drama', 'Tomi de Leon', 10);
insert into movie (title, genre, producer, id_projection) values ('Longest Day, The', 'Action|Drama|War', 'Sharla Beckson', 9);
insert into movie (title, genre, producer, id_projection) values ('Born to Kill', 'Crime|Drama|Film-Noir', 'Julian Skehens', 8);
insert into movie (title, genre, producer, id_projection) values ('Tarzan', 'Adventure|Animation|Children|Drama', 'Nathanial Botwood', 7);
insert into movie (title, genre, producer, id_projection) values ('Ten Shrews, The (Kymmenen riivinrautaa)', 'Comedy', 'Mozelle Jeremaes', 6);
insert into movie (title, genre, producer, id_projection) values ('Who Am I? (Wo shi shei)', 'Action|Adventure|Comedy|Sci-Fi|Thriller', 'Orly Brodway', 5);
insert into movie (title, genre, producer, id_projection) values ('Noriko''s Dinner Table (Noriko no shokutaku)', 'Drama|Horror', 'Meagan Lindhe', 4);
insert into movie (title, genre, producer, id_projection) values ('Amityville: A New Generation', 'Horror', 'Gill Gibbin', 3);
insert into movie (title, genre, producer, id_projection) values ('Time for Killing, A', 'Western', 'Gwyneth Wraith', 2);
--not enough character for genre column
ALTER TABLE movie MODIFY genre VARCHAR(100);

--ADD DATA TO RESERVATIONS
INSERT INTO reservations (date_reservation, id_user, id_projection)
    VALUES 
        ('2023-02-07 14:37:52', 6, 15),
        ('2023-02-25 9:22:14', 18, 2),
        ('2023-02-24 22:12:44', 9, 8),
        ('2023-02-10 10:32:41', 25, 12),
        ('2023-02-09 16:10:13', 34, 12),
        ('2023-02-11 14:01:58', 31, 4);

--EXPORT DATABASE WITH MYSQLDUMP IN CMD TERMINAL
mysqldump -u root -p cinema > cinema.sql
