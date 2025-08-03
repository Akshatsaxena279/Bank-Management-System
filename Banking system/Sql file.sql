use bank;
create table master(
acno int primary key,
cname varchar(40),
date_of_open date,
last_transaction_date date,
balance float);

create table trans(
acno int,
date_of_transaction date,
type_of_transaction varchar(10) check(type_of_transaction in('D','W')),
amount float,
foreign key fk1(acno) references master(acno));

create table account_closed as select * from master;

select * from master;
select * from trans;
select * from account_closed;


DELIMITER //

CREATE TRIGGER deltrig
BEFORE DELETE ON master
FOR EACH ROW
BEGIN
    INSERT INTO account_closed 
    VALUES (
        OLD.acno,
        OLD.cname,
        OLD.date_of_open,
        OLD.last_transaction_date,
        OLD.balance
    );
END;
//
