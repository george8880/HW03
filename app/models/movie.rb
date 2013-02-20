class Movie < ActiveRecord::Base

	has_many :ratings
	attr_accessible :name, :genre, :year

	validates :name, presence: true
	validates :name, :uniqueness => { :case_sensitive => false }

end
