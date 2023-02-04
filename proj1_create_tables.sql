create table places(
ID int not null AUTO_INCREMENT,
address varchar(200),
city varchar(50),
state varchar(50),
zipcode varchar(10),
coordinates_x numeric(10,6),
coordinates_y numeric(10,6),
primary key(ID)
);

create table wonderland_individuals(
personal_id bigint NOT NULL,
first_name varchar(64) NOT NULL,
last_name varchar(64) NOT NULL,
nickname varchar(64),
number1 bigint,
number2 bigint, 
number3 bigint,
ID int,
primary key (personal_id),
foreign key (ID) references places(ID)
		on delete set null
);

create table emails(
personal_id bigint,
email varchar(50),
primary key(email),
foreign key (personal_id) references wonderland_individuals(personal_id)
		on delete cascade
);

create table voting_centers(
center_id varchar(4),
ID int,
primary key(center_id),
foreign key (ID) references places(ID)
        on delete cascade
);

create table election_staffs(
personal_id bigint,
job varchar(20),
start_datetime DATETIME,
end_datetime DATETIME,
center_id varchar(4),
primary key (personal_id),
foreign key (personal_id) references wonderland_individuals(personal_id)
		on delete cascade,
foreign key (center_id) references voting_centers(center_id)
		on delete set null
);

create table voting_center_sch(
center_id varchar(4),
sch_id varchar(2),
start_time DATETIME,
end_time DATETIME,
primary key(sch_id),
foreign key (center_id) references voting_centers(center_id)
	on delete cascade
);

create table ballots(
ballot_id varchar(4),
available_time_start DATETIME, 
available_time_end datetime,
primary key(ballot_id)
);

create table register(
personal_id bigint,
ballot_id varchar(4),
center_id varchar(4),
reg_start DATETIME,
reg_end DATETIME,
primary key(personal_id, ballot_id, center_id, reg_start, reg_end),
foreign key (personal_id) references wonderland_individuals(personal_id)
		on delete cascade,
foreign key (ballot_id) references ballots(ballot_id)
		on delete cascade,
foreign key (center_id) references voting_centers(center_id)
		on delete cascade
);

create table votes(
personal_id bigint,
ballot_id varchar(4),
center_id varchar(4),
vote_date_start DATETIME,
vote_date_end DATETIME,
vote_ans varchar(7) check (vote_ans in ('yes','no','abstain', null)),
primary key(personal_id, ballot_id),
foreign key (personal_id) references register(personal_id)
		on delete cascade,
foreign key (ballot_id) references register(ballot_id)
		on delete cascade,
foreign key (center_id) references register(center_id)
		on delete cascade
);