select id,sale_person_fname,sale_person_lname, sold_price, items_sold, country, region
,case when product_name='Cell Phone' then 'Mobile' else product_name end as product_name
,case when items_sold*sold_price >=3000 then 'High'
    when items_sold*sold_price >=1500 then 'Medium'
    else 'Low' end as totalsale_status
from mydb.one_drive.total_sale
where region in ('North America','NorthAmerica')
order by sold_price desc 
