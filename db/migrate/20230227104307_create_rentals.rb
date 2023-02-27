class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.string :title
      t.text :description
      t.float :price_per_day
      t.string :address
      t.float :rating

      t.timestamps
    end
  end
end
