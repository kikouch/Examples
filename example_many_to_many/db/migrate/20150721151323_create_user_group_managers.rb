class CreateUserGroupManagers < ActiveRecord::Migration
  def change
    create_table :user_group_managers do |t|
      t.integer :user_id
      t.integer :user_group_id

      t.timestamps null: false
    end
  end
end
