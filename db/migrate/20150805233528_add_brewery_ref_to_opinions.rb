class AddBreweryRefToOpinions < ActiveRecord::Migration
  def change
    add_reference :opinions, :brewery, index: true, foreign_key: true
  end
end
