class Beer < ActiveRecord::Base
  has_many :breweries
  has_many :opinions
  has_many :breweries, through: :styles
  belongs_to :style
  belongs_to :brewery
end
