class CreateRabbits < ActiveRecord::Migration
  def change
    create_table :rabbits do |t|
      t.string :title
      t.text :body
      t.integer :age

      t.timestamps null: false
    end
  end
end
