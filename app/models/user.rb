class User < ActiveRecord::Base

  has_many :ratings

  attr_accessible :name, :upid
  validates :name, :upid, presence: true
  validates :upid, :uniqueness => true

end
