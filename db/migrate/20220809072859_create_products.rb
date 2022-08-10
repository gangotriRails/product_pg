class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :metal
      t.string :categories
      t.float :price
      t.string :description
      t.string :color

      t.timestamps
    end
  end
end
