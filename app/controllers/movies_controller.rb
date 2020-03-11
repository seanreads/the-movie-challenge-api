class MoviesController < ApplicationController

  def index
    uri = URI("#{ENV['THE_MOVIE_DB_API']}/trending/movie/day")
    response = query(uri)
    render json: response.body
  end

  def show
    uri = URI("#{ENV['THE_MOVIE_DB_API']}/movie/#{params[:id]}")
    response = query(uri)
    render json: response.body
  end

  private

  def query(uri)
    require 'net/http'
    params = { api_key: ENV['THE_MOVIE_DB_API_KEY'] }
    uri.query = URI.encode_www_form(params)
    response = Net::HTTP.get_response(uri)
  end

end
