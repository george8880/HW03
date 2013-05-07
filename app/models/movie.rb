class Movie < ActiveRecord::Base

	has_many :ratings
	attr_accessible :name, :genre, :year, :numRatings, :totalScore

	validates :name, presence: true
	validates :name, :uniqueness => { :case_sensitive => false }

	#gets average score of movie as a string
	def get_score
      numRatings = 0
      totalScore = 0

      ratings.each do |r|
      	numRatings = numRatings + 1
      	totalScore = totalScore + r.score
      end

      if numRatings == 0
	  	return 'No Ratings Yet'
	  else
	  	return '%.2f / 5' % (totalScore / numRatings)
	  end
	end
end
