insert into delivery_tb
values
	(1, '대한통운', '김준일', '부산광역시 연제구 중앙대로 1001 부산광역시청', '김춘식', '010-8282-5353', '안전하게 배송해주세요');
    
select
	*
from delivery_tb;

SHOW DATABASES;

use delivery_db;

show tables;

DESC delivery_tb;

insert into student_tb
values
	(0, '김춘식'),
    (0, '손흥민');
    
insert into subject_tb
values
	(1, '컴퓨터구조'),
    (2, '데이터베이스'),
    (3, '인공지능');
    
insert into score_tb
values
	(1, 1, 1, 95),
    (2, 2, 1, 84),
    (3, 1, 2, 89),
    (4, 2, 2, 92),
    (5, 1, 3, 100),
    (6, 2, 3,  88);
    
select
	sct.순번,
    sct.학번,
    stt.이름,
    sct.과목번호,
    sjt.과목이름,
    sct.점수
from
	score_tb sct
    left outer join subject_tb sjt on (sjt.과목번호 = sct.과목번호)
    left outer join student_tb stt on (stt.학번 = sct.학번)
where
	sct.순번 < 5;
    

truncate 상품_tb;
    
insert into 상품_tb
values
	(0, '딸기사탕', 50),
    (0, '누룽지사탕', 100);
    
START TRANSACTION;

select
	*
from
	상품_tb;
insert into 상품_tb
values
	(3, '오렌지사탕', 20);
SAVEPOINT sp1;
update 
	상품_tb
set
	수량 = 200
where
	상품코드 = 2;
    
select
	*
from
	상품_tb;
    
rollback to sp1;

select
	*
from
	상품_tb;
    
update
	상품_tb
set
	수량 = 200
where
	상품코드 = 1;

select
	*
from
	상품_tb;
    
commit;

select
	*
from
	user_tb;
    
insert into
	USER_TB
values
	(0, 'abc', '111', 'john', 'abc@gmail.com');
    
select
	*
from
	USER_TB;

select
	*
from
	USER_VIEW;
    
insert into
	USER_TB
values
	(0, 'bc', '111', 'john', 'abc@gmail.com');
    
INSERT INTO sales_tb (customer, amount)
VALUES 
    ('John', 100), 
    ('Jane', 200), 
    ('John', 150), 
    ('Jane', 50), 
    ('Jim', 300);
    
select
	customer,
    sum(amount)
from
	sales_tb
group by
	customer
order by
	sum(amount) desc;
    
INSERT INTO USER_MST_TB
VALUES
	(0, 'JOHN', 'JOHN@gmail.com'),
    (0, 'JANE', 'JANE@gmail.com'),
    (0, 'JIM', 'JIM@gmail.com');
    
INSERT INTO USER_DTL_TB
VALUES
	(0, '010-1111-2222', 'MALE'),
    (0, '010-3333-4444', 'FEMALE'),
    (0, '010-5555-6666', 'MALE');
    
CALL P_FIND_USER_BY_USERNAME('JIM');



select
	*
from
	USER_MST_TB MST
    LEFT OUTER JOIN USER_DTL_TB DTL ON (DTL.USER_ID = MST.USER_ID);

DELETE
FROM
	USER_MST_TB
WHERE
	USER_ID = 1;
    

    
TRUNCATE USER_MST_TB;
TRUNCATE USER_DTL_TB;