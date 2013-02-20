require 'spec_helper'

describe Movie do
  it "should have a movie name" do
  	movie = Movie.create
  	movie.should_not be_valid
  	movie.name = "Testing"
  	movie.should be_valid
  end

  it "should have a unique name" do
  	Movie.create!(name: "Test1")
  	movie2 = Movie.new(name: "Test1")
  	expect(movie2).to have(1).errors_on(:name)
  	movie2.name = "Test2"
  	movie2.should be_valid
  end
end
