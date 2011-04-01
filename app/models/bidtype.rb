class Bidtype < ActiveRecord::Base
   validates :abbreviation,  :presence => true
   validates :description,  :presence => true
end
