GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'redpanda' ;

create database redpanda;

GRANT ALL PRIVILEGES ON redpanda.* TO 'redpanda'@'%';

use redpanda;
create table payment_method (
    id int primary key,
    name varchar(32),
    code varchar(6),
    description varchar(255),
    created_date datetime,
    last_modified_date datetime
);
insert into payment_method (id, name, code, description, created_date, last_modified_date)
values (1, 'NetBanking', 'NB', 'Payment via Net Banking', now(), now());
insert into payment_method (id, name, code, description, created_date, last_modified_date)
values (2, 'Debit Card', 'DC', 'Payment via Debit Card', now(), now());
insert into payment_method (id, name, code, description, created_date, last_modified_date)
values (3, 'Credit Card', 'CC', 'Payment via Credit Card', now(), now());