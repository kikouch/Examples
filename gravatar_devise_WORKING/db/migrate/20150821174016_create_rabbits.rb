class CreateRabbits < ActiveRecord::Migration
  def change
    create_table :rabbits do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
