SELECT
    person_order.order_date,
    person.name || ' (age:' || person.age || ')' AS person_information
FROM
    (SELECT
        id AS person_id,
        name,
        age
    FROM person) AS person
NATURAL JOIN person_order
ORDER BY person_order.order_date ASC, person_information ASC;
