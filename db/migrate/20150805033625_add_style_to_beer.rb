class AddStyleToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :style, :string
  end
end
