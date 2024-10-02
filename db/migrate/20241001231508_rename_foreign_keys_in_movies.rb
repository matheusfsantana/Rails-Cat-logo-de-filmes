class RenameForeignKeysInMovies < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :genres_id, :genre_id
    rename_column :movies, :directors_id, :director_id
  end
end
