class AddGenreToMovie < ActiveRecord::Migration[5.1]
  def up
    add_column :movies, :genre, :string, default: ""
  end

  def down
    remove_column :movies, :genre
  end
end
