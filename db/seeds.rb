require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://the-fork-the-spoon.p.rapidapi.com/restaurants/v2/list?queryPlaceValueCityId=348156&pageSize=30&pageNumber=1")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = '0860a11c10msh3b57151994cd93dp1af71ajsnec5f62d80f54'
request["X-RapidAPI-Host"] = 'the-fork-the-spoon.p.rapidapi.com'

response = http.request(request)
# if response.code == "200"
#   result = JSON.parse(response.body)
#   # p result["data"][0]["name"]
# else
#   puts "Error"
# end
result = JSON.parse(response.body)
all_restaurants = result["data"]
# p all_restaurants
all_restaurants.take(10).each do |r|
  p r["name"]
  p r["geo"]["longitude"]
end
