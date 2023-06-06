class CreateCartings < ActiveRecord::Migration[7.0]
  def change
    create_table :cartings do |t|
      t.references :carrot, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
