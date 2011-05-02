namespace :app do

  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "\nYou're asking me to drop your production database"
    end
  end

  desc "Reset"
  task :reset => ["db:drop", "db:create", "db.migrate", "db:seed", "app:populate"]
  
  desc "Populate the database with development data."
  
  task :populate => :environment do
    [
      {:bid_type_id => 9, :bid_description => "This is a request for proposal", :open_date => "5/1/20011", :closed_date => "12/31/2011" },
      {:bid_type_id => 10, :bid_description => "This is a request for Quote", :open_date => "5/1/20011", :closed_date => "5/31/2011" },
    ].each do |attributes|
      Solicitation.find_or_create_by_bid_description(attributes)
    end
  end

end