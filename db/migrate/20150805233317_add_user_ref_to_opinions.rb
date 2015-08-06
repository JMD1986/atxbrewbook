class AddUserRefToOpinions < ActiveRecord::Migration
  def change
    add_reference :opinions, :user, index: true, foreign_key: true
  end
end
