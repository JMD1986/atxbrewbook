class Brewery < ActiveRecord::Base
  has_many :opinions
  has_many :opinions, through: :beers
  has_many :beers
  has_many :beers, through: :styles

  def average_rating
    if opinions.count > 0
      opinions.pluck(:rating).sum / opinions.count
    else
      0
    end
  end


end
