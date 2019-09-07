class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :preference
      t.integer :budget
    end
  end
end
