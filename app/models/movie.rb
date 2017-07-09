class Movie < ApplicationRecord
  validates :title, :plot, :release_date, :released, :runtime, :popularity, :genre, :language, :budget, :average_vote, :vote_count, :poster, :tmdb_id, :imdb_id, presence: true
end
