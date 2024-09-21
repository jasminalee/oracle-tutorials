

-- ddl

CREATE TABLE customer (	
			customer_id				NUMBER(3) 			NOT NULL,
			customer_name 			VARCHAR2(30) 		NOT NULL,
			customer_address 		VARCHAR2(30) 		NOT NULL,
			city  							VARCHAR2(15)	 	NULL,
			state 							CHAR(2)	 			NULL,	
			postal_code 				NUMBER(6)	 		NULL, 
 			CONSTRAINT  customer_pk  PRIMARY KEY  (customer_id)
	);
	-- ddl
CREATE TABLE  customer_GD  AS
SELECT customer_id, customer_name, customer_address, state 
	FROM Customer WHERE state = 'GD';

	
-- 	dml
	
INSERT INTO "XUEQING"."CUSTOMER"("CUSTOMER_ID", "CUSTOMER_NAME", "CUSTOMER_ADDRESS", "CITY", "STATE", "POSTAL_CODE") VALUES ('2', '李雪情', '商鼎国际', '成都', 'ED', '610000');



INSERT INTO "XUEQING"."ITEM"("ITEM_ID", "ITEM_DESC", "CATEGORY") VALUES ('12345678', '数字', 'M');
