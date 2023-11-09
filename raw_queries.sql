CREATE DATABASE peopleDB;
USE peopleDB;
CREATE TABLE person(
id BIGINT auto_increment NOT NULL UNIQUE,
name VARCHAR(20) NOT NULL,
surname VARCHAR(50) NOT NULL,
birth_date DATE NOT NULL,
gender ENUM("male", "female") NOT NULL,
salary int,
mother_id BIGINT,
father_id BIGINT,
spouse_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (mother_id) REFERENCES person(id),
FOREIGN KEY (father_id) REFERENCES person(id),
FOREIGN KEY (spouse_id) REFERENCES person(id)
);

CREATE TABLE company(
id BIGINT auto_increment NOT NULL UNIQUE,
name VARCHAR(20) NOT NULL,
boss_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (boss_id) REFERENCES person(id)
);

CREATE TABLE job(
id BIGINT auto_increment NOT NULL UNIQUE,
form ENUM("employment_contract","contract_of_service") NOT NULL,
person_id BIGINT NOT NULL,
company_id BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (person_id) REFERENCES person(id),
FOREIGN KEY (company_id) REFERENCES company(id)
);




--Years: 1900 - 1920
--MALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BARTOSZ", "WALCZAK", "1920-06-16", "MALE", "6285");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("HENRYK", "JAWORSKI", "1913-11-14", "MALE", "4008");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("JULIAN", "BARAN", "1910-09-18", "MALE", "6034");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("PAWEL", "SIKORA", "1916-03-06", "MALE", "5470");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SLAWOMIR", "WILK", "1904-07-04", "MALE", "8006");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("TADEUSZ", "JABLONSKI", "1904-08-21", "MALE", "676");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WIESLAW", "OSTROWSKI", "1917-09-16", "MALE", "7565");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BOGDAN", "CZERWINSKI", "1900-07-27", "MALE", "944");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SERHII", "JAKUBOWSKI", "1920-03-24", "MALE", "6247");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("PRZEMYSLAW", "PAWLOWSKI", "1906-07-01", "MALE", "4239");

--FEMALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ALEKSANDRA", "KWIATKOWSKA", "1910-08-30", "FEMALE", "1514");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SANDRA", "WLODARCZYK", "1904-11-05", "FEMALE", "4637");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("LIDIA", "DUDEK", "1904-11-30", "FEMALE", "722");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IZABELA", "PIOTROWSKA", "1919-07-22", "FEMALE", "1376");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KORNELIA", "PAWLOWSKA", "1909-10-11", "FEMALE", "5194");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("EMILIA", "WALCZAK", "1914-03-08", "FEMALE", "8061");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("URSZULA", "MALINOWSKA", "1909-08-13", "FEMALE", "270");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("VIKTORIIA", "CZARNECKA", "1910-09-04", "FEMALE", "672");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("HANNA", "SZCZEPANSKA", "1916-06-29", "FEMALE", "2245");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("TETIANA", "SIKORA", "1909-09-08", "FEMALE", "661");

--Years: 1920 - 1940
--MALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("FILIP", "WLODARCZYK", "1920-03-08", "MALE", "1957");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("FILIP", "MAJEWSKI", "1939-06-28", "MALE", "6887");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IRENEUSZ", "SZYMANSKI", "1938-07-03", "MALE", "5079");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BARTLOMIEJ", "SADOWSKI", "1926-09-17", "MALE", "7666");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("OLEKSANDR", "SIKORSKI", "1921-08-15", "MALE", "5025");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WLODZIMIERZ", "SIKORA", "1925-06-26", "MALE", "7547");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WOJCIECH", "PAWLAK", "1937-12-21", "MALE", "4867");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KACPER", "KAZMIERCZAK", "1926-03-22", "MALE", "3612");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("JÓZEF", "KUCHARSKI", "1940-04-03", "MALE", "3182");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ANDRZEJ", "BARANOWSKI", "1932-07-23", "MALE", "2349");

--FEMALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("JANINA", "WOJCIK", "1933-07-28", "FEMALE", "2026");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("LUCJA", "WASILEWSKA", "1925-02-26", "FEMALE", "6578");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("GRAZYNA", "BARANOWSKA", "1936-01-22", "FEMALE", "6385");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ALEKSANDRA", "ZIELINSKA", "1921-04-11", "FEMALE", "4956");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BOGUMILA", "ZALEWSKA", "1929-05-16", "FEMALE", "2835");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ALEKSANDRA", "WROBEL", "1939-02-09", "FEMALE", "2182");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MALGORZATA", "WALCZAK", "1926-06-18", "FEMALE", "7462");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KAMILA", "WYSOCKA", "1924-02-28", "FEMALE", "7165");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MAGDALENA", "GRABOWSKA", "1921-11-06", "FEMALE", "4103");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SANDRA", "GAJEWSKA", "1935-11-24", "FEMALE", "5110");

--Years: 1940 - 1960
--MALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ZYGMUNT", "WROBLEWSKI", "1940-10-22", "MALE", "335");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARCEL", "BRZEZINSKI", "1945-01-16", "MALE", "7979");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("OSKAR", "BRZEZINSKI", "1958-10-28", "MALE", "3725");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IVAN", "PAWLOWSKI", "1954-10-25", "MALE", "2602");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WLODZIMIERZ", "GORSKI", "1950-03-27", "MALE", "4553");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARIAN", "BAK", "1943-09-20", "MALE", "3007");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BARTLOMIEJ", "MAJEWSKI", "1954-08-12", "MALE", "2850");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WALDEMAR", "BRZEZINSKI", "1960-12-10", "MALE", "1711");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("CEZARY", "SAWICKI", "1957-12-27", "MALE", "6258");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ARTUR", "SIKORSKI", "1960-03-08", "MALE", "7851");

--FEMALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("LIDIA", "KRAWCZYK", "1947-01-16", "FEMALE", "5677");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("DOROTA", "MAZUREK", "1954-04-25", "FEMALE", "6798");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("YULIIA", "WIECZOREK", "1946-08-14", "FEMALE", "392");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ALINA", "KAMINSKA", "1957-07-05", "FEMALE", "3173");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ELZBIETA", "NOWAK", "1940-09-05", "FEMALE", "170");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("NATALIIA", "ZIOLKOWSKA", "1958-02-28", "FEMALE", "6174");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("JUSTYNA", "ZALEWSKA", "1944-07-14", "FEMALE", "6457");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BARBARA", "MAZUR", "1957-08-12", "FEMALE", "3872");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ELZBIETA", "MACIEJEWSKA", "1958-07-08", "FEMALE", "3473");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("HALINA", "SAWICKA", "1952-06-13", "FEMALE", "5004");

--Years: 1960 - 1980
--MALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("STEFAN", "URBANSKI", "1972-07-20", "MALE", "6945");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ZENON", "PAWLAK", "1974-03-20", "MALE", "7293");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("NIKODEM", "MROZ", "1978-02-16", "MALE", "4916");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("DMYTRO", "LIS", "1963-12-22", "MALE", "3513");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BARTOSZ", "KACZMAREK", "1980-05-04", "MALE", "3219");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("DOMINIK", "CZERWINSKI", "1960-08-12", "MALE", "3998");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ZYGMUNT", "DABROWSKI", "1977-10-30", "MALE", "4011");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KAZIMIERZ", "CIESLAK", "1975-12-28", "MALE", "7572");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MAKSYMILIAN", "MICHALSKI", "1979-02-16", "MALE", "5903");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARIAN", "BLASZCZYK", "1960-05-30", "MALE", "1683");

--FEMALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SYLWIA", "BLASZCZYK", "1965-04-27", "FEMALE", "2621");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARLENA", "ADAMCZYK", "1977-08-24", "FEMALE", "6043");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ANETA", "ZAWADZKA", "1966-04-23", "FEMALE", "6621");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ALINA", "JANKOWSKA", "1963-11-02", "FEMALE", "5540");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SVITLANA", "WLODARCZYK", "1973-05-09", "FEMALE", "5595");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ANTONINA", "DABROWSKA", "1971-08-16", "FEMALE", "2736");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("EWA", "ZAWADZKA", "1961-09-15", "FEMALE", "5240");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("AGATA", "JABLONSKA", "1970-05-07", "FEMALE", "3247");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SVITLANA", "KOLODZIEJ", "1971-12-27", "FEMALE", "164");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MONIKA", "LIS", "1962-03-11", "FEMALE", "3856");

--Years: 1980 - 2000
--MALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("FILIP", "SZULC", "1991-07-14", "MALE", "6498");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("DANIEL", "CZERWINSKI", "1992-07-09", "MALE", "5456");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("STEFAN", "SAWICKI", "1995-06-17", "MALE", "7571");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("JANUSZ", "STEPIEN", "1986-08-25", "MALE", "6016");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KRZYSZTOF", "KOWALCZYK", "1982-12-01", "MALE", "7236");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("BARTLOMIEJ", "ZAWADZKI", "1994-02-26", "MALE", "8018");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IGOR", "SADOWSKI", "1985-12-11", "MALE", "6852");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KAZIMIERZ", "KOWALSKI", "1996-10-06", "MALE", "7311");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("NORBERT", "GORSKI", "1981-09-03", "MALE", "6777");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("LESZEK", "STEPIEN", "1986-04-04", "MALE", "5402");

--FEMALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARIANNA", "CZERWINSKA", "1983-02-27", "FEMALE", "2338");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("JUSTYNA", "ANDRZEJEWSKA", "1989-09-09", "FEMALE", "6298");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KATARZYNA", "GAJEWSKA", "1989-11-04", "FEMALE", "2956");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARZENA", "WITKOWSKA", "1989-08-14", "FEMALE", "4302");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("NATALIA", "SAWICKA", "1993-12-28", "FEMALE", "5977");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MAJA", "KACZMARCZYK", "1991-05-10", "FEMALE", "201");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("SABINA", "SOKOLOWSKA", "1986-02-11", "FEMALE", "1661");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("NIKOLA", "KAZMIERCZAK", "1996-03-09", "FEMALE", "6679");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("RENATA", "KACZMAREK", "1995-06-26", "FEMALE", "5777");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARLENA", "WYSOCKA", "1991-03-24", "FEMALE", "7771");

--Years: 2000 - 2020
--MALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARCIN", "KRAWCZYK", "2019-06-15", "MALE", "4710");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARIUSZ", "GLOWACKI", "2016-03-03", "MALE", "1630");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("LESZEK", "WOZNIAK", "2017-04-12", "MALE", "6551");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WITOLD", "NOWAK", "2000-11-03", "MALE", "6036");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("PIOTR", "KOWALSKI", "2007-08-15", "MALE", "3718");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("WIKTOR", "SOKOLOWSKI", "2012-04-05", "MALE", "7779");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IVAN", "RUTKOWSKI", "2016-07-22", "MALE", "7062");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IVAN", "LASKOWSKI", "2003-05-18", "MALE", "7698");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MARCEL", "PAWLAK", "2008-02-11", "MALE", "7184");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KRYSTIAN", "SADOWSKI", "2015-02-15", "MALE", "1458");

--FEMALE
INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("EWA", "ZALEWSKA", "2000-05-21", "FEMALE", "1417");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("EDYTA", "ZAWADZKA", "2003-08-17", "FEMALE", "5154");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MICHALINA", "CZERWINSKA", "2010-11-13", "FEMALE", "6262");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("ANNA", "SIKORA", "2012-03-27", "FEMALE", "2384");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("MALGORZATA", "WOZNIAK", "2009-10-15", "FEMALE", "7329");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("LUCYNA", "BRZEZINSKA", "2013-08-25", "FEMALE", "7229");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("AMELIA", "KROL", "2005-09-29", "FEMALE", "5868");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("NIKOLA", "CZERWINSKA", "2020-09-08", "FEMALE", "7323");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("KLAUDIA", "BRZEZINSKA", "2013-04-25", "FEMALE", "3790");

INSERT INTO person (name, surname, birth_date, gender, salary)
VALUES ("IRYNA", "NOWICKA", "2013-11-16", "FEMALE", "656");


INSERT INTO company (name, boss_id) VALUES ("alfa", 2); 
INSERT INTO company (name, boss_id) VALUES ("beta",15); 
INSERT INTO company (name, boss_id) VALUES ("gamma",24); 
INSERT INTO company (name, boss_id) VALUES ("delta",31); 
INSERT INTO company (name, boss_id) VALUES ("epsilon",48); 
INSERT INTO company (name, boss_id) VALUES ("eta",55);
INSERT INTO company (name, boss_id) VALUES ("sigma",63); 
INSERT INTO company (name, boss_id) VALUES ("tau",72); 


UPDATE person SET spouse_id = 1 WHERE id = 11;
UPDATE person SET spouse_id = 11 WHERE id = 1;

UPDATE person SET spouse_id = 2 WHERE id = 12;
UPDATE person SET spouse_id = 12 WHERE id = 2;

UPDATE person SET spouse_id = 3 WHERE id = 13;
UPDATE person SET spouse_id = 13 WHERE id = 3;

UPDATE person SET spouse_id = 4 WHERE id = 14;
UPDATE person SET spouse_id = 14 WHERE id = 4;

UPDATE person SET spouse_id = 5 WHERE id = 15;
UPDATE person SET spouse_id = 15 WHERE id = 5;

UPDATE person SET spouse_id = 6 WHERE id = 16;
UPDATE person SET spouse_id = 16 WHERE id = 6;

UPDATE person SET spouse_id = 7 WHERE id = 17;
UPDATE person SET spouse_id = 17 WHERE id = 7;

UPDATE person SET spouse_id = 21 WHERE id = 31;
UPDATE person SET spouse_id = 31 WHERE id = 21;

UPDATE person SET spouse_id = 22 WHERE id = 32;
UPDATE person SET spouse_id = 32 WHERE id = 22;

UPDATE person SET spouse_id = 23 WHERE id = 33;
UPDATE person SET spouse_id = 33 WHERE id = 23;

UPDATE person SET spouse_id = 24 WHERE id = 34;
UPDATE person SET spouse_id = 34 WHERE id = 24;

UPDATE person SET spouse_id = 25 WHERE id = 35;
UPDATE person SET spouse_id = 35 WHERE id = 25;

UPDATE person SET spouse_id = 26 WHERE id = 36;
UPDATE person SET spouse_id = 36 WHERE id = 26;

UPDATE person SET spouse_id = 27 WHERE id = 37;
UPDATE person SET spouse_id = 37 WHERE id = 27;

UPDATE person SET spouse_id = 41 WHERE id = 51;
UPDATE person SET spouse_id = 51 WHERE id = 41;

UPDATE person SET spouse_id = 42 WHERE id = 52;
UPDATE person SET spouse_id = 52 WHERE id = 42;

UPDATE person SET spouse_id = 43 WHERE id = 53;
UPDATE person SET spouse_id = 53 WHERE id = 43;

UPDATE person SET spouse_id = 44 WHERE id = 54;
UPDATE person SET spouse_id = 54 WHERE id = 44;

UPDATE person SET spouse_id = 45 WHERE id = 55;
UPDATE person SET spouse_id = 55 WHERE id = 45;

UPDATE person SET spouse_id = 46 WHERE id = 56;
UPDATE person SET spouse_id = 56 WHERE id = 46;

UPDATE person SET spouse_id = 47 WHERE id = 57;
UPDATE person SET spouse_id = 57 WHERE id = 47;

UPDATE person SET spouse_id = 61 WHERE id = 71;
UPDATE person SET spouse_id = 71 WHERE id = 61;

UPDATE person SET spouse_id = 62 WHERE id = 72;
UPDATE person SET spouse_id = 72 WHERE id = 62;

UPDATE person SET spouse_id = 63 WHERE id = 73;
UPDATE person SET spouse_id = 73 WHERE id = 63;

UPDATE person SET spouse_id = 64 WHERE id = 74;
UPDATE person SET spouse_id = 74 WHERE id = 64;

UPDATE person SET spouse_id = 65 WHERE id = 75;
UPDATE person SET spouse_id = 75 WHERE id = 65;

UPDATE person SET spouse_id = 66 WHERE id = 76;
UPDATE person SET spouse_id = 76 WHERE id = 66;

UPDATE person SET spouse_id = 67 WHERE id = 77;
UPDATE person SET spouse_id = 77 WHERE id = 67;

UPDATE person SET spouse_id = 81 WHERE id = 91;
UPDATE person SET spouse_id = 91 WHERE id = 81;

UPDATE person SET spouse_id = 82 WHERE id = 92;
UPDATE person SET spouse_id = 92 WHERE id = 82;

UPDATE person SET spouse_id = 83 WHERE id = 93;
UPDATE person SET spouse_id = 93 WHERE id = 83;

UPDATE person SET spouse_id = 84 WHERE id = 94;
UPDATE person SET spouse_id = 94 WHERE id = 84;

UPDATE person SET spouse_id = 85 WHERE id = 95;
UPDATE person SET spouse_id = 95 WHERE id = 85;

UPDATE person SET spouse_id = 86 WHERE id = 96;
UPDATE person SET spouse_id = 96 WHERE id = 86;

UPDATE person SET spouse_id = 87 WHERE id = 97;
UPDATE person SET spouse_id = 97 WHERE id = 87;

UPDATE person SET spouse_id = 101 WHERE id = 111;
UPDATE person SET spouse_id = 111 WHERE id = 101;

UPDATE person SET spouse_id = 102 WHERE id = 112;
UPDATE person SET spouse_id = 112 WHERE id = 102;

UPDATE person SET spouse_id = 103 WHERE id = 113;
UPDATE person SET spouse_id = 113 WHERE id = 103;

UPDATE person SET spouse_id = 104 WHERE id = 114;
UPDATE person SET spouse_id = 114 WHERE id = 104;

UPDATE person SET spouse_id = 105 WHERE id = 115;
UPDATE person SET spouse_id = 115 WHERE id = 105;

UPDATE person SET spouse_id = 106 WHERE id = 116;
UPDATE person SET spouse_id = 116 WHERE id = 106;

UPDATE person SET spouse_id = 107 WHERE id = 117;
UPDATE person SET spouse_id = 117 WHERE id = 107;



UPDATE person SET mother_id = 17 WHERE id = 41;
UPDATE person SET father_id = 7 WHERE id = 41;

UPDATE person SET mother_id = 19 WHERE id = 42;
UPDATE person SET father_id = 9 WHERE id = 42;

UPDATE person SET mother_id = 17 WHERE id = 43;
UPDATE person SET father_id = 7 WHERE id = 43;

UPDATE person SET mother_id = 14 WHERE id = 44;
UPDATE person SET father_id = 4 WHERE id = 44;

UPDATE person SET mother_id = 13 WHERE id = 45;
UPDATE person SET father_id = 3 WHERE id = 45;

UPDATE person SET mother_id = 13 WHERE id = 46;
UPDATE person SET father_id = 3 WHERE id = 46;

UPDATE person SET mother_id = 12 WHERE id = 47;
UPDATE person SET father_id = 2 WHERE id = 47;

UPDATE person SET mother_id = 12 WHERE id = 48;
UPDATE person SET father_id = 2 WHERE id = 48;

UPDATE person SET mother_id = 11 WHERE id = 49;
UPDATE person SET father_id = 1 WHERE id = 49;

UPDATE person SET mother_id = 32 WHERE id = 50;
UPDATE person SET father_id = 22 WHERE id = 50;

UPDATE person SET mother_id = 38 WHERE id = 51;
UPDATE person SET father_id = 28 WHERE id = 51;

UPDATE person SET mother_id = 33 WHERE id = 52;
UPDATE person SET father_id = 23 WHERE id = 52;

UPDATE person SET mother_id = 31 WHERE id = 53;
UPDATE person SET father_id = 21 WHERE id = 53;

UPDATE person SET mother_id = 35 WHERE id = 54;
UPDATE person SET father_id = 25 WHERE id = 54;

UPDATE person SET mother_id = 34 WHERE id = 55;
UPDATE person SET father_id = 24 WHERE id = 55;

UPDATE person SET mother_id = 32 WHERE id = 56;
UPDATE person SET father_id = 22 WHERE id = 56;

UPDATE person SET mother_id = 33 WHERE id = 57;
UPDATE person SET father_id = 23 WHERE id = 57;

UPDATE person SET mother_id = 35 WHERE id = 58;
UPDATE person SET father_id = 25 WHERE id = 58;

UPDATE person SET mother_id = 32 WHERE id = 59;
UPDATE person SET father_id = 22 WHERE id = 59;

UPDATE person SET mother_id = 31 WHERE id = 60;
UPDATE person SET father_id = 21 WHERE id = 60;

UPDATE person SET mother_id = 32 WHERE id = 61;
UPDATE person SET father_id = 22 WHERE id = 61;

UPDATE person SET mother_id = 33 WHERE id = 62;
UPDATE person SET father_id = 23 WHERE id = 62;

UPDATE person SET mother_id = 39 WHERE id = 63;
UPDATE person SET father_id = 29 WHERE id = 63;

UPDATE person SET mother_id = 36 WHERE id = 64;
UPDATE person SET father_id = 26 WHERE id = 64;

UPDATE person SET mother_id = 33 WHERE id = 65;
UPDATE person SET father_id = 23 WHERE id = 65;

UPDATE person SET mother_id = 35 WHERE id = 66;
UPDATE person SET father_id = 25 WHERE id = 66;

UPDATE person SET mother_id = 33 WHERE id = 67;
UPDATE person SET father_id = 23 WHERE id = 67;

UPDATE person SET mother_id = 37 WHERE id = 68;
UPDATE person SET father_id = 27 WHERE id = 68;

UPDATE person SET mother_id = 33 WHERE id = 69;
UPDATE person SET father_id = 23 WHERE id = 69;

UPDATE person SET mother_id = 56 WHERE id = 70;
UPDATE person SET father_id = 46 WHERE id = 70;

UPDATE person SET mother_id = 59 WHERE id = 71;
UPDATE person SET father_id = 49 WHERE id = 71;

UPDATE person SET mother_id = 57 WHERE id = 72;
UPDATE person SET father_id = 47 WHERE id = 72;

UPDATE person SET mother_id = 52 WHERE id = 73;
UPDATE person SET father_id = 42 WHERE id = 73;

UPDATE person SET mother_id = 52 WHERE id = 74;
UPDATE person SET father_id = 42 WHERE id = 74;

UPDATE person SET mother_id = 59 WHERE id = 75;
UPDATE person SET father_id = 49 WHERE id = 75;

UPDATE person SET mother_id = 51 WHERE id = 76;
UPDATE person SET father_id = 41 WHERE id = 76;

UPDATE person SET mother_id = 52 WHERE id = 77;
UPDATE person SET father_id = 42 WHERE id = 77;

UPDATE person SET mother_id = 57 WHERE id = 78;
UPDATE person SET father_id = 47 WHERE id = 78;

UPDATE person SET mother_id = 58 WHERE id = 79;
UPDATE person SET father_id = 48 WHERE id = 79;

UPDATE person SET mother_id = 54 WHERE id = 80;
UPDATE person SET father_id = 44 WHERE id = 80;

UPDATE person SET mother_id = 54 WHERE id = 81;
UPDATE person SET father_id = 44 WHERE id = 81;

UPDATE person SET mother_id = 57 WHERE id = 82;
UPDATE person SET father_id = 47 WHERE id = 82;

UPDATE person SET mother_id = 52 WHERE id = 83;
UPDATE person SET father_id = 42 WHERE id = 83;

UPDATE person SET mother_id = 58 WHERE id = 84;
UPDATE person SET father_id = 48 WHERE id = 84;

UPDATE person SET mother_id = 55 WHERE id = 85;
UPDATE person SET father_id = 45 WHERE id = 85;

UPDATE person SET mother_id = 51 WHERE id = 86;
UPDATE person SET father_id = 41 WHERE id = 86;

UPDATE person SET mother_id = 56 WHERE id = 87;
UPDATE person SET father_id = 46 WHERE id = 87;

UPDATE person SET mother_id = 57 WHERE id = 88;
UPDATE person SET father_id = 47 WHERE id = 88;

UPDATE person SET mother_id = 54 WHERE id = 89;
UPDATE person SET father_id = 44 WHERE id = 89;

UPDATE person SET mother_id = 71 WHERE id = 90;
UPDATE person SET father_id = 61 WHERE id = 90;

UPDATE person SET mother_id = 79 WHERE id = 91;
UPDATE person SET father_id = 69 WHERE id = 91;

UPDATE person SET mother_id = 72 WHERE id = 92;
UPDATE person SET father_id = 62 WHERE id = 92;

UPDATE person SET mother_id = 71 WHERE id = 93;
UPDATE person SET father_id = 61 WHERE id = 93;

UPDATE person SET mother_id = 77 WHERE id = 94;
UPDATE person SET father_id = 67 WHERE id = 94;

UPDATE person SET mother_id = 72 WHERE id = 95;
UPDATE person SET father_id = 62 WHERE id = 95;

UPDATE person SET mother_id = 78 WHERE id = 96;
UPDATE person SET father_id = 68 WHERE id = 96;

UPDATE person SET mother_id = 74 WHERE id = 97;
UPDATE person SET father_id = 64 WHERE id = 97;

UPDATE person SET mother_id = 75 WHERE id = 98;
UPDATE person SET father_id = 65 WHERE id = 98;

UPDATE person SET mother_id = 78 WHERE id = 99;
UPDATE person SET father_id = 68 WHERE id = 99;

UPDATE person SET mother_id = 72 WHERE id = 100;
UPDATE person SET father_id = 62 WHERE id = 100;

UPDATE person SET mother_id = 77 WHERE id = 101;
UPDATE person SET father_id = 67 WHERE id = 101;

UPDATE person SET mother_id = 78 WHERE id = 102;
UPDATE person SET father_id = 68 WHERE id = 102;

UPDATE person SET mother_id = 72 WHERE id = 103;
UPDATE person SET father_id = 62 WHERE id = 103;

UPDATE person SET mother_id = 71 WHERE id = 104;
UPDATE person SET father_id = 61 WHERE id = 104;

UPDATE person SET mother_id = 74 WHERE id = 105;
UPDATE person SET father_id = 64 WHERE id = 105;

UPDATE person SET mother_id = 79 WHERE id = 106;
UPDATE person SET father_id = 69 WHERE id = 106;

UPDATE person SET mother_id = 74 WHERE id = 107;
UPDATE person SET father_id = 64 WHERE id = 107;

UPDATE person SET mother_id = 77 WHERE id = 108;
UPDATE person SET father_id = 67 WHERE id = 108;

UPDATE person SET mother_id = 75 WHERE id = 109;
UPDATE person SET father_id = 65 WHERE id = 109;

UPDATE person SET mother_id = 97 WHERE id = 110;
UPDATE person SET father_id = 87 WHERE id = 110;

UPDATE person SET mother_id = 91 WHERE id = 111;
UPDATE person SET father_id = 81 WHERE id = 111;

UPDATE person SET mother_id = 96 WHERE id = 112;
UPDATE person SET father_id = 86 WHERE id = 112;

UPDATE person SET mother_id = 92 WHERE id = 113;
UPDATE person SET father_id = 82 WHERE id = 113;

UPDATE person SET mother_id = 94 WHERE id = 114;
UPDATE person SET father_id = 84 WHERE id = 114;

UPDATE person SET mother_id = 95 WHERE id = 115;
UPDATE person SET father_id = 85 WHERE id = 115;

UPDATE person SET mother_id = 97 WHERE id = 116;
UPDATE person SET father_id = 87 WHERE id = 116;

UPDATE person SET mother_id = 91 WHERE id = 117;
UPDATE person SET father_id = 81 WHERE id = 117;

UPDATE person SET mother_id = 93 WHERE id = 118;
UPDATE person SET father_id = 83 WHERE id = 118;

UPDATE person SET mother_id = 99 WHERE id = 119;
UPDATE person SET father_id = 89 WHERE id = 119;

UPDATE person SET mother_id = 96 WHERE id = 120;
UPDATE person SET father_id = 86 WHERE id = 120;





INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "1", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "1", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "1", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "1", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "1", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "2", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "2", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "2", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "2", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "2", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "3", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "3", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "3", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "3", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "3", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "4", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "4", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "4", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "4", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "4", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "5", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "5", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "5", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "5", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "5", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "6", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "6", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "6", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "6", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "6", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "7", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "7", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "7", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "7", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "7", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "8", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "8", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "8", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "8", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "8", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "9", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "9", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "9", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "9", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "9", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "10", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "10", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "10", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "10", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "10", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "11", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "11", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "11", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "11", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "11", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "12", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "12", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "12", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "12", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "12", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "13", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "13", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "13", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "13", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "13", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "14", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "14", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "14", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "14", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "14", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "15", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "15", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "15", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "15", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "15", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "16", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "16", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "16", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "16", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "16", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "17", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "17", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "17", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "17", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "17", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "18", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "18", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "18", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "18", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "18", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "19", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "19", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "19", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "19", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "19", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "20", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "20", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "20", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "20", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "20", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "21", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "21", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "21", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "21", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "21", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "22", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "22", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "22", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "22", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "22", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "23", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "23", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "23", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "23", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "23", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "24", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "24", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "24", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "24", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "24", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "25", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "25", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "25", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "25", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "25", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "26", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "26", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "26", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "26", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "26", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "27", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "27", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "27", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "27", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "27", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "28", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "28", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "28", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "28", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "28", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "29", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "29", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "29", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "29", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "29", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "30", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "30", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "30", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "30", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "30", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "31", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "31", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "31", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "31", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "31", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "32", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "32", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "32", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "32", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "32", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "33", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "33", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "33", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "33", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "33", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "34", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "34", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "34", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "34", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "34", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "35", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "35", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "35", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "35", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "35", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "36", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "36", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "36", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "36", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "36", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "37", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "37", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "37", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "37", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "37", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "38", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "38", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "38", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "38", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "38", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "39", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "39", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "39", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "39", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "39", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "40", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "40", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "40", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "40", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "40", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "41", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "41", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "41", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "41", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "41", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "42", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "42", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "42", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "42", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "42", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "43", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "43", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "43", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "43", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "43", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "44", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "44", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "44", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "44", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "44", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "45", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "45", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "45", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "45", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "45", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "46", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "46", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "46", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "46", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "46", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "47", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "47", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "47", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "47", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "47", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "48", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "48", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "48", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "48", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "48", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "49", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "49", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "49", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "49", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "49", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "50", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "50", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "50", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "50", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "50", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "51", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "51", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "51", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "51", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "51", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "52", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "52", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "52", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "52", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "52", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "53", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "53", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "53", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "53", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "53", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "54", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "54", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "54", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "54", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "54", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "55", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "55", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "55", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "55", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "55", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "56", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "56", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "56", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "56", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "56", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "57", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "57", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "57", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "57", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "57", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "58", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "58", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "58", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "58", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "58", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "59", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "59", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "59", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "59", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "59", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "60", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "60", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "60", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "60", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "60", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "61", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "61", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "61", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "61", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "61", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "62", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "62", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "62", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "62", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "62", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "63", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "63", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "63", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "63", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "63", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "64", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "64", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "64", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "64", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "64", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "65", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "65", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "65", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "65", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "65", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "66", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "66", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "66", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "66", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "66", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "67", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "67", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "67", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "67", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "67", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "68", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "68", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "68", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "68", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "68", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "69", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "69", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "69", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "69", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "69", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "70", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "70", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "70", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "70", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "70", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "71", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "71", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "71", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "71", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "71", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "72", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "72", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "72", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "72", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "72", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "73", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "73", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "73", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "73", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "73", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "74", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "74", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "74", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "74", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "74", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "75", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "75", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "75", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "75", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "75", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "76", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "76", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "76", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "76", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "76", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "77", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "77", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "77", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "77", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "77", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "78", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "78", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "78", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "78", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "78", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "79", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "79", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "79", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "79", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "79", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "80", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "80", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "80", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "80", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "80", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "81", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "81", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "81", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "81", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "81", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "82", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "82", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "82", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "82", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "82", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "83", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "83", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "83", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "83", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "83", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "84", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "84", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "84", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "84", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "84", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "85", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "85", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "85", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "85", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "85", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "86", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "86", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "86", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "86", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "86", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "87", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "87", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "87", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "87", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "87", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "88", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "88", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "88", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "88", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "88", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "89", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "89", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "89", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "89", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "89", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "90", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "90", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "90", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "90", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "90", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "91", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "91", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "91", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "91", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "91", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "92", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "92", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "92", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "92", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "92", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "93", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "93", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "93", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "93", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "93", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "94", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "94", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "94", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "94", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "94", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "95", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "95", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "95", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "95", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "95", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "96", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "96", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "96", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "96", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "96", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "97", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "97", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "97", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "97", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "97", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "98", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "98", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "98", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "98", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "98", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "99", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "99", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "99", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "99", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "99", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "100", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "100", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "100", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "100", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "100", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "101", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "101", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "101", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "101", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "101", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "102", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "102", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "102", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "102", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "102", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "103", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "103", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "103", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "103", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "103", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "104", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "104", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "104", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "104", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "104", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "105", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "105", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "105", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "105", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "105", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "106", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "106", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "106", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "106", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "106", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "107", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "107", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "107", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "107", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "107", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "108", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "108", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "108", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "108", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "108", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "109", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "109", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "109", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "109", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "109", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "110", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "110", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "110", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "110", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "110", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "111", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "111", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "111", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "111", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "111", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "112", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "112", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "112", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "112", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "112", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "113", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "113", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "113", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "113", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "113", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "114", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "114", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "114", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "114", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "114", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "115", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "115", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "115", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "115", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "115", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "116", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "116", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "116", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "116", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "116", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "117", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "117", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "117", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "117", "8");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "117", "2");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "118", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "118", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "118", "7");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "118", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "118", "4");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "119", "5");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "119", "1");

INSERT INTO job (form, person_id, company_id)
VALUES ("contract_of_service", "119", "3");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "119", "6");

INSERT INTO job (form, person_id, company_id)
VALUES ("employment_contract", "119", "7");