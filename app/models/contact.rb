class Contact < ActiveRecord::Base
  has_many :solicitations
  
  validates :name,  :presence => true
  validates :email,  :presence => true
  validates :phone,  :presence => true
end
