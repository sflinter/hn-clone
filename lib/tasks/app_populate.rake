namespace :app do

  desc "Fill the DB with test data"
  task :populate => [:environment, "db:reset"] do
    require "factory_girl_rails"
    Dir[File.dirname(__FILE__) + 'spec/factories/*.rb'].each { |f| require f }

    p "Manufacturing objects..."
    (1..10).each { FactoryGirl.create(:post) }
  end
end
