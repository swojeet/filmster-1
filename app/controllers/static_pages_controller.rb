class StaticPagesController < ApplicationController
  def index
    @movies = Tmdb::Movie.top_rated
  end
end
