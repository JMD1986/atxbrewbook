class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.belongs_to :brewery, index: true, foreign_key: true
      t.belongs_to :beer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
