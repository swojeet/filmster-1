class RemoveGenreFromMovie < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :genre
  end
end
