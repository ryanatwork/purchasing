class Bidtype < ActiveRecord::Base
  
  has_many :solicitations
  
   validates :abbreviation,  :presence => true
   validates :description,  :presence => true
end
