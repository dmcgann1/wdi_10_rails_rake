namespace :db do
  desc "Show all user's names"
  # Adding the :environment dependency which is a rake task to acces Rails models, classes etc
  task :show_names => :environment do
    names = User.pluck(:name)
    puts "User names are #{names.join(', ')}"
  end

end
