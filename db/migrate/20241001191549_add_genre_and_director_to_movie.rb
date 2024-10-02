class AddGenreAndDirectorToMovie < ActiveRecord::Migration[7.1]
  def change
    add_reference :movies, :genres, null: false, foreign_key: true
    add_reference :movies, :directors, null: false, foreign_key: true
  end
end
