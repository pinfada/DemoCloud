require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    10.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email
      User.create!(:name => name,
                    :email => email,
                    :password => "password",
                    :password_confirmation => "password")
    end
  end
end