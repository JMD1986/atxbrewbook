class Beer < ActiveRecord::Base
  has_many :breweries
  has_many :breweries, through: :styles
end
