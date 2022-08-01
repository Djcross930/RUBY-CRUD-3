class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :color
      t.string :model
      t.string :style

      t.timestamps
    end
  end
end
