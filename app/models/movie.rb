class Movie < ActiveRecord::Base

	has_many :ratings

	attr_accessible :name, :genre, :year

end
