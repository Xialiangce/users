CREATE DATABASE IF NOT EXISTS mango_0 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_1 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_2 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_3 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_4 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_5 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_6 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_7 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_8 default charset utf8 COLLATE utf8_unicode_ci; 
CREATE DATABASE IF NOT EXISTS mango_9 default charset utf8 COLLATE utf8_unicode_ci; 

CREATE TABLE IF NOT EXISTS mango_0.user_0 (
user_id  INT(32) NOT NULL COMMENT '用户id',
name        VARCHAR(50) COMMENT '用户名',
GMT_UPDATE    TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
GMT_CREATE    TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (user_id)
);

DELIMITER // 
CREATE procedure create_table()
BEGIN
SET @i=0;
SET @j=0;
WHILE @i < 10 DO
SET @j = 0;
WHILE @j < 10 DO
SET @str = CONCAT("CREATE TABLE IF NOT EXISTS mango_",@i,".user_");
SET @sqlstr = CONCAT(
@str,
@j,
"(
user_id  INT(32) NOT NULL COMMENT '用户id',
name        VARCHAR(50) COMMENT '用户名',
GMT_UPDATE    TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
GMT_CREATE    TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表'"
);
prepare stmt from @sqlstr;
execute stmt;

SET @j = @j + 1;
END WHILE;
SET @i = @i + 1;
END WHILE;
END;
call create_table();
drop procedure if EXISTS create_table;
//

