require 'net/http'
require 'uri'
require 'json'

# The goal of this exercise is to have a working piece of code that queries the API and returns a list of repository names. You can simply print the names to screen.
# You can write this code in any language of choice.
# Upload your code to a public github repo and paste the link below. Your readme file should include instructions on how to run your code.

uri = URI.parse("https://api.github.com/users/andrewhbc/repos")
response = Net::HTTP.get_response(uri)
json = JSON.parse(response.body)

puts "Public repos from andrewhbc:"
json.each { |repo| puts repo['name'] }
