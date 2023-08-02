require 'net/http'
require 'json'
require 'uri'
require 'set'
api_url = URI.parse("https://wagon-dictionary.herokuapp.com/test")
response = Net::HTTP.get_response(api_url)
data = JSON.parse(response.body)
p data

def contains_alphabets?(str)
  characters_array = str.chars
  other_array = ["h", "e", "l", "l", "o"]
  characters_array.all? { |char| other_array.include?(char) }
end

puts contains_alphabets?("hela")
