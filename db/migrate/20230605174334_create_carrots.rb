class CreateCarrots < ActiveRecord::Migration[7.0]
  def change
    create_table :carrots do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
