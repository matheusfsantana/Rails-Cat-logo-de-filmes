class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.string :synopsis
      t.string :origin
      t.integer :duration

      t.timestamps
    end
  end
end
