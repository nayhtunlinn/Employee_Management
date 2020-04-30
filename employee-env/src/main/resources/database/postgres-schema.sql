/* define the schemas. */
drop table  IF EXISTS account;

CREATE TABLE account(
    username varchar(128),
    password varchar(60),
    emp_id int NOT NULL,
  	createDate timestamp NOT NULL,
  	updateDate timestamp,
    constraint pk_tbl_account primary key (username)
);

drop table IF EXISTS employee;

drop table IF EXISTS department;

CREATE TABLE department ( 
   id SERIAL PRIMARY KEY,
   name varchar(255) NOT NULL
);

drop table IF EXISTS position;

CREATE TABLE position ( 
   id SERIAL PRIMARY KEY NOT NULL,
   name varchar(255) NOT NULL
);

drop table IF EXISTS japaneseLevel;

CREATE TABLE japaneseLevel ( 
   id SERIAL PRIMARY KEY,
   name varchar(255) NOT NULL
);

CREATE TABLE employee ( 
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL,
  gender varchar NOT NULL,
  marital_status varchar NOT NULL,
  birthDate date NOT NULL,
  email varchar(255) NOT NULL,
  phone varchar(255) NOT NULL,
  createDate date NOT NULL,
  department_ID INT NOT NULL,
  japan_ID INT NOT NULL,
  position_ID INT NOT NULL,
  foreign key (department_ID) references department(Id),
  foreign key (japan_ID) references japaneseLevel(Id),
  foreign key (position_ID) references position(Id)
);

