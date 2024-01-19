insert into product_color_tb
values
	(0, 'Black'),
    (0, 'White'),
    (0, 'Navy');
    
insert into product_size_tb
values
	(0, 'SS'),
	(0, 'S'),
	(0, 'M'),
	(0, 'L'),
	(0, 'XL'),
	(0, 'XXL');

insert into product_tb
values
	(0, '모헤어 브이넥 앙고라 니트', 37400),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 38000),
	(0, '버티칼 투웨이 골지 양털 집업', 49000),
	(0, '반집업 꽈배기 카라니트', 48000),
	(0, '후드 MA-1 패딩 점퍼', 62000);
    
insert into product_register_tb
values
	(0, 1, 2, 1),
	(0, 1, 3, 1),
	(0, 1, 4, 1),
	(0, 1, 5, 1),
	(0, 2, 2, 2),
	(0, 2, 3, 2),
	(0, 2, 4, 2),
	(0, 2, 5, 2),
	(0, 2, 6, 2),
	(0, 3, 3, 3),
	(0, 3, 4, 3),
	(0, 3, 5, 3),
	(0, 3, 6, 3),
	(0, 4, 1, 2),
	(0, 4, 2, 2),
	(0, 4, 3, 2),
	(0, 4, 4, 2),
	(0, 4, 5, 2),
	(0, 5, 2, 1),
	(0, 5, 3, 1),
	(0, 5, 4, 1),
	(0, 5, 5, 1);
    
select
	*
from
	product_register_tb;
    

select
	prt.product_register_id,
    prt.product_id,
    pt.product_name,
    pt.product_price,
    prt.product_size_id,
    pst.product_size_name,
    prt.product_color_id,
    pct.product_color_name
from
	product_register_tb prt
    left outer join product_tb pt on(pt.product_id = prt.product_id)
    left outer join product_size_tb pst on(pst.product_size_id = prt.product_size_id)
    left outer join product_color_tb pct on(pct.product_color_id = prt.product_color_id);
    
    
select
    prt.product_size_id,
    pst.product_size_name,
    count(prt.product_size_id) as count
from
	product_register_tb prt
    left outer join product_tb pt on(pt.product_id = prt.product_id)
    left outer join product_size_tb pst on(pst.product_size_id = prt.product_size_id)
    left outer join product_color_tb pct on(pct.product_color_id = prt.product_color_id)
group by
	prt.product_size_id,
    pst.product_size_name
order by
	prt.product_size_id;