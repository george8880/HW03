class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.integer :year

      t.timestamps
    end
  end
end
