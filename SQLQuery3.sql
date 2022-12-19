--Вывести всех простых пользователей //1
SELECT UsersType.UsersType_name,nickname from Users
join UsersType on UsersType.UsersType_id = Users.UsersType_id
where UsersType_name = 'Пользователь'
--вывести всех авторов //2
SELECT UsersType.UsersType_name,nickname from Users
join UsersType on UsersType.UsersType_id = Users.UsersType_id
where UsersType_name = 'Автор'
--вывести все фанфики//3
select WorkType_name,WorkTitle  from WorkType
join Work on Work.WorkType_id = WorkType.WorkType_id
where WorkType_name = 'Фанфик'
--вывести все манги//4
select WorkType_name,WorkTitle  
from WorkType
join Work on Work.WorkType_id = WorkType.WorkType_id
where WorkType_name = 'Манга'
--вывести фанфики уже вышедшие//5
select WorkTitle,WorkStatus.WorkStatus_name,WorkType.WorkType_name 
from Work,WorkStatus,WorkType
where WorkType_name = 'Фанфик' 
and WorkStatus_name = 'Вышло'
--вывести проиведения 18+ //6
select WorkTitle,WorkFile from Work where WorkFile = '18+'
--Вывести всех пользователей //7
SELECT UsersType.UsersType_name,nickname from Users
join UsersType on UsersType.UsersType_id = Users.UsersType_id
--вывести все произведения //8
select WorkTitle,WorkFile from Work 
--вывести произведения 16+ //9
select WorkTitle,WorkFile from Work where WorkFile = '16+'