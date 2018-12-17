class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :name
      t.string :price_range
      t.text :description
      t.string :picture
      
      t.timestamps
    end
  end
end
