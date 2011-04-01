class Solicitation < ActiveRecord::Base
  
  belongs_to :bidtypes
  
   validates :bid_description,  :presence => true

end
  
