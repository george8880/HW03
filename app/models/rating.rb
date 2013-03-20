class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  attr_accessible :user_id, :movie_id, :score, :created_at
  validates :user_id, :movie_id, :score, presence: true
  validates :user_id, :uniqueness => {:scope => :movie_id}

  scope :last_week, lambda { where("created_at >= :date", :date => 1.week.ago) }

  def movie_name
	movie.name if movie
  end

  def user_name
  	user.name if user
  end
end