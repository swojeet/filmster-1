class StaticPagesController < ApplicationController
  def index
    @movies = Tmdb::Movie.top_rated
    @movies.results.each { |movie| MovieBuilder.new(tmdb_id: movie.id).build!}
  end
end
