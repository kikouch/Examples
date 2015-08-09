class CreateTableUserGroup < ActiveRecord::Migration
  def change
    create_table :table_user_groups do |t|
      t.string :field_one
      t.integer :field_two
    end
  end
end
