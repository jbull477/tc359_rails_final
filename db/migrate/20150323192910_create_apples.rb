class CreateApples < ActiveRecord::Migration
  def change
    create_table :apples do |t|
      t.text :name
      t.decimal :diameter
      t.decimal :height
      t.integer :quantity
      t.boolean :is_red

      t.timestamps null: false
    end
  end
end
