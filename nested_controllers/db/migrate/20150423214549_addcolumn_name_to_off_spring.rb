class AddcolumnNameToOffSpring < ActiveRecord::Migration
  def change
    add_column :offsprings, :name, :string
  end
end
