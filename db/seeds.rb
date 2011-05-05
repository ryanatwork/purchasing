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
  BidType.find_or_create_by_abbreviation(attributes)
end

[
  {:name => "First Name", :company => "Company Name", :address => "12345 Main Street", :address2 => "Suite 200", 
    :city => "City", :state=>"CA", :zip => "12345", :phone => "555-111-2222", :fax => "111-222-3333", :email => "test@company.com"},
].each do |attributes|
  Vendor.find_or_create_by_company(attributes)
end