class Property < ActiveRecord::Base
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip

  belongs_to :owner
end
