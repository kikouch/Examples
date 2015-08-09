class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :rabbit_id
      t.string :facebook_status

      t.timestamps null: false
    end
  end
end
