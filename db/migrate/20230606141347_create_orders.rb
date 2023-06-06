class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :payment_method
      t.string :status
      t.string :total

      t.timestamps
    end
  end
end
