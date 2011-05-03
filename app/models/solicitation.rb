class Solicitation < ActiveRecord::Base
  
  has_many :bidtype
  has_many :contacts
  
   validates :bid_description,  :presence => true

end
  
