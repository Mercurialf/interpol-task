create table organization
(
    id      int auto_increment
        primary key,
    country varchar(255) not null,
    name    varchar(255) not null
);

INSERT INTO student.organization (id, country, name)
VALUES (1, 'United States', 'International Business Machines Corporation');
INSERT INTO student.organization (id, country, name)
VALUES (2, 'United States', 'Microsoft Corporation');
INSERT INTO student.organization (id, country, name)
VALUES (3, 'United States', 'Apple Inc.');
INSERT INTO student.organization (id, country, name)
VALUES (4, 'United States', 'Amazon.com, Inc.');
INSERT INTO student.organization (id, country, name)
VALUES (5, 'United States', 'Alphabet Inc.');
INSERT INTO student.organization (id, country, name)
VALUES (6, 'United States', 'Facebook, Inc.');
INSERT INTO student.organization (id, country, name)
VALUES (7, 'South Korea', 'Samsung Electronics Co., Ltd.');
INSERT INTO student.organization (id, country, name)
VALUES (8, 'Japan', 'Toyota Motor Corporation');
INSERT INTO student.organization (id, country, name)
VALUES (9, 'Germany', 'Volkswagen AG');
INSERT INTO student.organization (id, country, name)
VALUES (10, 'United States', 'Procter & Gamble Co.');
INSERT INTO student.organization (id, country, name)
VALUES (11, 'United States', 'Johnson & Johnson');
INSERT INTO student.organization (id, country, name)
VALUES (12, 'Switzerland', 'Nestlé S.A.');
INSERT INTO student.organization (id, country, name)
VALUES (13, 'United States', 'The Coca-Cola Company');
INSERT INTO student.organization (id, country, name)
VALUES (14, 'United States', 'PepsiCo, Inc.');
INSERT INTO student.organization (id, country, name)
VALUES (15, 'United States', 'Nike, Inc.');
INSERT INTO student.organization (id, country, name)
VALUES (16, 'France', 'LOréal S.A.');
INSERT INTO student.organization (id, country, name)
VALUES (17, 'Netherlands', 'Unilever N.V.');
INSERT INTO student.organization (id, country, name)
VALUES (18, 'Germany', 'BMW AG');
INSERT INTO student.organization (id, country, name)
VALUES (19, 'Germany', 'Mercedes-Benz AG');
INSERT INTO student.organization (id, country, name)
VALUES (20, 'United States', 'Boeing Company');
INSERT INTO student.organization (id, country, name)
VALUES (21, 'France', 'Airbus SE');
INSERT INTO student.organization (id, country, name)
VALUES (22, 'Japan', 'Sony Corporation');
INSERT INTO student.organization (id, country, name)
VALUES (23, 'United States', 'The Walt Disney Company');
INSERT INTO student.organization (id, country, name)
VALUES (24, 'United States', 'McDonalds Corporation');
INSERT INTO student.organization (id, country, name)
VALUES (25, 'United States', 'Starbucks Corporation');
INSERT INTO student.organization (id, country, name)
VALUES (26, 'United States', 'The Coca-Cola Company');
INSERT INTO student.organization (id, country, name)
VALUES (27, 'United States', 'General Electric Company');
INSERT INTO student.organization (id, country, name)
VALUES (28, 'United States', 'IBM');
INSERT INTO student.organization (id, country, name)
VALUES (29, 'Germany', 'Siemens AG');
INSERT INTO student.organization (id, country, name)
VALUES (30, 'United States', 'General Motors Company');
INSERT INTO student.organization (id, country, name)
VALUES (31, 'Japan', 'Honda Motor Co., Ltd.');


create table criminal
(
    id                  int auto_increment
        primary key,
    birthplace          varchar(255) null,
    citizenship         varchar(255) null,
    criminal_profession varchar(255) not null,
    date_of_birth       date         null,
    eye_color           varchar(20)  null,
    hair_color          varchar(20)  null,
    height              double       null,
    languages           varchar(255) null,
    last_thing          varchar(255) null,
    location            varchar(255) null,
    name                varchar(50)  not null,
    nickname            varchar(50)  not null,
    special_signs       varchar(200) null,
    surname             varchar(50)  not null,
    organization_id     int          null,
    constraint FKadb3q3yp4gbm1guv5kcueqw4t
        foreign key (organization_id) references organization (id)
);

INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (1, 'City ABC', 'USA', 'Thief', '1990-05-15', 'Brown', 'Black', 180.5, 'English', 'Gold watch', 'City XYZ',
        'John', 'Big John', 'Tattoo on right arm', 'Smith', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (4, 'City JKL', 'UK', 'Smuggler', '1988-02-12', 'Hazel', 'Black', 175.8, 'English', 'Stolen paintings',
        'City XYZ', 'Oliver', 'Ollie', 'Glasses', 'Brown', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (6, 'City ABC', 'USA', 'Gang leader', '1987-12-03', 'Blue', 'Brown', 182, 'English', 'Gold chain', 'City XYZ',
        'Daniel', 'Danny', 'Full sleeve tattoos', 'Miller', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (7, 'City GHI', 'Canada', 'Con artist', '1993-09-18', 'Green', 'Blonde', 170.5, 'English, French',
        'Fake passports', 'City XYZ', 'Ava', 'Avi', 'Nose piercing', 'Wilson', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (10, 'City ABC', 'Canada', 'Drug smuggler', '1989-06-14', 'Green', 'Blonde', 168.9, 'English, French',
        'Hidden compartments in car', 'City XYZ', 'Ella', 'Ellie', 'Scar on left hand', 'Thomas', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (11, 'City GHI', 'USA', 'Thief', '1986-01-27', 'Brown', 'Brown', 185, 'English', 'Diamond necklace', 'City XYZ',
        'William', 'Will', 'Large birthmark on neck', 'Robinson', 2);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (12, 'City JKL', 'UK', 'Forgery expert', '1997-08-10', 'Brown', 'Black', 162.3, 'English', 'Counterfeit money',
        'City XYZ', 'Victoria', 'Vicky', 'Tattoo on right wrist', 'Lee', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (13, 'City DEF', 'USA', 'Kidnapper', '1996-04-03', 'Blue', 'Brown', 175.7, 'English, Spanish',
        'Ransom demand letter', 'City XYZ', 'James', 'Jamie', 'Scar on forehead', 'Walker', 2);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (15, 'City GHI', 'USA', 'Hacker', '1984-07-02', 'Hazel', 'Blonde', 180.1, 'English', 'Encrypted USB drive',
        'City XYZ', 'Matthew', 'Matt', 'Tattoo on left arm', 'Young', 2);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (17, 'City DEF', 'Canada', 'Burglar', '1988-09-08', 'Brown', 'Brown', 176.4, 'English, French',
        'Lock picking tools', 'City XYZ', 'Alexander', 'Alex', 'Small scar on chin', 'Lewis', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (18, 'City ABC', 'USA', 'Identity thief', '1992-05-12', 'Blue', 'Blonde', 166.5, 'English',
        'Stolen credit cards', 'City XYZ', 'Olivia', 'Liv', 'Tattoo on right ankle', 'Lewis', 2);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (19, 'City GHI', 'USA', 'Assassin', '1987-11-03', 'Green', 'Brown', 183.7, 'English', 'Silenced pistol',
        'City XYZ', 'Daniel', 'Danny', 'Tattoo on back', 'Lewis', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (20, 'City JKL', 'Canada', 'Drug dealer', '1993-06-26', 'Brown', 'Brown', 160.9, 'English, French',
        'Hidden drugs', 'City XYZ', 'Sophia', 'Sophie', 'Scar on left forearm', 'Lewis', 2);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (21, 'City DEF', 'USA', 'Thief', '1985-12-18', 'Hazel', 'Black', 179, 'English, Spanish', 'Gold watch',
        'City XYZ', 'Oliver', 'Ollie', 'Glasses', 'Lewis', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (22, 'City ABC', 'USA', 'Hacker', '1991-07-05', 'Green', 'Brown', 175.2, 'English', 'Laptop', 'City XYZ',
        'Lucas', 'Luke', 'Tattoo on right shoulder', 'Harris', 4);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (23, 'City DEF', 'USA', 'Drug dealer', '1995-02-19', 'Blue', 'Blonde', 165.5, 'English', 'Small bag of drugs',
        'City XYZ', 'Abigail', 'Abby', 'Scar on right leg', 'Clark', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (24, 'City GHI', 'UK', 'Assassin', '1987-12-08', 'Brown', 'Brown', 183, 'English', 'Silenced pistol', 'City XYZ',
        'Joshua', 'Josh', 'Beard', 'Lewis', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (27, 'City GHI', 'USA', 'Identity thief', '1986-05-20', 'Blue', 'Brown', 180.3, 'English', 'Stolen identities',
        'City XYZ', 'Samuel', 'Sam', 'Scar on right arm', 'Lewis', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (29, 'City ABC', 'UK', 'Drug dealer', '1989-08-18', 'Brown', 'Brown', 175.6, 'English', 'Small bag of drugs',
        'City XYZ', 'Joseph', 'Joe', 'Tattoo on left shoulder', 'Turner', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (30, 'City GHI', 'USA', 'Assassin', '1992-02-01', 'Blue', 'Blonde', 166.8, 'English', 'Silenced pistol',
        'City XYZ', 'Amelia', 'Amy', 'Scar on left leg', 'Lewis', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (34, 'City GHI', 'USA', 'Thief', '1994-04-25', 'Blue', 'Brown', 167.4, 'English', 'Diamond ring', 'City XYZ',
        'Elizabeth', 'Liz', 'Scar on right hand', 'Lewis', 4);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (35, 'City JKL', 'USA', 'Hacker', '1987-03-09', 'Brown', 'Brown', 185.1, 'English', 'Encrypted USB drive',
        'City XYZ', 'Christopher', 'Chris', 'Beard', 'Cooper', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (36, 'City DEF', 'UK', 'Drug dealer', '1998-07-23', 'Brown', 'Black', 162.5, 'English', 'Bag of drugs',
        'City XYZ', 'Victoria', 'Vicky', 'Nose piercing', 'Lewis', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (37, 'City ABC', 'USA', 'Assassin', '1993-03-07', 'Green', 'Brown', 175.9, 'English', 'Silenced pistol',
        'City XYZ', 'Thomas', 'Tom', 'Tattoo on left wrist', 'Lewis', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (39, 'City JKL', 'USA', 'Burglar', '1985-06-03', 'Brown', 'Brown', 180.4, 'English', 'Lock picking set',
        'City XYZ', 'Ethan', 'Eli', 'Glasses', 'Lewis', 4);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (40, 'City DEF', 'USA', 'Assassin', '1985-09-10', 'Green', 'Brown', 175.2, 'English', 'Silver necklace',
        'City PQR', 'Robert', 'Robbie', 'Scar on left cheek', 'Johnson', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (41, 'City GHI', 'UK', 'Hacker', '1992-03-21', 'Blue', 'Blonde', 163.4, 'English', 'Laptop', 'City XYZ', 'Emily',
        'Em', 'None', 'Williams', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (42, 'City JKL', 'Canada', 'Drug dealer', '1988-11-02', 'Hazel', 'Brown', 190.1, 'English, French',
        'Bag of cocaine', 'City MNO', 'Michael', 'Mike', 'Dragon tattoo on back', 'Miller', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (43, 'City DEF', 'Australia', 'Robber', '1995-07-14', 'Brown', 'Red', 168.8, 'English', 'Black gloves',
        'City ABC', 'Sarah', 'Sazzy', 'Nose piercing', 'Jones', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (44, 'City PQR', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 180.6, 'English, Spanish', 'Stolen diamonds',
        'City XYZ', 'David', 'Davy', 'None', 'Brown', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (45, 'City GHI', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 170.9, 'English', 'Silenced pistol',
        'City JKL', 'Olivia', 'Liv', 'Scar on right arm', 'Davis', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (47, 'City XYZ', 'Brazil', 'Robber', '1986-04-19', 'Blue', 'Blonde', 165.5, 'Portuguese', 'Diamond earrings',
        'City ABC', 'Sophia', 'Sophie', 'Tattoo on left wrist', 'Rodriguez', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (48, 'City JKL', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 183.3, 'English', 'Encrypted USB drive',
        'City GHI', 'William', 'Will', 'None', 'Martinez', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (49, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 172.7, 'English, Spanish', 'Lock picking tools',
        'City PQR', 'Emma', 'Emmy', 'None', 'Hernandez', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (51, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 158.9, 'Spanish', 'Heroin packets',
        'City XYZ', 'Ava', 'Avy', 'Tattoo on neck', 'Gonzalez', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (53, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 185.7, 'English, French',
        'Encrypted laptop', 'City DEF', 'Mia', 'Mimi', 'None', 'Anderson', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (54, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 170.4, 'English', 'Crowbar', 'City GHI',
        'Benjamin', 'Ben', 'None', 'Thomas', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (55, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 179.2, 'English, Spanish',
        'Counterfeit money', 'City PQR', 'Isabella', 'Bella', 'Tattoo on left forearm', 'Taylor', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (56, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 168.3, 'English', 'Silenced pistol',
        'City ABC', 'Ethan', 'E', 'None', 'Moore', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (57, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 177.6, 'English', 'Marijuana bundles',
        'City XYZ', 'Charlotte', 'Char', 'Scar on left leg', 'Jackson', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (58, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 162.8, 'German', 'Diamond necklace',
        'City DEF', 'David', 'Dave', 'Tattoo on right wrist', 'Martin', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (59, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 190.6, 'English', 'Malware-infected USB drive',
        'City GHI', 'Olivia', 'Liv', 'None', 'Lee', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (60, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 170.2, 'English, Spanish', 'Master key set',
        'City PQR', 'Alexander', 'Alex', 'None', 'Perez', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (61, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 185.4, 'Portuguese', 'Poison dart gun',
        'City MNO', 'Sophia', 'Sophie', 'Scar on left cheek', 'Thompson', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (62, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 161.3, 'Spanish', 'Cocaine vials',
        'City XYZ', 'Noah', 'N', 'Tattoo on right arm', 'White', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (65, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 172.9, 'English', 'Lock pick set', 'City GHI',
        'James', 'Jay', 'Scar on right arm', 'Lewis', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (66, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 189.8, 'English, Spanish',
        'Stolen paintings', 'City PQR', 'Emma', 'Emmy', 'None', 'Young', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (67, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 160.2, 'English', 'Sniper rifle', 'City ABC',
        'Jacob', 'Jake', 'None', 'Hall', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (68, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 174.3, 'English',
        'Methamphetamine crystals', 'City XYZ', 'Olivia', 'Liv', 'Tattoo on left wrist', 'Walker', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (69, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 168.1, 'German', 'Gold bars', 'City DEF',
        'Michael', 'Mike', 'Scar on left leg', 'Allen', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (71, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 165.7, 'English, Spanish',
        'Safe cracking tools', 'City PQR', 'Alexander', 'Alex', 'None', 'King', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (72, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 178.9, 'Portuguese', 'Throwing knives',
        'City MNO', 'Sophia', 'Sophie', 'Scar on right cheek', 'Scott', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (73, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 162.4, 'Spanish', 'Heroin needles',
        'City XYZ', 'Mia', 'Mimi', 'Tattoo on neck', 'Baker', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (74, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 186.2, 'English', 'Glock pistol', 'City JKL',
        'Liam', 'Lee', 'None', 'Adams', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (75, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 171.6, 'English, French',
        'Digital hacking toolkit', 'City DEF', 'Elijah', 'Eli', 'None', 'Nelson', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (76, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 173.5, 'English', 'Safe-cracking device',
        'City GHI', 'Isabella', 'Bella', 'None', 'Hill', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (78, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 168.7, 'English', 'Silenced pistol',
        'City ABC', 'Olivia', 'Liv', 'None', 'Campbell', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (79, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 177.4, 'English', 'LSD tabs', 'City XYZ',
        'Gabriel', 'Gabe', 'Tattoo on right forearm', 'Mitchell', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (80, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 159.6, 'German', 'Stolen artwork',
        'City DEF', 'Avery', 'Ave', 'Scar on right leg', 'Roberts', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (81, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 182.4, 'English', 'Cybersecurity software',
        'City GHI', 'Olivia', 'Liv', 'None', 'Carter', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (82, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 167.3, 'English, Spanish', 'Locksmith tools',
        'City PQR', 'Sebastian', 'Bastian', 'None', 'Phillips', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (83, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 180.1, 'Portuguese',
        'Silent poison capsules', 'City MNO', 'Sophia', 'Sophie', 'Scar on left arm', 'Evans', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (84, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 160.8, 'Spanish', 'Cocaine bricks',
        'City XYZ', 'Noah', 'N', 'Tattoo on left arm', 'Turner', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (85, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 185.9, 'English', 'Diamond mask', 'City JKL',
        'Ava', 'A', 'None', 'Parker', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (86, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 170.5, 'English, French',
        'Encryption software', 'City DEF', 'Daniel', 'Dan', 'None', 'Collins', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (87, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 175.6, 'English', 'Grappling hook', 'City GHI',
        'Isabella', 'Bella', 'None', 'Stewart', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (88, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 193.2, 'English, Spanish',
        'Illegal firearms', 'City PQR', 'Ethan', 'E', 'Scar on right cheek', 'Sanchez', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (89, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 166.9, 'English', 'Silenced sniper rifle',
        'City ABC', 'Charlotte', 'Char', 'None', 'Morris', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (90, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 178.3, 'English', 'Heroin packets',
        'City XYZ', 'Emily', 'Em', 'Tattoo on back', 'Rogers', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (91, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 161.5, 'German', 'Jewelry', 'City DEF',
        'Lucas', 'Luke', 'Tattoo on right wrist', 'Reed', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (92, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 187.5, 'English', 'Stealth USB drive',
        'City GHI', 'Olivia', 'Liv', 'None', 'Cook', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (94, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 181.7, 'Portuguese', 'Silent blade',
        'City MNO', 'Sophia', 'Sophie', 'Scar on left cheek', 'Bell', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (96, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 188.6, 'English', 'Explosives', 'City JKL',
        'Mia', 'Mimi', 'None', 'Bailey', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (98, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 174.7, 'English', 'Diamond-encrusted key',
        'City GHI', 'Isabella', 'Bella', 'None', 'Richardson', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (99, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 192.4, 'English, Spanish',
        'Black market goods', 'City PQR', 'Emma', 'Emmy', 'Scar on left arm', 'Cox', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (100, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 164.5, 'English', 'Poison-tipped umbrella',
        'City ABC', 'Jacob', 'Jake', 'None', 'Ward', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (101, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 177.9, 'English', 'Cocaine packets',
        'City XYZ', 'Olivia', 'Liv', 'Tattoo on left shoulder', 'Peterson', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (102, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 160.3, 'German', 'Cash bundles',
        'City DEF', 'Lucas', 'Luke', 'Tattoo on left wrist', 'Gray', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (103, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 184.2, 'English', 'Encryption device',
        'City GHI', 'Olivia', 'Liv', 'None', 'James', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (104, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 165.6, 'English, Spanish',
        'Safe-cracking tools', 'City PQR', 'Gabriel', 'Gabe', 'None', 'Bennett', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (105, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 179.3, 'Portuguese',
        'Silent sniper rifle', 'City MNO', 'Sophia', 'Sophie', 'Scar on right cheek', 'Jenkins', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (106, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 162.7, 'Spanish', 'Heroin packets',
        'City XYZ', 'Noah', 'N', 'Tattoo on right arm', 'Sullivan', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (107, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 190.3, 'English', 'Explosives', 'City JKL',
        'Ava', 'A', 'None', 'Wells', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (108, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 169.2, 'English, French',
        'Stealth software', 'City DEF', 'Liam', 'Lee', 'None', 'Bryant', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (109, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 176.8, 'English', 'Night vision goggles',
        'City GHI', 'Isabella', 'Bella', 'None', 'Russell', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (110, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 195.1, 'English, Spanish', 'Illegal drugs',
        'City PQR', 'Emily', 'Em', 'Scar on left leg', 'Griffin', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (111, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 165.9, 'English', 'Silenced pistol',
        'City ABC', 'Jacob', 'Jake', 'None', 'Diaz', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (112, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 180.6, 'English', 'Marijuana bricks',
        'City XYZ', 'Olivia', 'Liv', 'Tattoo on back', 'Hayes', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (113, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 161.8, 'German', 'Jewelry', 'City DEF',
        'Lucas', 'Luke', 'Tattoo on left forearm', 'Myers', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (114, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 186.5, 'English', 'Cybersecurity tool',
        'City GHI', 'Olivia', 'Liv', 'None', 'Long', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (115, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 167.4, 'English, Spanish', 'Digital lock pick',
        'City PQR', 'Gabriel', 'Gabe', 'None', 'Foster', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (116, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 182.9, 'Portuguese', 'Silent dagger',
        'City MNO', 'Sophia', 'Sophie', 'Scar on right cheek', 'Sanders', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (117, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 164.1, 'Spanish', 'Cocaine packets',
        'City XYZ', 'Noah', 'N', 'Tattoo on neck', 'Ross', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (118, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 188.1, 'English', 'Grenades', 'City JKL',
        'Ava', 'A', 'None', 'Morales', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (119, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 170.8, 'English, French',
        'Data encryption device', 'City DEF', 'Liam', 'Lee', 'None', 'Powell', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (120, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 178.4, 'English', 'Diamond-encrusted keycard',
        'City GHI', 'Isabella', 'Bella', 'None', 'Sullivan', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (121, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 196.2, 'English, Spanish',
        'Contraband goods', 'City PQR', 'Emily', 'Em', 'Scar on left cheek', 'Ward', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (123, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 179.7, 'English', 'Ecstasy pills',
        'City XYZ', 'Olivia', 'Liv', 'Tattoo on right arm', 'Simmons', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (124, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 162.2, 'German', 'Stolen cash',
        'City DEF', 'Lucas', 'Luke', 'Tattoo on right forearm', 'Washington', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (125, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 185.4, 'English', 'Cybersecurity software',
        'City GHI', 'Olivia', 'Liv', 'None', 'Butler', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (126, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 168.3, 'English, Spanish', 'Lockpick set',
        'City PQR', 'Gabriel', 'Gabe', 'None', 'Gonzalez', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (127, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 183.8, 'Portuguese',
        'Silent sniper rifle', 'City MNO', 'Sophia', 'Sophie', 'Scar on left arm', 'Martinez', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (128, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 165.4, 'Spanish',
        'Methamphetamine packets', 'City XYZ', 'Noah', 'N', 'Tattoo on left arm', 'Woods', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (130, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 171.9, 'English, French',
        'Encryption software', 'City DEF', 'Liam', 'Lee', 'None', 'Henderson', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (131, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 177.5, 'English', 'Lock-pick set', 'City GHI',
        'Isabella', 'Bella', 'None', 'Harrison', 7);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (132, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 197.5, 'English, Spanish',
        'Illegal substances', 'City PQR', 'Emily', 'Em', 'Scar on right cheek', 'Mendoza', 25);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (133, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 167.1, 'English', 'Silenced pistol',
        'City ABC', 'Jacob', 'Jake', 'None', 'Lopez', 9);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (134, 'City MNO', 'USA', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 181.2, 'English', 'Cocaine packages',
        'City XYZ', 'Olivia', 'Liv', 'Tattoo on back', 'Berry', 15);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (135, 'City ABC', 'Germany', 'Robber', '1986-04-19', 'Blue', 'Blonde', 163.7, 'German', 'Precious gems',
        'City DEF', 'Lucas', 'Luke', 'Tattoo on left bicep', 'Santos', 3);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (136, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 187.3, 'English', 'Advanced hacking tool',
        'City GHI', 'Olivia', 'Liv', 'None', 'Reyes', 21);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (137, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 169.5, 'English, Spanish',
        'Digital safe-cracking device', 'City PQR', 'Gabriel', 'Gabe', 'None', 'Russell', 6);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (138, 'City ABC', 'Brazil', 'Assassin', '1990-05-15', 'Green', 'Brown', 185.9, 'Portuguese', 'Silent blade',
        'City MNO', 'Sophia', 'Sophie', 'Scar on right cheek', 'Ortiz', 1);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (139, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 166.3, 'Spanish', 'Heroin packages',
        'City XYZ', 'Noah', 'N', 'Tattoo on neck', 'Gomez', 12);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (140, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 191.4, 'English', 'Lock-expanding foam',
        'City JKL', 'Ava', 'A', 'None', 'Kelly', 5);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (141, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 173.6, 'English, French',
        'Intrusion detection system', 'City DEF', 'Liam', 'Lee', 'None', 'Morgan', 18);
INSERT INTO student.criminal (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                              height, languages, last_thing, location, name, nickname, special_signs, surname,
                              organization_id)
VALUES (142, 'City XYZ', 'USA', 'Thief', '1995-07-14', 'Brown', 'Red', 176.1, 'English', 'Night vision goggles',
        'City GHI', 'Isabella', 'Bella', 'None', 'Mitchell', 7);

create table archive
(
    id                  int auto_increment
        primary key,
    birthplace          varchar(255) null,
    citizenship         varchar(255) null,
    criminal_profession varchar(255) not null,
    date_of_birth       date         null,
    eye_color           varchar(20)  null,
    hair_color          varchar(20)  null,
    height              double       null,
    languages           varchar(255) null,
    last_thing          varchar(255) null,
    location            varchar(255) null,
    name                varchar(50)  not null,
    nickname            varchar(50)  not null,
    special_signs       varchar(200) null,
    surname             varchar(50)  not null,
    organization_id     int          null,
    constraint FK8okhjfh9mve9ybvfavvu0skpo
        foreign key (organization_id) references organization (id)
);

INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (3, 'City MNO', 'Mexico', 'Drug dealer', '1991-06-07', 'Brown', 'Black', 176.2, 'Spanish', 'Cocaine bricks',
        'City DEF', 'Daniel', 'Danny', 'None', 'Garcia', 15);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (4, 'City ABC', 'USA', 'Identity thief', '1991-01-11', 'Hazel', 'Brown', 178.9, 'English', 'Stolen credit cards',
        'City XYZ', 'Benjamin', 'Ben', 'Tattoo on right arm', 'Martin', 5);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (5, 'City ABC', 'USA', 'Assassin', '1990-05-15', 'Green', 'Brown', 188.5, 'English', 'Sniper rifle', 'City MNO',
        'James', 'Jay', 'Scar on right cheek', 'Lopez', 1);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (6, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 176.1, 'English', 'Black ski mask', 'City JKL',
        'Liam', 'Lee', 'None', 'Wilson', 5);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (7, 'City JKL', 'USA', 'Burglar', '1991-03-05', 'Brown', 'Red', 178.2, 'English', 'Lock picking set', 'City XYZ',
        'Logan', 'Loki', 'Multiple tattoos', 'Anderson', 2);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (8, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 180.7, 'English', 'Ski mask', 'City JKL', 'Ava',
        'A', 'None', 'Harris', 5);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (9, 'City JKL', 'USA', 'Smuggler', '1982-12-25', 'Brown', 'Black', 191.3, 'English, Spanish',
        'Counterfeit passports', 'City PQR', 'Daniel', 'Dan', 'Scar on left arm', 'Ramirez', 25);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (10, 'City DEF', 'USA', 'Thief', '1983-10-09', 'Brown', 'Black', 166.1, 'English, Spanish', 'Lock pick set',
        'City PQR', 'Gabriel', 'Gabe', 'None', 'Morgan', 6);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (11, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 168.9, 'English, French',
        'Cybersecurity system', 'City DEF', 'Liam', 'Lee', 'None', 'Cooper', 18);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (12, 'City DEF', 'USA', 'Assassin', '1987-08-18', 'Green', 'Brown', 166.5, 'English', 'Silenced pistol',
        'City ABC', 'Jacob', 'Jake', 'None', 'Flores', 9);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (13, 'City XYZ', 'USA', 'Hacker', '1994-02-28', 'Hazel', 'Brown', 183.7, 'English', 'Hacking device', 'City GHI',
        'Olivia', 'Liv', 'None', 'Young', 21);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (14, 'City ABC', 'Canada', 'Hacker', '1988-11-02', 'Hazel', 'Brown', 167.5, 'English, French',
        'Encrypted smartphone', 'City DEF', 'William', 'Will', 'None', 'Clark', 18);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (15, 'City GHI', 'Mexico', 'Drug dealer', '1985-09-10', 'Brown', 'Black', 163.2, 'Spanish',
        'Methamphetamine crystals', 'City XYZ', 'Aiden', 'A', 'Tattoo on neck', 'Murphy', 12);
INSERT INTO student.archive (id, birthplace, citizenship, criminal_profession, date_of_birth, eye_color, hair_color,
                             height, languages, last_thing, location, name, nickname, special_signs, surname,
                             organization_id)
VALUES (16, 'City MNO', 'UK', 'Robber', '1992-03-21', 'Blue', 'Blonde', 189.7, 'English', 'Explosive charges',
        'City JKL', 'Ava', 'A', 'None', 'Coleman', 5);
