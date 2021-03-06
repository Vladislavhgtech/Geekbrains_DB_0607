﻿update catalogs set name = 'empty' where name is null;

Вопрос: Помните, что на уроке мы установили уникальность на поле name. 
Возможно ли оставить это условие? Почему?

Ответ: уникальность уже соблюдается полем id следовательно уникальность на поле name имеет значение только в случае повторяющихся имен, таким образом мы будем соблюдать нормализацию в нашей таблице.
В текущей реализации уникальность стоит оставить.



INSERT INTO  sample.cat(id,name) 
SELECT id, name
FROM sample.catalogs
ON DUPLICATE KEY update sample.cat.id=sample.catalogs.id
;