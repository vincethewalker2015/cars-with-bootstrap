class AddRemovePriceRangeToCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :price_range, :string
    add_column :cars, :price, :integer
  end
end
