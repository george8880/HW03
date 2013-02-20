require 'spec_helper'

describe Rating do
  it "should have user, movie, score" do
  	rating = Rating.create
  	rating.should_not be_valid
  	rating.user_id = 9
  	rating.movie_id = 8
  	rating.score = 5
  	rating.should be_valid
  end

  it "should have a unique user" do
  	Rating.create!(user_id: 10, movie_id: 8, score: 5)
  	rating2 = Rating.new(user_id: 10, movie_id: 8, score: 5)
  	expect(rating2).to have(1).errors_on(:user_id)
  	rating2.user_id = 9
  	rating2.should be_valid
  end
end
