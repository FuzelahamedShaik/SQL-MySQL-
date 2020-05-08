create database cinema_bookings;
use cinema_bookings;
create table films(

      id int auto_increment primary key,
      name varchar(50) not null unique,
      lenght_min int not null
);
create table customers(

       id int primary key auto_increment,
       first_name varchar(50),
       last_name varchar(30) not null,
       email varchar(50) not null unique
);
create table rooms(

        id int primary key auto_increment,
        name varchar(40) not null,
        no_seats int not null
);
create table screening(

        id int primary key auto_increment,
        film_id int not null,
        room_id int not null,
        start_time datetime not null,
        foreign key (film_id) references films(id),
        foreign key (room_id) references rooms(id)
);
create table seats(

         id int primary key auto_increment,
         row_no char(1) not null,
         number int not null,
         room_id int not null,
         foreign key(room_id) references rooms (id)
);
create table bookings(

	      id int primary key auto_increment,
          screening_id int not null,
          customer_id int not null,
          foreign key (screening_id) references screening (id),
          foreign key (customer_id) references customers (id)
);
create table reserved_seats(

          id int primary key auto_increment,
          booking_id int not null,
          seat_id int not null,
          foreign key (booking_id) references bookings (id),
          foreign key (seat_id) references seats (id)
);
show tables;