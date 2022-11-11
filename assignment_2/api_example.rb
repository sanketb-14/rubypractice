require 'uri'
require 'net/http'

uri = URI('http://api.ipstack.com/202.148.59.245?access_key=126be1b97525c53df30011fd7d4cbac3')

res = Net::HTTP.get_response(uri)
puts res.body if res.is_a?(Net::HTTPSuccess)