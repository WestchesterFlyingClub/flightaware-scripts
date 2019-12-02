.FlightInfoStatusResult.flights[] |
{
 faFlightID,
 tailnumber,
 origin_code: .origin.code,
 origin_city: .origin.city,
 destination_code: .destination.code,
 destination_city: .destination.city,
 actual_departure_time: (if .actual_departure_time.epoch==0 then "\\N" else .actual_departure_time.epoch|todateiso8601 end),
 actual_arrival_time: .actual_arrival_time.epoch|todateiso8601,
 status,
 progress_percent,
 adhoc
 }
