create table netology.customers (
                                    a                     id int primary key auto_increment,
                                    name varchar(255) not null ,
                                    surname varchar(255) not null,
                                    age int not null,
                                    phone_number varchar(255)
);

insert into netology.customers (name, surname, age, phone_number)
values ('Ivan', 'Sidorov', 28, '89345623457');
insert into netology.customers (name, surname, age, phone_number)
values ('Vasiliy', 'Pupkin', 35, '89345823457');
insert into netology.customers (name, surname, age, phone_number)
values ('Alexander', 'Petrov', 27, '89345693457');
insert into netology.customers (name, surname, age, phone_number)
values ('Alexander', 'Vasiliev', 45, '89345693457');
insert into netology.customers (name, surname, age, phone_number)
values ('Alexey', 'Vasiliev', 45, '89345691457');
insert into netology.customers (name, surname, age, phone_number)
values ('AlExey', 'Petrov', 35, '89445691457');

create table netology.orders (
                                 id int primary key auto_increment,
                                 date varchar(255) not null,
                                 customer_id int,
                                 product_name varchar(255) not null,
                                 amount int,
                                 foreign key (customer_id) references customers(id)
);

insert into netology.orders (date, customer_id, product_name, amount)
values ('25.08.2023', 2, 'Coffee', 3);
insert into netology.orders (date, customer_id, product_name, amount)
values ('05.08.2023', 4, 'Milk', 2);
insert into netology.orders (date, customer_id, product_name, amount)
values ('05.07.2023', 3, 'Shelf', 1);
insert into netology.orders (date, customer_id, product_name, amount)
values ('15.08.2023', 5, 'Milk', 2);
insert into netology.orders (date, customer_id, product_name, amount)
values ('02.07.2023', 6, 'Shelf', 1);