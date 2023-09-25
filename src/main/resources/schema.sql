create table netology.customers (
                                    a                     id int primary key auto_increment,
                                    name varchar(255) not null ,
                                    surname varchar(255) not null,
                                    age int not null,
                                    phone_number varchar(255)
);

insert into netology.customers (name, surname, age, phone_number)
values ('Иван', 'Сидоров', 28, '89345623457');
insert into netology.customers (name, surname, age, phone_number)
values ('Василий', 'Пупкин', 35, '89345823457');
insert into netology.customers (name, surname, age, phone_number)
values ('Александр', 'Петров', 27, '89345693457');
insert into netology.customers (name, surname, age, phone_number)
values ('Александр', 'Васильев', 45, '89345693457');
insert into netology.customers (name, surname, age, phone_number)
values ('Alexey', 'Васильев', 45, '89345691457');
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
values ('25.08.2023', 2, 'Кофе', 3);
insert into netology.orders (date, customer_id, product_name, amount)
values ('05.08.2023', 4, 'Молоко', 2);
insert into netology.orders (date, customer_id, product_name, amount)
values ('05.07.2023', 3, 'Шкаф', 1);
insert into netology.orders (date, customer_id, product_name, amount)
values ('15.08.2023', 5, 'Молоко', 2);
insert into netology.orders (date, customer_id, product_name, amount)
values ('02.07.2023', 6, 'Шкаф', 1);