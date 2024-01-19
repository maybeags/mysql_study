select
	*
from
	student_tb;
    
insert into address1_tb
	values
    (0, '부산시'),
    (0, '경상남도');
    
insert into address2_tb
	values
    (0, '금정구'),
    (0, '부산진구'),
    (0, '남구'),
    (0, '서구'),
    (0, '동래구'),
    (0, '양산시');
    
insert into student_register_tb
	values
	(0, '김도균', 27, 1, 1),
	(0, '김도훈', 25, 1, 2),
	(0, '김범수', 33, 1, 1),
	(0, '김상현', 26, 1, 3),
	(0, '이재영', 25, 1, 4),
	(0, '이정찬', 29, 1, 2),
	(0, '이지언', 26, 1, 5),
	(0, '이평원', 30, 2, 6),
    (0, '심재원', 29, 1, 3),
	(0, '심재원', 29, 1, 3);
    
select
	*
from student_register_tb;

select
	*
from address1_tb;

select
	*
from address2_tb;

truncate student_register_tb;
truncate address1_tb;
truncate address2_tb;

select
	srt.student_register_id,
    srt.student_name,
    srt.student_age,
    srt.student_address1,
	a1t.address1_name,
    srt.student_address2,
	a2t.address2_name
from
	student_register_tb as srt
    left outer join address1_tb as a1t on (a1t.address1_id = srt.student_address1)
    left outer join address2_tb as a2t on (a2t.address2_id = srt.student_address2); 