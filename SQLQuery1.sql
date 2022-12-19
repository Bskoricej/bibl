--CREATE DATABASE book_reading_app;
use book_reading_app;

CREATE TABLE UsersType (
	UsersType_id int IDENTITY(1,1),
	UsersType_name varchar(255),
	PRIMARY KEY(UsersType_id)
);
CREATE TABLE WorkType (
	WorkType_id int IDENTITY(1,1),
	WorkType_name varchar(255),
	PRIMARY KEY(WorkType_id)
);
CREATE TABLE WorkStatus (
	WorkStatus_id int IDENTITY(1,1),
	WorkStatus_name varchar(255),
	PRIMARY KEY(WorkStatus_id)
);
CREATE TABLE Users (
	Users_id int IDENTITY(1,1),
	login varchar(255) Not null,
	HashPassword varchar(255) not null,
	nickname varchar(255) not null,
	UsersType_id int FOREIGN KEY REFERENCES UsersType(UsersType_id),
	PRIMARY KEY(Users_id)
);
CREATE TABLE Work (
	Work_id int IDENTITY(1,1),
	WorkTitle varchar(255) Not null,
	WorkData date not null,
	WorkFile varchar(255) not null,
	WorkStatus_id int FOREIGN KEY REFERENCES WorkStatus(WorkStatus_id),
	WorkType_id  int FOREIGN KEY REFERENCES WorkType(WorkType_id),
	PRIMARY KEY(Work_id)
);
CREATE TABLE Log (
	Log_id int IDENTITY(1,1),
	LogDate date not null,
	Work_id int FOREIGN KEY REFERENCES Work(Work_id),
	Users_id  int FOREIGN KEY REFERENCES Users(Users_id),
	PRIMARY KEY(Log_id)
);

INSERT INTO UsersType(UsersType_name) values('Пользователь');
INSERT INTO UsersType(UsersType_name) values('Автор');

INSERT INTO WorkType(WorkType_name) values('Фанфик');
INSERT INTO WorkType(WorkType_name) values('Манга');

INSERT INTO WorkStatus(WorkStatus_name) values('Выходит');
INSERT INTO WorkStatus(WorkStatus_name) values('Вышло');
INSERT INTO WorkStatus(WorkStatus_name) values('Брошено');

INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Dashatoo2023@mail.ru','Dashahome*','Doshik_18',1);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Nolickfic@gmail.com','NokickBig*1*','NolickShula',1);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('MfrkNouName@mail.ru','Mark2004','Mark',1);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Chernish@mail.ru','Black*','BadCher',1);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Angek_hmster@gmail.com','hamster1980','Angel',2);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Elizavetashuu@mail.ru','Liza203478','Naxida',2);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('belka@mail.ru','belka1234567890*','Belka',1);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Hamichok@gmail.com','hamsteri098765432114568','Ham_ster_bing',2);
INSERT INTO Users(login,HashPassword,nickname,UsersType_id) values('Anilocha1234551334@mail.ru','Anachoo1980000','ChikiChiki',2);

INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Белоснежка','2021-09-23','18+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Мой ночной сон','2016-08-18','18+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Лето в пионерском галстуке','2018-12-12','18+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('V3001TH','2020-01-01','18+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Совершеннолетие','2019-06-12','18+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Не то, что планировал','2014-02-23','16+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Святое искушение','2015-12-01','18+',2,1);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Ночные этюды','2019-04-14','18+',1,2);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Окна напротив','2016-02-12','18+',2,2);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Подозрительный клиент и работник на пол ставки','2019-05-15','18+',2,2);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Bj Алекс','2017-07-13','18+',2,2);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Внутренняя красота','2018-01-01','18+',2,2);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Клиническое испытание','2017-12-09','18+',2,2);
INSERT INTO Work(WorkTitle,WorkData,WorkFile,WorkStatus_id,WorkType_id) values('Нии-яан','2014-09-14','18+',2,2);

INSERT INTO Log(LogDate,Work_id,Users_id) values('2017-07-13',2,4);
INSERT INTO Log(LogDate,Work_id,Users_id) values('2015-05-15',4,6);
INSERT INTO Log(LogDate,Work_id,Users_id) values('2018-04-14',3,7);
INSERT INTO Log(LogDate,Work_id,Users_id) values('2019-09-19',2,4);
INSERT INTO Log(LogDate,Work_id,Users_id) values('2020-12-01',5,3);
INSERT INTO Log(LogDate,Work_id,Users_id) values('2022-11-14',4,2);
INSERT INTO Log(LogDate,Work_id,Users_id) values('2022-10-20',5,2);

UPDATE Work SET WorkStatus_id = 2
WHERE WorkStatus_id = 3;

--DELETE Users WHERE nickname = 'NolickShula';

