class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.decimal :rating
      t.text :review
      t.integer :like

      t.timestamps null: false
    end
  end
end
