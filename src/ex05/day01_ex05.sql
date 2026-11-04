SELECT
    person.id AS person_id,
    person.name AS person_name,
    person.age,
    person.gender,
    person.address,
    pizzeria.id,
    pizzeria.name,
    pizzeria.rating
FROM person, pizzeria
ORDER BY person.id ASC;
