create database test;
use test;
create table addresses(

     id int,
     house_number varchar(50),
     city varchar(50),
     postal_code varchar(7)
);
create table people(

      id int,
      first_name varchar(50),
      last_name varchar(50),
      address_id int
);
create table pets(
  
       id int,
       name varchar(50),
       species varchar(50),
       owner_id int
);
show tables;
describe people;
alter table people
add primary key(id);
alter table people
drop primary key;
select * from pets;
alter table pets change `species` `animal_type` varchar(20);
alter table addresses modify city varchar(50);
describe addresses;
alter table pets
add constraint fk_people_id
foreign key (owner_id) references people(id);
describe pets;
alter table people
add column email varchar(50);
alter table people
add constraint mail_address unique (email);
alter table pets change `name` `first_name` varchar(25);
alter table addresses modify postal_code char(7);

