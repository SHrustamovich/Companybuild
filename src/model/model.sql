
CREATE TABLE company(
    company_id serial PRIMARY KEY,
    company_name text not null
);

CREATE TABLE complex(
    complex_id serial PRIMARY KEY,
    complex_name text not null,
    company_id int REFERENCES company(company_id)
);

CREATE TABLE rooms(
    room_id serial PRIMARY KEY,
    room_number int not null,
    b_square int not null,
    b_square_price decimal(10,2),
    b_address text not null,
    complex_id int REFERENCES complex(complex_id)
);

CREATE TABLE bank(
    bank_id serial PRIMARY KEY,
    bank_name text not null,
    bank_duration int not null,
    bank_service int not null,  
    b_money int not null
);

SELECT 
  SUM(room_number * b_square * b_square_price) AS price
FROM 
  rooms
WHERE
 room_id = 1;

 SELECT 
   bank_name AS Bank_name,
   bank_duration AS muddat,
   bank_service AS servis,
   MAX(b_money) AS kridit
 FROM 
   bank
GROUP BY
  Bank_name,
  muddat,
  servis
HAVING
  bank_duration = 10;

  SELECT 
    cy.company_id AS companyID,
    cy.company_name AS companyName,
    c.complex_name AS complex,
    r.room_number AS room,
    r.b_square AS kv,
    r.b_square_price AS price,
    r.b_address AS addres
  FROM
    company cy
  LEFT JOIN
    complex c
  ON
    cy.company_id = c.company_id
  LEFT JOIN
    rooms r
  ON
    c.complex_id = r.complex_id
  ORDER BY
    cy.company_id ASC;


SELECT 
   room_id AS id,
   b_square AS metrkv,
   b_square_price AS kvprice,
   b_address AS addres,
   SUM(room_number * b_square * b_square_price) AS price
 FROM 
   rooms
  GROUP BY
  id,
  metrkv,
  kvprice,
  addres
  HAVING
    room_id = 2; 