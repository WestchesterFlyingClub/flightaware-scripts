.FlightInfoStatusResult.flights[] |
{
 faFlightID,
 tailnumber,
 blocked,
 diverted,
 cancelled,
 origin_code: .origin.code,
 origin_city: .origin.city,
 destination_code: .destination.code,
 destination_city: .destination.city,
 filed_ete,
 route,
 filed_altitude,
 filed_airspeed_kts,
 distance_filed,

 filed_departure_time: (if .filed_departure_time.epoch==0 then "\\N" else .filed_departure_time.epoch|todateiso8601 end),
 estimated_departure_time: (if .estimated_departure_time.epoch==0 then "\\N" else .estimated_departure_time.epoch|todateiso8601 end),
 actual_departure_time: (if .actual_departure_time.epoch==0 then "\\N" else .actual_departure_time.epoch|todateiso8601 end),

 filed_arrival_time: (if .filed_arrival_time.epoch==0 then "\\N" else .filed_arrival_time.epoch|todateiso8601 end),
 estimated_arrival_time: (if .estimated_arrival_time.epoch==0 then "\\N" else .estimated_arrival_time.epoch|todateiso8601 end),
 actual_arrival_time: (if .actual_arrival_time.epoch==0 then "\\N" else .actual_arrival_time.epoch|todateiso8601 end),

 status,
 progress_percent,
 inbound_faFlightID,
 adhoc
 }
