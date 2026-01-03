Write an SQL query to find all numbers in a table that are palindromes (read the same forward and backward).

CREATE TABLE palindrom_tab (
   string_value varchar2(10) 
);

INSERT ALL
  INTO palindrom_tab (string_value) VALUES ('level')
  INTO palindrom_tab (string_value) VALUES ('madam')
  INTO palindrom_tab (string_value) VALUES ('cat')    
  INTO palindrom_tab (string_value) VALUES ('dog')
  INTO palindrom_tab (string_value) VALUES ('rat')
SELECT * FROM dual;

Solution:
SELECT string_value
FROM palindrom_tab
WHERE string_value = REVERSE(string_value);
