.FlightInfoStatusResult.flights[] |
{
 faFlightID,
 tailnumber,
 origin_code: .origin.code,
 origin_city: .origin.city,
 destination_code: .destination.code,
 destination_city: .destination.city,
 actual_departure_time: (.actual_departure_time.date + " " + .actual_departure_time.time + " " + .actual_departure_time.tz ),                                   actual_arrival_time: (.actual_arrival_time.date + " " + .actual_arrival_time.time + " " + .actual_arrival_time.tz ),
 status,
 progress_percent,
 adhoc
 }
