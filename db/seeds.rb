require 'uri'
require 'net/http'
require 'openssl'

# url = "https://the-fork-the-spoon.p.rapidapi.com/restaurants/v2/list?queryPlaceValueCityId=348156&pageSize=10&pageNumber=1"
# results = URI.open(url).read_body
# all_restaurants = JSON.parse(results)
# puts all_restaurants

url = URI("https://the-fork-the-spoon.p.rapidapi.com/restaurants/v2/list?queryPlaceValueCityId=348156&pageSize=10&pageNumber=1")


http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = '0860a11c10msh3b57151994cd93dp1af71ajsnec5f62d80f54'
request["X-RapidAPI-Host"] = 'the-fork-the-spoon.p.rapidapi.com'

response = http.request(request)
p response.read_body.data
