class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.integer :price
      t.string :exp_level
      t.string :size
      t.string :light_required
      t.string :image
      t.boolean :pet_friendly

      t.timestamps
    end
  end
end
