class Solicitation < ActiveRecord::Base
  
  belongs_to :bid_type
  belongs_to :contact
  
  
   validates :bid_description,  :presence => true
   validates :bid_number,  :presence => true

end
  
