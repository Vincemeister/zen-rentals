class AddHeadlineToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :headline, :string
  end
end
