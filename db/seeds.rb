# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#Default values for Bid Types
#Bidtype.create(:abbreviation => "RFP", :description => "Request for Proposal")  
#Bidtype.create(:abbreviation => "RFQ", :description => "Request for Quote")  
#Bidtype.create(:abbreviation => "ITB", :description => "Invitation to Bid")  

[
  {:abbreviation => "RFP", :description => "Request for Proposal"},
  {:abbreviation => "RFQ", :description => "Request for Quote"},
  {:abbreviation => "ITB", :description => "Invitation to Bid"},
].each do |attributes|
  Bidtype.find_or_create_by_abbreviation(attributes)
end