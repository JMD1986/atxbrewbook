class Brewery < ActiveRecord::Base
  has_many :opinions
  has_many :beers
  has_many :beers, through: :styles
end
