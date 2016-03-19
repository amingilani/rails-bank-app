class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :charge_fee

      t.timestamps null: false
    end
  end
end
