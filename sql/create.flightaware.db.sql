drop schema flight_aware cascade;
create schema flight_aware;

create table if not exists flight_aware.flights (
       faFlightID character varying primary key,
       tailnumber character varying not null,
       blocked boolean not null,
       diverted boolean not null,
       cancelled boolean not null,
       origin_code character varying not null,
       origin_city character varying,
       destination_code character varying not null,
       destination_city character varying,
       filed_ete integer,
       route character varying,
       filed_altitude character varying,
       filed_airspeed_kts integer default null,
       distance_filed integer,
       filed_departure_time timestamp with time zone,
       estimated_departure_time timestamp with time zone,
       actual_departure_time timestamp with time zone,
       filed_arrival_time timestamp with time zone,
       estimated_arrival_time timestamp with time zone,
       actual_arrival_time timestamp with time zone,
       status character varying,
       progress_percent integer,
       inbound_faFlightID character varying,
       adhoc boolean
);


create view flight_aware.member_flights as
select * from wfc.schedules s
join flight_aware.flights f
     on s.nnumber = f.tailnumber
     and (f.actual_departure_time > s.start_asoftime
     and f.actual_departure_time < s.end_asoftime)
     and s.canceled_asoftime is null;
