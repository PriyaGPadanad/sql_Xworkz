CREATE DATABASE travel_airline_data;
USE travel_airline_data;

CREATE TABLE airlines_info (
    airline_id INT,
    airline_name VARCHAR(100),
    country VARCHAR(50),
    fleet_size INT,
    established_year INT
);

CREATE TABLE country_info (
    country_id INT,
    country_name VARCHAR(50),
    population BIGINT,
    area_km2 FLOAT,
    currency VARCHAR(30)
);

CREATE TABLE state_info (
    state_id INT,
    state_name VARCHAR(50),
    country_name VARCHAR(50),
    population BIGINT,
    capital_city VARCHAR(50)
);

ALTER TABLE airlines_info
ADD headquarters VARCHAR(100),
ADD ceo_name VARCHAR(100),
ADD rating FLOAT;

ALTER TABLE country_info
ADD gdp_trillion FLOAT,
ADD official_language VARCHAR(50),
ADD internet_users BIGINT;

ALTER TABLE state_info
ADD chief_minister VARCHAR(100),
ADD literacy_rate FLOAT,
ADD timezone VARCHAR(50);

ALTER TABLE airlines_info
RENAME COLUMN fleet_size TO total_aircrafts,
RENAME COLUMN rating TO airline_rating,
RENAME COLUMN ceo_name TO ceo_fullname;

ALTER TABLE country_info
RENAME COLUMN area_km2 TO total_area,
RENAME COLUMN internet_users TO total_internet_users,
RENAME COLUMN gdp_trillion TO gdp_value;

ALTER TABLE state_info
RENAME COLUMN capital_city TO capital,
RENAME COLUMN literacy_rate TO literacy_percentage,
RENAME COLUMN timezone TO time_zone;

ALTER TABLE airlines_info
MODIFY COLUMN airline_rating DOUBLE,
MODIFY COLUMN headquarters TEXT,
MODIFY COLUMN ceo_fullname TEXT;

ALTER TABLE country_info
MODIFY COLUMN gdp_value DOUBLE,
MODIFY COLUMN official_language TEXT,
MODIFY COLUMN total_internet_users BIGINT;

ALTER TABLE state_info
MODIFY COLUMN chief_minister TEXT,
MODIFY COLUMN time_zone TEXT,
MODIFY COLUMN literacy_percentage DOUBLE;

INSERT INTO airlines_info VALUES
(1, 'IndiGo', 'India', 320, 2006, 'Gurgaon', 'Pieter Elbers', 4.5),
(2, 'Emirates', 'UAE', 270, 1985, 'Dubai', 'Tim Clark', 4.8),
(3, 'Qatar Airways', 'Qatar', 240, 1993, 'Doha', 'Akbar Al Baker', 4.9),
(4, 'Delta Air Lines', 'USA', 750, 1929, 'Atlanta', 'Ed Bastian', 4.6),
(5, 'Lufthansa', 'Germany', 300, 1953, 'Cologne', 'Carsten Spohr', 4.4),
(6, 'British Airways', 'UK', 250, 1974, 'London', 'Sean Doyle', 4.2),
(7, 'Air France', 'France', 210, 1933, 'Paris', 'Anne Rigail', 4.1),
(8, 'Turkish Airlines', 'Turkey', 370, 1933, 'Istanbul', 'Ahmet Bolat', 4.3),
(9, 'Singapore Airlines', 'Singapore', 150, 1947, 'Singapore', 'Goh Choon Phong', 4.9),
(10, 'Air India', 'India', 120, 1932, 'Delhi', 'Campbell Wilson', 4.0),
(11, 'United Airlines', 'USA', 800, 1926, 'Chicago', 'Scott Kirby', 4.7),
(12, 'ANA', 'Japan', 240, 1952, 'Tokyo', 'Shinichi Inoue', 4.6),
(13, 'Thai Airways', 'Thailand', 80, 1960, 'Bangkok', 'Chai Eamsiri', 4.0),
(14, 'Malaysia Airlines', 'Malaysia', 90, 1947, 'Kuala Lumpur', 'Izham Ismail', 4.1),
(15, 'Etihad Airways', 'UAE', 120, 2003, 'Abu Dhabi', 'Antonoaldo Neves', 4.7),
(16, 'KLM', 'Netherlands', 170, 1919, 'Amsterdam', 'Marjan Rintel', 4.2),
(17, 'Swiss Air', 'Switzerland', 95, 2002, 'Zurich', 'Dieter Vranckx', 4.5),
(18, 'Aeroflot', 'Russia', 190, 1923, 'Moscow', 'Sergey Alexandrovsky', 4.0),
(19, 'Eva Air', 'Taiwan', 85, 1989, 'Taipei', 'Clay Sun', 4.3),
(20, 'Qantas', 'Australia', 130, 1920, 'Sydney', 'Vanessa Hudson', 4.8);

INSERT INTO country_info VALUES
(1, 'India', 1400000000, 3287263, 'INR', 3.73, 'Hindi', 800000000),
(2, 'USA', 331000000, 9833517, 'USD', 25.3, 'English', 310000000),
(3, 'China', 1440000000, 9596961, 'CNY', 17.7, 'Mandarin', 1000000000),
(4, 'Germany', 83000000, 357022, 'EUR', 4.2, 'German', 78000000),
(5, 'Japan', 125000000, 377975, 'JPY', 5.0, 'Japanese', 115000000),
(6, 'France', 67000000, 640679, 'EUR', 3.2, 'French', 60000000),
(7, 'Australia', 26000000, 7692024, 'AUD', 1.7, 'English', 25000000),
(8, 'Brazil', 213000000, 8515767, 'BRL', 2.0, 'Portuguese', 160000000),
(9, 'UK', 68000000, 243610, 'GBP', 3.1, 'English', 65000000),
(10, 'Russia', 144000000, 17098246, 'RUB', 1.8, 'Russian', 110000000),
(11, 'Canada', 39000000, 9984670, 'CAD', 2.3, 'English/French', 36000000),
(12, 'South Korea', 52000000, 100210, 'KRW', 1.9, 'Korean', 50000000),
(13, 'Mexico', 126000000, 1964375, 'MXN', 1.4, 'Spanish', 115000000),
(14, 'Italy', 60000000, 301340, 'EUR', 2.1, 'Italian', 55000000),
(15, 'Spain', 47000000, 505990, 'EUR', 1.5, 'Spanish', 44000000),
(16, 'Indonesia', 273000000, 1904569, 'IDR', 1.3, 'Bahasa', 200000000),
(17, 'South Africa', 60000000, 1221037, 'ZAR', 0.8, 'Zulu/English', 47000000),
(18, 'Thailand', 70000000, 513120, 'THB', 0.6, 'Thai', 58000000),
(19, 'New Zealand', 5100000, 268838, 'NZD', 0.3, 'English/Maori', 4700000),
(20, 'Switzerland', 8800000, 41285, 'CHF', 0.8, 'German/French', 8500000);


INSERT INTO state_info VALUES
(1, 'Karnataka', 'India', 68000000, 'Bengaluru', 'Siddaramaiah', 75.4, 'IST'),
(2, 'California', 'USA', 39500000, 'Sacramento', 'Gavin Newsom', 88.2, 'PST'),
(3, 'Bavaria', 'Germany', 13000000, 'Munich', 'Markus Söder', 99.1, 'CET'),
(4, 'Queensland', 'Australia', 5200000, 'Brisbane', 'Steven Miles', 96.5, 'AEST'),
(5, 'Ontario', 'Canada', 15000000, 'Toronto', 'Doug Ford', 94.6, 'EST'),
(6, 'Tamil Nadu', 'India', 77000000, 'Chennai', 'M. K. Stalin', 80.1, 'IST'),
(7, 'Texas', 'USA', 29500000, 'Austin', 'Greg Abbott', 82.3, 'CST'),
(8, 'New South Wales', 'Australia', 8200000, 'Sydney', 'Chris Minns', 97.0, 'AEST'),
(9, 'Quebec', 'Canada', 8500000, 'Quebec City', 'François Legault', 91.6, 'EST'),
(10, 'Maharashtra', 'India', 125000000, 'Mumbai', 'Eknath Shinde', 83.2, 'IST'),
(11, 'Saxony', 'Germany', 4100000, 'Dresden', 'Michael Kretschmer', 99.3, 'CET'),
(12, 'Tokyo Prefecture', 'Japan', 14000000, 'Tokyo', 'Yuriko Koike', 99.5, 'JST'),
(13, 'Rio de Janeiro', 'Brazil', 17300000, 'Rio de Janeiro', 'Cláudio Castro', 95.2, 'BRT'),
(14, 'Andalusia', 'Spain', 8400000, 'Seville', 'Juan Manuel Moreno', 97.4, 'CET'),
(15, 'Ile-de-France', 'France', 12000000, 'Paris', 'Valérie Pécresse', 98.7, 'CET'),
(16, 'West Bengal', 'India', 97000000, 'Kolkata', 'Mamata Banerjee', 77.1, 'IST'),
(17, 'Bali', 'Indonesia', 4400000, 'Denpasar', 'Wayan Koster', 92.3, 'WITA'),
(18, 'Bavaria', 'Germany', 13000000, 'Munich', 'Markus Söder', 99.1, 'CET'),
(19, 'Victoria', 'Australia', 6700000, 'Melbourne', 'Jacinta Allan', 96.8, 'AEST'),
(20, 'Kerala', 'India', 35000000, 'Thiruvananthapuram', 'Pinarayi Vijayan', 94.0, 'IST');


