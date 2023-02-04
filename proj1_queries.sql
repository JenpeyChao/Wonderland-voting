USE elections;
show tables;

-- #1
select first_name, city,email
	from places NATURAL INNER JOIN wonderland_individuals natural inner join emails

    group by first_name;

-- #2
select city, state, count(wonderland_individuals.personal_id) as individuals 
FROM places NATURAL JOIN wonderland_individuals 
group by city  
order by individuals desc;

-- #3
with inhabited_places as(
select state, COUNT(distinct places.address , places.id = wonderland_individuals.id ) as inhabited_places, places.ID
	from places natural left join wonderland_individuals 
    where places.ID not in (select places.ID 
								from places natural left join voting_centers
								where places.ID = voting_centers.ID
                                group by voting_centers.ID
                                ) 
	group by places.id
    order by state)
select distinct inhabited_places.state, sum(inhabited_places.inhabited_places) as inhabited
from inhabited_places
group by inhabited_places.state
;

-- #4 
select personal_id, first_name
from register natural join wonderland_individuals
where center_id = 'L7H0' and reg_start > '2023-03-01 07:00:00' and reg_end < '2023-03-08 22:00:00';
                                
-- #5                       
select voting_centers.center_id, count(*) as registrations
	from places natural left join voting_centers natural left join register 
    where places.ID in (select places.ID 
							from places natural left join voting_centers
							where places.ID = voting_centers.ID and voting_centers.center_id not in ('L7H0')
							group by voting_centers.ID
							) 
				 	and SQRT( POW(coordinates_y-0, 2) + POW(coordinates_x-0, 2) ) <= 5  
					and reg_start > '2023-04-01 00:00:00' and reg_end < '2023-05-01 00:00:00' 
					and register.center_id = voting_centers.center_id
	group by voting_centers.center_id
    ;

-- #6
select city, state, count(personal_id) as registrations, voting_centers.center_id
	from places natural left join voting_centers natural join register
     where city = 'Dickson' and reg_start > '2023-03-01 07:00:00' and reg_end < '2023-03-08 22:00:00'
    group by center_id;

 -- #7   
select personal_id, state, center_id
	from places natural join voting_centers natural join register
	where places.ID in (select places.ID 
							from places natural left join voting_centers
							where places.ID = voting_centers.ID and state = 'VA'
							group by voting_centers.ID
							) 
    group by personal_id
	having count(distinct places.id = voting_centers.id) = count(distinct voting_centers.center_id = register.center_id)
  ;
  
  -- #8
with voting_center as(
select coordinates_x as coord_x, coordinates_y as coord_y, center_id
	from places natural left join voting_centers 
    where places.ID in (select places.id
								from places natural left join voting_centers
								where places.ID = voting_centers.ID)
	
    )
,registered as ( 
	select coordinates_x, coordinates_y, personal_id, center_id, first_name
		from register natural join wonderland_individuals natural join places
		where wonderland_individuals.ID in (select wonderland_individuals.id
								from register natural left join wonderland_individuals
								where  register.personal_id = wonderland_individuals.personal_id)
                                
)
,distance as(
select  first_name, center_id, max(SQRT( POW(abs(registered.coordinates_y-voting_center.coord_y), 2) + POW(abs(registered.coordinates_x-voting_center.coord_x), 2) )) as distances
from registered natural left join voting_center
group by first_name, center_id
order by distances desc, center_id asc
)
select first_name, center_id, distances
from distance
where distances in (select max(distances)
					from distance
                    group by first_name
                    )
			group by first_name
;
#9

-- DROP FUNCTION IF EXISTS get_closest_voting_center;
DELIMITER //
CREATE FUNCTION get_closest_voting_center( folk_id INT, date DATETIME) 
RETURNS VARCHAR(255)
CONTAINS SQL 
READS SQL DATA
BEGIN 
	DECLARE center VARCHAR(255) default null;
	SELECT vointg_centers.center_id
    INTO center_id
	FROM voting_centers as vc
  INNER JOIN wodnerland_individuals as r ON (3956 * 
  ACOS(COS(RADIANS(r.latitude)) * COS(RADIANS(vc.latitude)) * 
  COS(RADIANS(vc.longitude) - RADIANS(r.longitude)) + 
  SIN(RADIANS(r.latitude)) * SIN(RADIANS(vc.latitude)))) AS distance
  WHERE r.folk_id = folk_id AND date BETWEEN vc.start_date AND vc.end_date;
  ORDER BY distance ASC, acronym ASC
  LIMIT 1;
  RETURN center_id;
  END
DELIMITER;

-- #10
SELECT votes.center_id,
       SUM(CASE WHEN vote_ans = 'yes' THEN 1 ELSE 0 END) AS 'yes',
       SUM(CASE WHEN vote_ans = 'no' THEN 1 ELSE 0 END) AS 'no',
       SUM(CASE WHEN vote_ans = 'abstain' THEN 1 ELSE 0 END) AS 'abstain'
FROM votes 
INNER JOIN voting_centers ON votes.center_id = voting_centers.center_id
where ballot = 'V9P4'
GROUP BY center_id
