class AddPhoneNumberToBrewery < ActiveRecord::Migration
  def change
    add_column :breweries, :phone_number, :string
  end
end
