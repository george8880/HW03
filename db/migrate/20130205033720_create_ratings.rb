class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.belongs_to :user
      t.belongs_to :movie

      t.timestamps
    end
    add_index :ratings, :user_id
    add_index :ratings, :movie_id
  end
end
