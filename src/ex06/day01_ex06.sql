SELECT
    intersected_actions.action_date,
    person.name AS person_name
FROM (
    SELECT
        order_date AS action_date,
        person_id
    FROM person_order
    INTERSECT
    SELECT
        visit_date,
        person_id
    FROM person_visits
) AS intersected_actions
INNER JOIN person ON intersected_actions.person_id = person.id
ORDER BY intersected_actions.action_date ASC, person_name DESC;
