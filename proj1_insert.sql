delete from wonderland_individuals; --
delete from election_staffs; --
delete from places;--
delete from voting_centers;--
delete from voting_center_sch;--
delete from votes;
delete from ballots;--
delete from register;
delete from emails;--
--
insert into places values(1,'123 Thissucks Rd.', 'Gaithersburg', 'MD', '20878',26.07822,79.12280);
insert into places values(2,'123 Bigroad', 'Drivemedia', 'PA', '19063', -12.52580,-109.51584);
insert into places values(3,'59 Creek St.', 'Chesapeake', 'VA','23320',125.79071,-26.17575);
insert into places values(4,'503 York St.', 'Dickson', 'MD', '37055',-24.08323,51.96350);
insert into places values(5,'639 Bradford St.' ,'Sterling', 'VA' ,'20164',26.41322,-1.62394);
insert into places values(6,'869 Hickory Drive', 'Indiana', 'PA', '15701',1,3);
insert into places values(7, "04914 Canopy Drive", "Megapolis", "CA",'51611', 2, 3);
--
insert into wonderland_individuals values(6102328340731590, 'Jenpey', 'Chao', 'Aaron', 3496757617,3549048285,1647246653, 1);
insert into wonderland_individuals values(5976078397222749, 'Joe','Mama', 'Biden',9882771742,2080581775,3797867671, 2);
insert into wonderland_individuals values(1220322948401613, 'Osman', 'Sloan','Assman',1257431569,1829154391,1876736507, 1);
insert into wonderland_individuals values(4406421477767992, 'Olivia-Mae', 'Parra', 'Bob',0169574243,7868698595,8586086610, 3);
insert into wonderland_individuals values(9849179499422902,'Pedro', 'Keeling', 'Pedo',1992663441,0179282945,8040142799,3);
insert into wonderland_individuals values(6775997401122991, 'Marcel', 'Mustafa', 'Mackerel',9641399496,3606684356,0391339327,1);
insert into wonderland_individuals values(6822368157444909, 'Griffin','Oneil','Shaquille O Neal',6185445623,6269467007,8697033745,1);
insert into wonderland_individuals values(7876240965035271, 'Lawrence', 'Ponce', 'DeezNuts',7867112998,4540080026,9342891088,1);
insert into wonderland_individuals values(6672629547338974,'Charles', 'Humphries', 'Humpy',4966739772,4153233960,2980500482,3);
insert into wonderland_individuals values(7061373103618870, 'Vivian', 'Person', 'People',6217280764,3586275694,9047442469,3);
insert into wonderland_individuals values(4684464436675750,'Bethan', 'Chadwick','Chad','6335125125',0437888164,8841753409,1);
insert into wonderland_individuals values(9638853882002089,'Lilly-Mae', 'Knott', 'Not',4026622898,4585687216,6520692477,1);
--
insert into emails values(6102328340731590, 'Jenpey@gmail.com');
insert into emails values(6102328340731590, 'Jenpey@hotmail.com');
insert into emails values(5976078397222749, 'Biden@gmail.com');
insert into emails values(5976078397222749, 'JoeMama@gmail.com');
insert into emails values(1220322948401613, 'Assman@gmail.com');
insert into emails values(4406421477767992, 'Olivia-Mae@gmail.com');
insert into emails values(9849179499422902, 'Pedro@gmail.com');
insert into emails values(6775997401122991, 'Mackerel@gmail.com');
insert into emails values(6822368157444909, 'Shaquille_O_Neal@gmail.com');
insert into emails values(6822368157444909, 'Oneil@gmail.com');
insert into emails values(7876240965035271, 'Deeznuts@gmail.com');
insert into emails values(7876240965035271, 'Lawrence@gmail.com');
insert into emails values(6672629547338974, 'Humpy@gmail.com');
insert into emails values(6672629547338974, 'Humpy@hotmail.com');
insert into emails values(7061373103618870, 'people@gmail.com');
insert into emails values(4684464436675750, 'Chadwick@gmail.com');
insert into emails values(4684464436675750, 'Chad@gmail.com');
insert into emails values(9638853882002089, 'Not@gmail.com');
--
insert into voting_centers values ('L7H0',4);
insert into voting_centers values ('SWB4',5);
insert into voting_centers values ('CVW5',6);
-- (center_id, sch_id, start date, end date)
insert into voting_center_sch values ('L7H0','A1','2023-03-01 07:00:00','2023-03-08 22:00:00');
insert into voting_center_sch values ('L7H0','A2','2023-03-08 07:00:00','2023-03-15 22:00:00');
insert into voting_center_sch values ('L7H0','A3','2023-03-15 07:00:00','2023-03-22 22:00:00');
insert into voting_center_sch values ('L7H0','A4','2023-03-22 07:00:00','2023-03-29 22:00:00');
insert into voting_center_sch values ('SWB4','B1','2023-03-01 07:00:00','2023-03-08 22:00:00');
insert into voting_center_sch values ('SWB4','B2','2023-03-08 07:00:00','2023-03-15 22:00:00');
insert into voting_center_sch values ('SWB4','B3','2023-03-15 07:00:00','2023-03-22 22:00:00');
insert into voting_center_sch values ('SWB4','B4','2023-03-22 07:00:00','2023-03-29 22:00:00');
insert into voting_center_sch values ('CVW5','C1','2023-04-01 07:00:00','2023-04-08 22:00:00');
insert into voting_center_sch values ('CVW5','C2','2023-04-08 07:00:00','2023-04-15 22:00:00');
insert into voting_center_sch values ('CVW5','C3','2023-04-15 07:00:00','2023-04-22 22:00:00');
insert into voting_center_sch values ('CVW5','C4','2023-04-22 07:00:00','2023-04-29 22:00:00');
-- (personal_id, job, start_datetime, end_datetime, center_id)
insert into election_staffs values(7876240965035271,'administrator','2023-3-25 12:00:00','2022-03-30 12:00:00','L7H0');
insert into election_staffs values(4684464436675750,'monitor','2023-03-09 09:36:00', '2023-03-19 10:46','L7H0');
insert into election_staffs values(6672629547338974,'judge','2023-03-08 11:00:01','2023-03-22 22:22:22' ,'SWB4');
insert into election_staffs values(6822368157444909,'administrator','2023-03-25 12:00:00','2022-03-30 12:00:00','SWB4');
insert into election_staffs values(9638853882002089,'clerk', '2023-03-15 10:00:00', '2023-03-25 00:00:00','CVW5');
insert into election_staffs values(5976078397222749,'administrator','2023-03-25 12:00:00','2022-03-30 12:00:00','CVW5');
--
insert into ballots values('V9P4','2023-03-01 00:00:00','2023-03-08 22:00:00');-- voting center SWB4 or L7H0
insert into ballots values('I9EV','2023-04-01 00:00:00','2023-04-15 22:00:00');-- voting center CVW5
insert into ballots values('Y0DJ','2023-03-15 00:00:00','2023-03-22 22:00:00');
insert into ballots values('UV78','2023-03-22 00:00:00','2023-03-29 22:00:00');--
-- add voting_centers: center_ID? instead of reg_id
insert into register values(6102328340731590,'V9P4','L7H0','2023-03-01 10:00:00', '2023-03-01 10:30:00');
insert into register values(6102328340731590,'I9EV','CVW5','2023-04-01 14:00:00','2023-04-01 14:50:00');
insert into register values(5976078397222749,'V9P4','SWB4','2023-03-01 10:00:00','2023-03-01 11:00:00');
insert into register values(5976078397222749,'UV78','L7H0','2023-03-23 09:00:00', '2023-03-23 09:45:00');
insert into register values(1220322948401613,'V9P4','L7H0','2023-03-01 10:25:00','2023-03-01 11:10:00');
insert into register values(1220322948401613,'I9EV','CVW5','2023-04-08 14:00:00','2023-04-08 14:50:00');
insert into register values(4406421477767992,'V9P4','L7H0','2023-03-07 10:10:00','2023-03-07 10:40:00');
insert into register values(4406421477767992,'UV78','SWB4','2023-03-22 10:00:00','2023-03-22 10:44:00');
insert into register values(9849179499422902,'V9P4','L7H0','2023-03-01 10:00:00','2023-03-01 10:20:00');
insert into register values(9849179499422902,'I9EV','CVW5','2023-04-01 10:00:00','2023-04-01 10:34:00');
insert into register values(6775997401122991,'V9P4','SWB4','2023-03-05 10:00:00','2023-03-05 10:24:00');
insert into register values(6775997401122991,'UV78','L7H0','2023-03-24 10:00:00','2023-03-24 10:24:00');
insert into register values(6822368157444909,'V9P4','SWB4','2023-03-03 13:00:00','2023-03-03 13:45:00');
insert into register values(6822368157444909,'I9EV','CVW5','2023-04-03 14:00:00','2023-04-03 14:37:00');
insert into register values(7876240965035271,'V9P4','SWB4','2023-03-01 10:00:00','2023-03-01 10:51:00');
insert into register values(7876240965035271,'UV78','SWB4','2023-03-25 16:00:00','2023-03-25 16:52:00');
insert into register values(6672629547338974,'V9P4','SWB4','2023-03-07 10:00:00','2023-03-07 10:41:00');
insert into register values(6672629547338974,'I9EV','CVW5','2023-04-15 11:00:00','2023-04-15 11:30:00');
insert into register values(7061373103618870,'V9P4','SWB4','2023-03-01 10:00:00','2023-03-01 10:33:00');
insert into register values(7061373103618870,'UV78','L7H0','2023-03-25 15:00:00','2023-03-25 15:44:00');
insert into register values(4684464436675750,'V9P4','L7H0','2023-03-02 10:00:00','2023-03-02 10:40:00');
insert into register values(4684464436675750,'I9EV','CVW5','2023-04-014 15:00:00','2023-04-14 15:49:00');
insert into register values(9638853882002089,'V9P4','SWB4','2023-03-01 10:00:00','2023-03-01 10:34:00');
insert into register values(9638853882002089,'UV78','L7H0','2023-03-26 07:30:00','2023-03-26 8:00:00');
--
insert into votes values(6102328340731590,'V9P4','L7H0','2023-03-01 10:01:00', '2023-03-01 10:29:00','yes');
insert into votes values(6102328340731590,'I9EV','CVW5','2023-04-01 14:05:00','2023-04-01 14:45:00','no');
insert into votes values(5976078397222749,'V9P4','SWB4','2023-03-01 10:06:00','2023-03-01 10:55:00','yes');
insert into votes values(1220322948401613,'V9P4','L7H0','2023-03-01 10:27:00','2023-03-01 11:05:00','abstain');
insert into votes values(1220322948401613,'I9EV','CVW5','2023-04-08 14:01:00','2023-04-08 14:30:00',null);
insert into votes values(4406421477767992,'V9P4','L7H0','2023-03-07 10:19:00','2023-03-07 10:39:20','yes');
insert into votes values(9849179499422902,'V9P4','L7H0','2023-03-01 10:00:20','2023-03-01 10:19:05','no');
insert into votes values(9849179499422902,'I9EV','CVW5','2023-04-01 10:03:00','2023-04-01 10:32:00','no');
insert into votes values(6775997401122991,'V9P4','SWB4','2023-03-05 10:01:00','2023-03-05 10:21:00','yes');
insert into votes values(6822368157444909,'V9P4','SWB4','2023-03-03 13:04:00','2023-03-03 13:42:00','yes');
insert into votes values(6822368157444909,'I9EV','CVW5','2023-04-03 14:02:00','2023-04-03 14:31:00','yes'); 
insert into votes values(7876240965035271,'V9P4','SWB4','2023-03-01 10:01:00','2023-03-01 10:43:00','abstain');
insert into votes values(6672629547338974,'V9P4','SWB4','2023-03-07 10:05:00','2023-03-07 10:39:00','yes');
insert into votes values(6672629547338974,'I9EV','CVW5','2023-04-15 11:06:00','2023-04-15 11:20:00','yes');
insert into votes values(7061373103618870,'V9P4','SWB4','2023-03-01 10:08:00','2023-03-01 10:30:00','no');
insert into votes values(4684464436675750,'V9P4','L7H0','2023-03-02 10:09:00','2023-03-02 10:32:00','abstain');
insert into votes values(4684464436675750,'I9EV','CVW5','2023-04-014 15:01:00','2023-04-14 15:43:00','yes');
insert into votes values(9638853882002089,'V9P4','SWB4','2023-03-01 10:03:00','2023-03-01 10:30:00','yes');
--