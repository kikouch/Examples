class CreateRabbits < ActiveRecord::Migration
  def change
    create_table :rabbits do |t|
      t.string :name
      t.integer :age
      t.boolean :on_facebook

      t.timestamps null: false
    end
  end
end
