

select customer_id,name,category, product, price from MYDB.POSTGRES_CS_MYSCHEMA.CUSTOMER_PURCHASES

union all 

select customer_id,name,category, product,price_inr_ as price  from demodb.one_drive.customer_data_sheet_1
