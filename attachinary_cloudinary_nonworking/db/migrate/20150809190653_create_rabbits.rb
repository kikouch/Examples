class CreateRabbits < ActiveRecord::Migration
  def change
    create_table :rabbits do |t|
      t.string :name
      t.string :building_picture

      t.timestamps null: false
    end
  end
end
