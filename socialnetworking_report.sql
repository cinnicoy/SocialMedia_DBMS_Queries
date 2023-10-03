create database social_networking
create table user_profile
(
	id int primary key,
	firstname varchar(20) NOT NULL,
	lastname varchar(20) not null,
	username varchar(40) not null,
	mobileno int not null,
	email varchar(50) not null,
	user_password varchar(5) default '**143',
	registered_date datetime,
	lastseen datetime,
	intro varchar(50)
);
alter table user_profile add u_profile varchar(1000)
insert into user_profile values(101,'sivram','deepak','sivram_deepak',9398,'deepak@gmail.com',13422,'2020-12-12','2022-7-24 23:11:15','text olny','age:19,qualification:b.tech');
insert into user_profile values(102,'sakethram','koushik','sakethram_koushik',9859,'saketh@gmail.com',98591,'2020-5-22','2022-7-24 23:11:15','text olny','age:19,qualification:b.tech');
insert into user_profile values(103,'uday','kiran','uday_kiran',9750,'uday@gmail.com',12345,'2020-7-31','2022-7-25 06:11:15','sleeping','age:19,qualification:b.tech');
insert into user_profile values(104,'volluboina','varshith','varshith_volluboina',9944,'varshith@gmail.com',13456,'2020-06-11','2022-7-25 09:7:35','hacker','age:20,qualification:b.tech');
insert into user_profile values(105,'yerukola','yaswanth','yerukola_yaswanth',6302,'yaswanth@gmail.com',54321,'2020-7-7','2022-7-24 20:50:44','keep calm','age:20,qualification:b.tech');
insert into user_profile values(106,'kinjarapu','sairam','sairam_kinjarapu',9459,'sairam@gmail.com',83753,'2020-5-10','2022-7-24 04:21:02','love cricket','age:19,qualification:b.tech');
insert into user_profile values(107,'sairam','roopak','sairam_roopak',6301,'roopak@gmail.com',12522,'2020-12-12','2022-7-21 2:25:59','freefire','age:19,qualification:b.tech');
insert into user_profile values(108,'baradwaj','devarakonda','bharadwaj',9865,'baradwaj@gmail.com',10092,'2020-12-10','2022-7-23 2:54:55','coding','age:19,qualification:b.tech');
insert into user_profile values(109,'nirmal','prem','nirmal_prem',9208,'nirmal@gmail.com',98772,'2020-7-10','2022-7-24 11:11:11','singer','age:20,qualification:b.tech');
insert into user_profile values(110,'sundeep','dadireddy','dadireddy_sundeep',7702,'sundeep@gmail.com',53102,'2020-10-17','2022-7-24 09:20:54','explorer','age:20,qualification:b.tech');
select * from user_profile
create table user_post
(
senderid int foreign key references user_profile(id) not null,
postid int primary key not null,
user_message varchar(1000),
created_at datetime not null,
updated_at datetime default 'null');
insert into user_post values(101,201,'hai friends we hit 3M subs','2022-07-28 01:10:57',null);
insert into user_post values(102,202,'hai subbros my channel hacked','2022-6-8 10:56:11',null);
insert into user_post values(103,203,'ever tried ever failed......','2022-05-31 23:10:22',null);
insert into user_post values(102,204,'i got my channel back guys thnx for your support','2022-6-12 12:03:59','2022-06-13');
insert into user_post values(104,205,'solo vs squad','2022-7-27 2:34:59','2022-7-28');
insert into user_post values(105,206,'power star pavan kalyan','2022-07-05 23:10:57',null);
insert into user_post values(107,207,'pros and cons of AI','2022-5-23 2:44:09','2022-6-11');
insert into user_post values(106,208,'Importance of business systems','2022-4-9 9:34:59',null);
insert into user_post values(107,209,'java language tutorial','2022-7-7 08:39:04',null);
insert into user_post values(109,210,'join DSA matser class','2022-6-8',null);

create table user_friend(
id int not null primary key,
sourceid int not null foreign key references user_profile(id),
target_id int not null foreign key references user_profile(id),
target_status varchar(10) check(target_status='new'or target_status='active' or target_status='rejected'),
request_date datetime,
updated_date datetime,
);
select * from user_friend
insert into user_friend values(301,101,107,'active','2021-12-12',null);
insert into user_friend values(302,101,102,'new','2022-02-12',null);
insert into user_friend values(303,101,106,'active','2021-07-07',null);
insert into user_friend values(304,101,105,'active','2021-07-07',null);
insert into user_friend values(305,107,109,'active','2021-12-12',null);
insert into user_friend values(306,108,101,'new','2021-04-03',null);
insert into user_friend values(308,106,105,'active','2021-9-8',null);
insert into user_friend values(307,109,110,'rejected','2021-8-8',null);
insert into user_friend values(309,110,102,'active','2021-6-06',null);
insert into user_friend values(310,103,107,'rejected','2021-09-8',null);
drop table user_friend
create table user_follower
(
id int not null primary key,
source_id int not null foreign key references user_profile(id),
target_id int not null foreign key references user_profile(id),
followed_date datetime not null,
updated_date datetime
);
insert into user_follower values(401,107,101,'2021-12-12',null);
insert into user_follower values(402,106,107,'2021-7-7',null);
insert into user_follower values(403,103,102,'2021-6-6',null);
insert into user_follower values(404,102,104,'2021-4-9',null);
insert into user_follower values(405,110,101,'2021-09-8',null);
insert into user_follower values(407,102,101,'2021-12-8',null);
insert into user_follower values(406,103,101,'2021-12-1',null);
insert into user_follower values(408,104,101,'2021-1-3',null);
insert into user_follower values(409,105,101,'2021-2-4',null);
insert into user_follower values(410,106,101,'2021-9-6',null);
insert into user_follower values(411,102,107,'2021-12-6',null);
insert into user_follower values(412,103,107,'2021-3-9',null);
insert into user_follower values(413,104,107,'2021-2-3',null);
insert into user_follower values(414,105,107,'2021-9-3',null);
insert into user_follower values(415,101,107,'2021-5-2',null);
select * from user_follower
create table user_message(
id int not null primary key,
source_id int not null foreign key references user_profile(id),
target_id int not null foreign key references user_profile(id),
msg varchar(1000),
created_date datetime not null,
updated_date datetime);
insert into user_message values(501,101,107,'hii how r u','2022-12-12 08:30:00','2022-12-13 02:30:00');
insert into user_message values(502,107,101,'Iam fine how r you','2022-12-12 08:30:59',null);
insert into user_message values(503,103,101,'have you completed your dbms report','2022-7-29 9:07:47',null);
insert into user_message values(504,101,103,'Iam still working on it','2022-7-29 9:07:47',null);
insert into user_message values(505,101,106,'sai have you got google internship mail','2022-7-28','2022-7-29');
insert into user_message values(506,106,101,'yes I got it what about you','2022-7-28 09:32:01',null);
insert into user_message values(507,101,106,'yes i too got it what are the further steps to proceed','2022-7-28 09:32:34',null);
insert into user_message values(508,103,104,'what about your new entrepreneur idea','2022-7-20 08:30:00',null);
insert into user_message values(509,105,107,'Is your dbms report name ecommerce website?','2022-7-19 05:30:00',null);
insert into user_message values(510,108,102,'Are you going to home town today','2022-7-29 08:30:00',null);
insert into user_message values(511,109,104,'Today there is no class for us.An event will be coducted','2022-7-29 08:30:00',null);
insert into user_message values(512,106,107,'There is a flipkart grid 4.0 exam today','2022-6-30 4:37:00',null);
insert into user_message values(513,110,101,'Can you please send me dbms assignment','2022-7-21 04:02:45',null);
insert into user_message values(514,101,106,'Are you going to pariticpate tomorrows coding test','2022-5-23 3:6:43',null);
insert into user_message values(515,104,102,'How much money you gain by doing crypto mining','2022-7-11 7:08:32','2022-7-12');

select * from user_message
create table group_info(
id int  primary key,
created_by int not null foreign key references user_profile(id),
updated_by int not null foreign key references user_profile(id),
title varchar(25) not null,
summary varchar(200) not null,
group_status varchar(20) check(group_status='new'or group_status='active'or group_status='blocked'),
created_date datetime not null,
updated_date datetime);
insert into group_info values(601,101,107,'thunder buddies','where good friends are made','active','2021-12-12 03:46:00','2022-3-21');
insert into group_info values(602,102,null,'mining school','Learn how to earn crypto','new','2022-6-4 12:12:00',null);
insert into group_info values(603,103,null,'full stack internship','let us learn something new ','new','2021-2-28 09:08:40',null);
insert into group_info values(604,104,101,'dbms project','let us make it useful for future purpose','new','2022-7-16 06:30:00','2022-7-22');
insert into group_info values(605,105,null,'csbs boys',' where creative minds are present ','active','2021-1-18 09:8:10',null);
insert into group_info values(606,106,105,'coding creapers','where coders are made','new','2022-6-9 09:50:00','2022-7-1');
insert into group_info values(607,107,null,'csse-A','be practical','active','2021-1-28 09:20:10',null);
insert into group_info values(608,108,101,'eee','electrical','blocked','2021-1-28 03:46:00','2022-3-25');
insert into group_info values(609,109,null,'eie','instrumentational engineering','blocked','2021-3-1 06:4:00',null);
insert into group_info values(610,110,null,'cr_announcements','offical info','new','2021-5-31 07:45:00',null);
select * from group_info
create table group_follower(
id int not null primary key,
group_id int not null foreign key references group_info(id),
userid int not null foreign key references user_profile(id),
created_date datetime not null,
updated_date datetime);
insert into group_follower values(701,601,107,'2021-12-12');
insert into group_follower values(702,601,109,'2021-12-12');
insert into group_follower values(703,601,101,'2021-12-12');
insert into group_follower values(704,602,101,'2022-6-4');
insert into group_follower values(705,602,102,'2022-6-4');
insert into group_follower values(706,602,103,'2022-6-4');
insert into group_follower values(707,602,104,'2022-6-4');
insert into group_follower values(708,603,101,'2021-2-28');
insert into group_follower values(709,603,102,'2021-2-28');
insert into group_follower values(710,603,103,'2022-2-28');
insert into group_follower values(711,603,104,'2022-2-28',null);
insert into group_follower values(712,603,107,'2021-2-28',null);
insert into group_follower values(713,604,104,'2022-7-16',null);
insert into group_follower values(714,604,101,'2022-7-16',null);
insert into group_follower values(715,605,105,'2021-1-18',null);
insert into group_follower values(716,606,106,'2022-6-9',null);
insert into group_follower values(717,607,107,'2021-1-28',null);
insert into group_follower values(718,608,105,'2021-1-18',null);
insert into group_follower values(719,608,101,'2021-1-18',null);
insert into group_follower values(720,609,109,'2021-3-1',null);
insert into group_follower values(721,610,110,'2021-5-31',null);
delete from group_follower where id =710
select * from group_follower
create table group_msg(
id int primary key not null,
group_id int foreign key references group_info(id),
userid int foreign key references user_profile(id),
msg varchar(1000),
created_date datetime not null,
updated_date datetime);
insert into group_msg values(801,601,101,'hii guys lets play cricket','2022-7-29 5:30:00',null);
insert into group_msg values(802,602,102,'new air drop is launched grab the opportunity fast','2022-7-27 5:30:00',null);
insert into group_msg values(803,603,103,'fill the attendence form as soos as possible','2022-7-30 9:00:00',null);
insert into group_msg values(804,604,104,'let us finish dbms project quickly','2022-7-30 7:14:00',null);
insert into group_msg values(805,605,105,'we have an event on next monday','2022-7-26 9:43:00',null);
insert into group_msg values(806,606,106,'pls join the new group named coders','2022-7-25',null);
insert into group_msg values(807,607,107,'exam dates are released','2022-7-30','2022-7-31');
insert into group_msg values(808,608,108,'new time table launched','2022-7-26','2022-7-30');
insert into group_msg values(809,609,109,'new event started','2022-7-24','2022-7-28');
insert into group_msg values(810,610,110,'all the best for future exams','2022-7-31',null);
select * from group_msg
create table group_post(id int not null primary key,
group_id int foreign key references group_info(id),
userid int foreign key references user_profile(id),
msg varchar(1000),
created_date datetime not null,
updated_date datetime);
insert into group_post values(901,601,101,'cricket tournament','2022-7-30',null);
insert into group_post values(902,602,102,'lunar crush','2022-7-20','2022-7-20');
insert into group_post values(903,603,107,'microsoft internship program','2022-7-25','2022-7-26');
insert into group_post values(904,604,101,'new queries','2022-7-28',null);
insert into group_post values(905,605,105,'college anniversary','2022-7-19','2022-7-20');
insert into group_post values(906,601,102,'new coding comepetition','2022-7-23','2022-7-24');
insert into group_post values(907,606,106,'attend coding creapers event on next thursady','2022-7-28',null);
insert into group_post values(908,607,107,'dbms report pdf','2022-7-27',null);
insert into group_post values(909,609,109,'nss event on saturday','2022-7-29',null);
insert into group_post values(910,610,110,'pat classes','2022-7-30','2022-7-31');
select * from group_post
--Q1.Drop the column updated_date in the table group_follower.
alter table group_follower 
drop column updated_date
--Q2.Find the names of users who follows the group thunder buddies.
select u.username from user_profile u,group_info g,group_follower gf
where u.id=gf.userid and gf.group_id=g.id and g.id=601
--Q3.Select distinct usersid in user profile table.
select count(distinct id)
from user_profile
--Q4.Find the user id who has more than 1 friend.
select sourceid,count(sourceid) as count_ 
from user_friend group by sourceid 
having count(sourceid)>1
--Q5.Find the name of the users along with its date who posted the latest content.
select u.username,up.created_at from user_profile u,user_post up
where u.id=up.senderid order by up.created_at desc; 
--Q6.Find the names of users who have active friendship with other user.
select u.username,up.target_status,u1.username from user_profile u,user_profile u1,user_friend up
where u.id=up.sourceid and up.target_status='active' and u1.id=up.target_id
--Q7.update the updated_date in user message table where id=502
update user_message  
set updated_date= '2022-12-13 8:30:23' 
where id =502;
--Q8.Find the count of friends for each user
create view friend_list as
select sourceid,count(sourceid) as count_ 
from user_friend group by sourceid

select u.username,f.count_ from user_profile u,friend_list f
where u.id=f.sourceid
--Q9.Find the total convesations in a social networking database
select count(um.source_id)+count(gm.userid) as count_of_messages from user_message um,user_profile u,group_msg gm where
um.source_id= u.id and u.id=gm.userid and u.id=101
--Q10.Find the names of followers of a particular user
select u.username from user_profile u,user_follower uf
where uf.source_id=u.id and uf.target_id=101
--Q11.Find names of persons who are in more than one group 
select u.username as names from user_profile u,group_follower gf,group_info gi
where u.id=gf.userid and gf.group_id=gi.id group by u.username 
having count(u.id)>1 order by count(u.id) desc
--Q12.Find the names and id of users whose name start with 'S;'
select id,username from user_profile
where username like 'S%'
--Q13. Find the id and email of user whose names contains 'th' letter at any position
select id,email from user_profile
where username like '%th%'
--Q14.Find the post of the user 'sairam_roopak
select up.user_message from user_post up,user_profile u
where up.senderid=u.id and u.username='sairam_roopak'
--Q14.Name the users and emailids who messaged to userid 101
select u.username,u.email from user_profile u,user_message um
where u.id=um.source_id and um.target_id=101
--Q15.find the name and followed date of a user who follow sairam roopak
select u.username,uf.followed_date from user_profile u,user_follower uf
where u.id=uf.source_id and uf.target_id=107
--Q16 Find the group names and their creators
select g.title,u.username from user_profile u, group_info g
where g.created_by=u.id
--Q17.Find the noof followers in each group
select g.title,count(gf.userid) as noof_followers from group_follower gf,group_info g
where g.id=gf.group_id group by g.title order by count(gf.userid) asc
--Q18.Find the name and id of users who follows the mining school or full stack internship
select u.username,u.id from user_profile u, group_follower gf,group_info g
where gf.group_id=g.id and gf.userid=u.id and g.title='mining school'
union
select u.username,u.id from user_profile u, group_follower gf,group_info g
where gf.group_id=g.id and gf.userid=u.id and g.title='full stack internship'
--Q19.Create a view and print group id and its corresponding followers 
create view noof_followers as
select group_id,count(userid) as noof_grp_followers from group_follower
group by group_id 
select * from noof_followers order by noof_grp_followers desc
--Q20.Find the groupnames,groupid,creator name that start with c
select gi.title ,gi.id ,u.username from group_info gi, user_profile u 
where gi.title like 'c%' and u.id=gi.created_by;
--Q21.Find the post and username that was posted in group id 601 
select gp.msg,u.username from group_post gp,user_profile u
where gp.group_id=601 and u.id=gp.userid
--Q22.Update the updated_date in group_msg table at id 802
update group_msg
set updated_date='2022-7-28 8:30:20' where id=802;
--Q23.Find the id of a group which contains second highest followers.
create view noof_followers as
select group_id,count(userid) as noof_grp_followers from group_follower
group by group_id 
select * from noof_followers order by noof_grp_followers desc
select group_id from noof_followers
where noof_grp_followers in(select min(noof_grp_followers) from noof_followers
					where noof_grp_followers in(select top 2 noof_grp_followers from noof_followers order by noof_grp_followers desc))
--Q24.Create a view to find the count of followers and their mobile numbers
create view max_followers as
select target_id,count(target_id) as followers from user_follower
group by target_id
select u.mobileno from max_followers mf,user_profile u
where u.id=mf.target_id
--Q25.Find the user name who follow both the groups dbms project and mining school
select u.username from user_profile u,group_follower gf,group_info gi
where u.id=gf.userid and gf.group_id=gi.id and gi.title='dbms project'
intersect
select u.username from user_profile u,group_follower gf,group_info gi
where u.id=gf.userid and gf.group_id=gi.id and gi.title='mining school'
--Q26 Find the average of users that are present full stack group
select avg(noof_grp_followers) from noof_followers where group_id=603
--Q27.Find the user name and group msg of user whose id =106
select u.username,gm.msg from user_profile u,group_msg gm
where u.id=106 and u.id=gm.userid
--Q28.Find the messages of users who messaged to 107 
select um.msg from user_profile u,user_message um
where u.id=um.target_id and u.id=107
--Q29.Find the names and message of users who messaged at the date 2022-7-29 9:07:47
select u.username,um.msg from user_profile u,user_message um
where u.id=um.source_id and um.created_date='2022-7-29 9:07:47'
--Q30.Name the users and theri corresponding followed groups on the date 2021-2-28
select u.username,gi.title from user_profile u,group_info gi,group_follower gf
where u.id=gf.userid and gi.id=gf.group_id and gf.created_date='2021-2-28'