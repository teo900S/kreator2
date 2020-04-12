class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.string :category
      t.string :format
      t.integer :polycount
      t.integer :price
      t.text :license
      t.string :pbr
      t.string :animated
      t.string :rigged
      t.string :scanned
      t.string :threeprint

      t.timestamps
    end
  end
end
