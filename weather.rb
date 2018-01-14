require 'net/http'
require 'uri'
require 'json'

class Weather
    def initialize(api_key)
        @api_key = api_key
    end

    def get_current_weather(locate)
        end_point_url = 'http://api.openweathermap.org/data/2.5/weather'
        request_url = URI.parse (end_point_url + "?q=#{locate},jp&APPID=#{@api_key}")
        response = Net::HTTP.get(request_url)
        json = JSON.parse(response)
        parse_response(json)
    end

    def parse_response(json)
        weather_status = json['weather'][0]['main']
        return weather_status
    end
end