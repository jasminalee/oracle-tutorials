--Module 2


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
SELECT table_name,iot_name,iot_name,iot_type,'external',
partitioned,'temporary',cluster_name from user_tables;


--Module 1
create table toys (
  toy_name varchar2(100),
  weight   number
);
