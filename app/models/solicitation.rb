class Solicitation < ActiveRecord::Base
  
  belongs_to :bid_type
  has_many :contacts
  
   validates :bid_description,  :presence => true

end
  
