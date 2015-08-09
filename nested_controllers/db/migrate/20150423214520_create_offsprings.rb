class CreateOffsprings < ActiveRecord::Migration
  def change
    create_table :offsprings do |t|

      t.timestamps null: false
    end
  end
end
