class AddNameOfStyleToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :name_of_style, :string
  end
end
