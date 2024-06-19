CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR AS
$$	DECLARE
		full_name VARCHAR;
	BEGIN
		 SELECT CONCAT(INITCAP(first_name), ' ', INITCAP(last_name)) INTO full_name;
		RETURN full_name;
	END;
$$
LANGUAGE plpgsql;