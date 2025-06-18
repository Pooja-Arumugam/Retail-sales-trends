---- just select only parts that you want to run...u can not run the whole file together, since views and tables 
----- have already been creted you can not rerun them using the same names, chnage the names and then run them


CREATE DATABASE SCOPED CREDENTIAL cred_pooss
WITH
identity = 'Managed Identity'

Create external data source sourcess_gold
with 
(
	Location = 'https://azdatalakeadventure.blob.core.windows.net/gold',
	CREDENTIAL = cred_pooss
)

create external file format format_parquet
WITH(
	format_type = parquet,
DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

----------------------------------
-- CREATE EXTERNAL TABLE EXTSALES
-----------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH(
	LOCATION = 'extsales',
	DATA_SOURCE = sourcess_gold,
	file_format = format_parquet
)
AS
select * from gold.sales

select * from gold.sales