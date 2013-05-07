desc "This task is called by the Heroku scheduler add-on"

task :clear_ratings => :environment do
  #deletes ratings
  Rating.delete_all
end