require 'net/http'
require 'json'
require 'uri'

class GamesController < ApplicationController

  def new
    @letters= ("A".."Z").to_a.sample(10)
  end

  def contains_alphabets?(str)
    characters_array = str.chars
    characters_array.all? { |char| params[:letters].include?(char) }
  end

  def score
    @answer = params[:answer]
    @letters = params[:letters]
    # api_url = URI.parse("https://wagon-dictionary.herokuapp.com/#{@answer}")
    # response = Net::HTTP.get_response(api_url)
    # data = JSON.parse(response.body)

    # # && contains_alphabets?(params[:answer])

    # if data["found"]
    #   @result_phrase = "Congratulations! #{@answer.capitalize} is a valid English word!"
    #   @score = data["length"] * 10
    # elsif contains_alphabets?(@answer) == false
    #   @result_phrase = "That word isn't in the grid!"
    #   @score = 0
    # elsif data["found"] == false
    #   @result_phrase = "Sorry but #{@answer.capitalize} doesn't seem to be a valid English word..."
    #   @score = 0
    # end
  end

end
