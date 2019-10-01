CREATE TABLE staff (
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
	phone_number VARCHAR(20),
    created_date DATETIME
);

insert into staff values ('Joe', 'Smith', '555-555-5555', GETDATE()); 
