class Passbook < ActiveRecord::Base
  attr_accessible :name, :description, :category, :device_type

end
