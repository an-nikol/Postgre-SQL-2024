CREATE OR REPLACE PROCEDURE sp_customer_country_name(
    IN customer_full_name VARCHAR(50),
    OUT country_name VARCHAR(50)
)
AS 
$$
    BEGIN
        SELECT
            c."name"
        INTO
            country_name
        FROM
            customers AS cust
        LEFT JOIN
            countries AS c
            ON cust.country_id = c."id"
        WHERE
            CONCAT_WS(' ', cust.first_name, cust.last_name) = customer_full_name;
    END;
$$
LANGUAGE plpgsql;
