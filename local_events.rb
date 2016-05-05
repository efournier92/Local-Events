require 'httparty'
require 'pry'

url = "https://api.seatgeek.com/2/events\?venue.city\=Boston\&datetime_utc.gte\=2016-03-03\&datetime_utc.lte\=2016-03-04"
response    = HTTParty.get(url)
json_hash = response.parsed_response

json_hash["events"].each do |event|
  puts event["title"]
end
