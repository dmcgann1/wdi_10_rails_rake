namespace :export do
require 'csv'

  desc "Export Users to CSV File"
  task :csv => :environment do
    CSV.open('database.csv', 'w') do |csv|
      csv << ['name', 'email']
      User.all.each do |user|
        csv << [user.name, user.email]
      end
    end
  end
end

namespace :import do
require 'csv'

  desc "Import Users from CSV File"
  task :csv => :environment do
    file = 'database.csv'
    User.delete_all
    CSV.foreach(file, :headers => true) do |row|
      User.create(row.to_hash)
    end
  end
end
