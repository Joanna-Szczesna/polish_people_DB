# polish_people_DB
only SQL standard


# About DB:
The database contains information about people (all Poles born after 1900), such as: name, surname, date of birth, gender, earnings. Each person can have a mother and/or father. A woman can have one husband, a man can have one wife. People work in companies that have a name. One person can work in several companies at the same time, on a contract for services or on an employment contract. Each company has exactly one president.

## Queries:

A. Find the name and surname of the person with the largest number of female grandchildren.

B. Present the average number of employees employed under a contract of mandate and the average number of employees
employed under an employment contract in all companies and the average salary for these contracts.

C. Find the family (at most 2 generations) that earns the least. Present the name and surname of any person
from this family.
Hint: a 1-generation family is person X with a possible spouse. A 2-generation family is a 1-generation family with all of their children (including possible spouses) or parents

### A:

Woman:
select COUNT(p.name) as granddaughters_amount, grandmother.id as grandmother_id, grandmother.name as grandmother_name, grandmother.surname as grandmother_surname
from person p
left join person mother ON  p.mother_id = mother.id
left join person grandmother ON  mother.mother_id = grandmother.id
where p.mother_id is not null and mother.mother_id is not null and p.gender="female"
group by grandmother_id order by count(p.name) desc LIMIT 1;

Man:
select COUNT(p.name) as granddaughters_amount, grandfather.id as grandfather_id, grandfather.name as grandfather_name, grandfather.surname as grandfather_surname
from person p
left join person mother ON  p.mother_id = mother.id
left join person grandmother ON  mother.mother_id = grandmother.id
left join person grandfather ON  mother.father_id = grandfather.id
where p.mother_id is not null and mother.mother_id is not null and p.gender="female"
group by grandfather_id order by count(p.name) desc LIMIT 1;

### B:

select count(1) as amount, round(avg(p.salary),2) as medium_salary, j.form from person p 
inner join job j on p.id = j.person_id
group by j.form;


### C:

1-generation (least in total) - no singles:
select ROUND(p.salary+s.salary,2) as sum_salary, s.id, s.name , s.surname,
 p.id as spouse_id, p.name as spouse_name, p.surname as spouse_surname 
from person s , person p where s.id = p.spouse_id ORDER BY sum_salary ASC LIMIT 1;

rodzina jednopokoleniowa (najmniej sumarycznie)- uwzglednia singli:
SELECT p.salary+ IFNULL(s.salary,0) AS sum_salary, p.id, p.name , p.surname,
 s.id AS spouse_id, s.name AS spouse_name, s.surname AS spouse_surname 
FROM person p
LEFT JOIN person s ON p.spouse_id=s.id
ORDER BY sum_salary ASC LIMIT 1; 

C: 2-generation family:

SELECT 
	p.salary + IFNULL(s.salary,0) + IFNULL(mother.salary,0) +IFNULL(mother_in_law.salary,0) + IFNULL(father.salary,0) +IFNULL(father_in_law.salary,0) AS two_generation_sum_salary,
	p.id, p.name, p.surname,
	s.id AS spouse_id, s.name AS spouse_name
FROM person p
LEFT JOIN person s ON p.spouse_id=s.id
LEFT JOIN person mother ON  p.mother_id = mother.id 
LEFT JOIN person father ON  p.father_id = father.id 
LEFT JOIN person mother_in_law ON  s.mother_id = mother_in_law.id 
LEFT JOIN person father_in_law ON  s.father_id = father_in_law.id 
ORDER BY two_generation_sum_salary ASC LIMIT 1;  


[PL]

# Opis bazy:
Baza zawiera informacje o osobach (wszystkich Polakach urodzonych po roku 1900), takie jak: imię, nazwisko,
data urodzenia, płeć, zarobki. Każda osoba może mieć matkę i/lub ojca. Kobieta może mieć jednego męża,
mężczyzna może mieć jedną żonę. Osoby pracują w przedsiębiorstwach, posiadających nazwę. Jedna osoba może
pracować w kilku przedsiębiorstwach jednocześnie, na umowę zlecenie lub na umowę o pracę. Każde
przedsiębiorstwo ma dokładnie jednego prezesa.

## Zapytania:
A. Znajdź imię i nazwisko osoby posiadającej największą liczbę wnucząt płci żeńskiej.
B. Przedstaw średnią ilość pracowników zatrudnionych na umowę zlecenie i średnią ilość pracowników
zatrudnionych na umowę o pracę we wszystkich firmach oraz średnią pensję dla tych umów.
C. Znajdź rodzinę (co najwyżej 2 pokoleniową) najmniej zarabiającą. Przedstaw imię i nazwisko dowolnej osoby
z tej rodziny.
Podpowiedź: rodzina 1-pokoleniowa to osoba X z ewentualnym współmałżonkiem. Rodzina 2-pokoleniowa to
rodzina 1-pokoleniowa z wszystkimi jej dziećmi (wraz z ewentualnymi współmałżonkami) lub rodzicami

### A:

kobieta największa ilosć wnuczek:
select COUNT(p.name) as granddaughters_amount, grandmother.id as grandmother_id, grandmother.name as grandmother_name, grandmother.surname as grandmother_surname
from person p
left join person mother ON  p.mother_id = mother.id
left join person grandmother ON  mother.mother_id = grandmother.id
where p.mother_id is not null and mother.mother_id is not null and p.gender="female"
group by grandmother_id order by count(p.name) desc LIMIT 1;

mężczyzna największa ilosć wnuczek:
select COUNT(p.name) as granddaughters_amount, grandfather.id as grandfather_id, grandfather.name as grandfather_name, grandfather.surname as grandfather_surname
from person p
left join person mother ON  p.mother_id = mother.id
left join person grandmother ON  mother.mother_id = grandmother.id
left join person grandfather ON  mother.father_id = grandfather.id
where p.mother_id is not null and mother.mother_id is not null and p.gender="female"
group by grandfather_id order by count(p.name) desc LIMIT 1;

### B:

select count(1) as amount, round(avg(p.salary),2) as medium_salary, j.form from person p 
inner join job j on p.id = j.person_id
group by j.form;

### C:

rodzina jednopokoleniowa (najmniej sumarycznie) - bez singli: 
select ROUND(p.salary+s.salary,2) as sum_salary, s.id, s.name , s.surname,
 p.id as spouse_id, p.name as spouse_name, p.surname as spouse_surname 
from person s , person p where s.id = p.spouse_id ORDER BY sum_salary ASC LIMIT 1;

rodzina jednopokoleniowa (najmniej sumarycznie)- uwzglednia singli:
SELECT p.salary+ IFNULL(s.salary,0) AS sum_salary, p.id, p.name , p.surname,
 s.id AS spouse_id, s.name AS spouse_name, s.surname AS spouse_surname 
FROM person p
LEFT JOIN person s ON p.spouse_id=s.id
ORDER BY sum_salary ASC LIMIT 1; 

C: rodzina dwupokoleniowa:

SELECT 
	p.salary + IFNULL(s.salary,0) + IFNULL(mother.salary,0) +IFNULL(mother_in_law.salary,0) + IFNULL(father.salary,0) +IFNULL(father_in_law.salary,0) AS two_generation_sum_salary,
	p.id, p.name, p.surname,
	s.id AS spouse_id, s.name AS spouse_name
FROM person p
LEFT JOIN person s ON p.spouse_id=s.id
LEFT JOIN person mother ON  p.mother_id = mother.id 
LEFT JOIN person father ON  p.father_id = father.id 
LEFT JOIN person mother_in_law ON  s.mother_id = mother_in_law.id 
LEFT JOIN person father_in_law ON  s.father_id = father_in_law.id 
ORDER BY two_generation_sum_salary ASC LIMIT 1;  


--------------------------------
### dodatkowe:

małżeństwa:
select s.id, s.name , s.surname, s.birth_date, 
 p.id, p.name , p.surname, p.birth_date 
from person s , person p where s.id = p.spouse_id; 

dziecko z rodzicami:
select
 c.id, c.name,
 m.id as mother_id, m.name as mother_name, m.gender as mother_gender,
 f.id as father_id, f.name as father_name, f.gender as father_gender from person c, person m, person f
 where c.mother_id = m.id and c.father_id = f.id;

wszystko dla minimalnej pensji
 select * from person where salary =  (select MIN(salary) from person where spouse_id is null); 
