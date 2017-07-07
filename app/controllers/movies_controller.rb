class MoviesController < ApplicationController
  def show
      @movie = Movie.find(params[:tmdb_id])
  end
end
