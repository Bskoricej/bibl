--������� ���� ������� ������������� //1
SELECT UsersType.UsersType_name,nickname from Users
join UsersType on UsersType.UsersType_id = Users.UsersType_id
where UsersType_name = '������������'
--������� ���� ������� //2
SELECT UsersType.UsersType_name,nickname from Users
join UsersType on UsersType.UsersType_id = Users.UsersType_id
where UsersType_name = '�����'
--������� ��� �������//3
select WorkType_name,WorkTitle  from WorkType
join Work on Work.WorkType_id = WorkType.WorkType_id
where WorkType_name = '������'
--������� ��� �����//4
select WorkType_name,WorkTitle  
from WorkType
join Work on Work.WorkType_id = WorkType.WorkType_id
where WorkType_name = '�����'
--������� ������� ��� ��������//5
select WorkTitle,WorkStatus.WorkStatus_name,WorkType.WorkType_name 
from Work,WorkStatus,WorkType
where WorkType_name = '������' 
and WorkStatus_name = '�����'
--������� ����������� 18+ //6
select WorkTitle,WorkFile from Work where WorkFile = '18+'
--������� ���� ������������� //7
SELECT UsersType.UsersType_name,nickname from Users
join UsersType on UsersType.UsersType_id = Users.UsersType_id
--������� ��� ������������ //8
select WorkTitle,WorkFile from Work 
--������� ������������ 16+ //9
select WorkTitle,WorkFile from Work where WorkFile = '16+'