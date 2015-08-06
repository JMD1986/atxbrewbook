class Beer < ActiveRecord::Base
  has_many :breweries
  has_many :opinions
  has_many :breweries, through: :styles
  belongs_to :style
  belongs_to :brewery

    def average_rating
    if opinions.count > 0
      opinions.pluck(:rating).sum / opinions.count
    else
      0
    end
  end

end
