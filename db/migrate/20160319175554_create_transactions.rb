class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.integer :from_id, null: false
      t.integer :to_id, null: false
      t.boolean :type_transfer
      t.boolean :type_deposit
      t.boolean :type_withdrawal
      t.boolean :type_fee

      t.timestamps null: false
    end
  end
end
