class Style < ActiveRecord::Base
  belongs_to :brewery
  belongs_to :beer
  has_many :beers
end
