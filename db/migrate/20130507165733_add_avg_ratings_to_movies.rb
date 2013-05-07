class AddAvgRatingsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :numRatings, :int

    add_column :movies, :totalScore, :int

  end
end
