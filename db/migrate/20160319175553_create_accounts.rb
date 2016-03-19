class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.decimal :balance
      t.boolean :meta
      t.string :meta_name
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :accounts, :meta_name
    add_index :accounts, :user_id
  end
end
