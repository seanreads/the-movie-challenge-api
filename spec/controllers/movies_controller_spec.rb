require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #index" do
    it "requests trending movies of the day with api_key" do
      get :index
      expect(WebMock).to have_requested(:get, "#{ENV['THE_MOVIE_DB_API']}/trending/movie/day")
        .with(query: {'api_key': ENV['THE_MOVIE_DB_API_KEY']})
    end
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
