class AddBeerRefToOpinions < ActiveRecord::Migration
  def change
    add_reference :opinions, :beer, index: true, foreign_key: true
  end
end
