class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  attr_accessible :user_id, :movie_id, :score

  def movie_name
	movie.name if movie
  end

  def user_name
  	user.name if user
  end
end
