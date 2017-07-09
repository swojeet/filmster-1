class SetDefaultForMovieGenre < ActiveRecord::Migration[5.1]
  def up
    change_column :movies, :genre, :string, default: ""
  end

  def down
    change_column :movies, :genre, :string, default: nil
  end
end
