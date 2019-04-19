drop table if exists person;
drop table if exists address;

create table person (

        person_id serial primary key,
        first_name varchar(100) not null,
        last_name varchar(100) not null,
        date_added timestamp not null,
        type varchar(100),
        update_date timestamp
);

create table address (
        
        address_id serial primary key,
        street_address varchar(255) not null,
        street_address_line_two varchar(255), 
        city varchar(100) not null,
        district varchar(255) not null,
        postal_code varchar(25) not null,
        country_code char(3),
        address_type varchar(20) not null,
        other_description varchar(100), 
        
        constraint chk_address_type check (address_type in ('Home', 'Work', 'Shipping', 'Billing', 'Other')),
        constraint chk_other_address_description check ( (address_type = 'Other' and other_description is not null) or (address_type <> 'Other' and other_description is null))
);
        
        
 create table person_address (
 
        person_id int not null,
        address_id int not null,
        
        constraint fk_person_address_person_id foreign key (person_id) references person(person_id),
        constraint fk_person_address_address_id foreign key (address_id) references address(address_id)
);
               
        