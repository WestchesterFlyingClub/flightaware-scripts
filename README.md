# flightaware-scripts
scripts for parsing flightaware data


$ ./fetch.flights N190FT | jq -f flights.jq|jq -r 'flatten|@tsv'|pgrw -c 'copy flight_aware.flights from stdin'
