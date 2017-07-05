class Movie < ApplicationRecord
  validates :title, :plot, :release_date, :released, :runtime, :popularity, :genre, :language, :budget, :average_vote, :vote_count, :poster, :homepage, :tmdb_id, :imdb_id, presence: true
end


t.string :title
t.string :plot
t.string :release_date
t.boolean :released, null: false, default: false
t.string :runtime
t.string :popularity
t.string :genre
t.string :language
t.string :budget
t.string :average_vote
t.string :vote_count
t.string :poster
t.string :homepage
t.string :tmdb_id
t.string :imdb_id
