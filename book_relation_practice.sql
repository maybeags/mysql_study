#p_inset_book 의 procedure
set @book_name = '송사무장의 실전경매3';
set @author_name = '송희장3';
set @publisher_name = '지혜로3';
set @insert_book_status = 0;

# in 으로 받은 매개변수자리는 값 그대로 넣어줘도 된다 out 자리는 xx
call p_insert_book(@book_name, @author_name, @publisher_name, @insert_book_status);

select
	*
from
	book_tb;

   
select @insert_book_status;

select
	book_id,
    book_name,
    author_name,
    publisher_name
from
	book_tb bt
    left outer join author_tb at on (at.author_id = bt.author_id)
    left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id);
    
select
	bt.book_id,
     bt.book_name,
     at.author_id,
     at.author_name,
     pt.publisher_id,
     pt.publisher_name
from
	book_tb bt
    left outer join author_tb at on (at.author_id = bt.author_id)
    left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id)
where
	bt.book_name like '%title%';
