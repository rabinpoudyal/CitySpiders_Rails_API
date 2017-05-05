class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.decimal :price
      t.string :condition
      t.string :location
      t.string :category
      t.boolean :is_sold

      t.timestamps
    end
  end
end
