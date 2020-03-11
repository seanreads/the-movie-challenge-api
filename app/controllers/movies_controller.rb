class MoviesController < ApplicationController
  def index
    require 'net/http'
    uri = URI("#{ENV['THE_MOVIE_DB_API']}/trending/movie/day")
    params = { api_key: ENV['THE_MOVIE_DB_API_KEY'] }
    uri.query = URI.encode_www_form(params)
    res = Net::HTTP.get_response(uri)
    render json: res.body
  end
end
