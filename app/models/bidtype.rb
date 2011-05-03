class Bidtype < ActiveRecord::Base
  
  belongs_to :solicitation
  has_many :solicitation
  
   validates :abbreviation,  :presence => true
   validates :description,  :presence => true
   
   
end
