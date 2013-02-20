require 'spec_helper'

describe 'Adding a Movie' do
  it 'requires a name' do
  	visit movies_path
  	click_link "New Movie"
  	click_button "Create Movie"

  	error_message = "Name can't be blank"
  	page.should have_content(error_message)
  end
end