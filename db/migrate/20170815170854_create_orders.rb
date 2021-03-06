class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true
      t.text :notes
      t.integer :status
      t.integer :bill

      t.timestamps
    end
  end
end
