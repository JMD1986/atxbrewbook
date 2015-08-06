class AddStyleRefToBeer < ActiveRecord::Migration
  def change
    add_reference :beers, :style, index: true, foreign_key: true
  end
end
