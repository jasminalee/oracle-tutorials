--Module 4





--Module4
drop table bricks_heap;

create table bricks_heap
(
    bricks_name varchar2(100)
) organization heap;

select table_name
from USER_TABLES
where table_name = 'bricks_heap';

INSERT INTO XUEQING.BRICKS_HEAP (BRICKS_NAME)
VALUES ('数学');
INSERT INTO XUEQING.BRICKS_HEAP(BRICKS_NAME)
VALUES ('语文');

--查询语句是select <字段> from <表名>;
SELECT bricks_name from bricks_heap;

-- 删除一行或者字段
-- DELETE FROM <表名> WHERE <条件>;
-- <条件> : BRICKS_NAME = '数学'
DELETE FROM XUEQING.BRICKS_HEAP WHERE BRICKS_NAME='数学';
SELECT bricks_name from XUEQING.BRICKS_HEAP;

UPDATE XUEQING.BRICKS_HEAP
SET BRICKS_NAME = '数学'
WHERE BRICKS_NAME='语文';

-- 修改语句 UPDATE <表名> SET <字段名>=<修改后的值> WHERE <字段名>=<修改前的值>;




--Module 3
create table bricks (
Colour varchar2(10),
Shape varchar2(10)
);

select table_name from user_tables where table_name='BRICKS';





--Module 2 String=varchar2  varchar2(5) <=0-5  char(5) = 5 'a' 区别?
-- 'a21'    -- 字符
-- 'ajdguwbugb1uv3123352532%%&*^$%#367643335';varchar2(20) -- 单引号包裹任意'字符'组合
-- 623647825;  -- number(231)
-- 51325.2354; -- number(12,4) 浮点数
-- true/false   			-- 布尔 




--Module 2
SELECT table_name from user_tables;

SELECT table_name,iot_name,iot_name,iot_type,'external',
partitioned,'temporary',cluster_name from user_tables;


--Module 1
create table toys (
  toy_name varchar2(100),
  weight   number
);
