class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account_id
      t.boolean :fee

      t.timestamps null: false
    end
    add_index :users, :account_id
  end
end
