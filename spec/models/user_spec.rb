require 'spec_helper'

describe User do
  it "should have name and id" do
  	user = User.create
  	user.should_not be_valid
  	user.name = "Testing"
	user.upid = 1
  	user.should be_valid
  end

  it "should have a unique id" do
  	User.create!(upid: 9, name: "Testing")
  	user2 = User.new(upid: 9, name: "Testing")
  	expect(user2).to have(1).errors_on(:upid)
  	user2.upid = 7
  	user2.should be_valid
  end
 end
