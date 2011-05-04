class Solicitation < ActiveRecord::Base
  
  belongs_to :bidtype, :foreign_key => "bid_type_id"
  has_many :contacts
  
   validates :bid_description,  :presence => true

end
  
