class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :location
      t.float :price

      t.timestamps
    end
  end
end
