class User < ActiveRecord::Base

  has_many :ratings

  attr_accessible :name, :upid

end
