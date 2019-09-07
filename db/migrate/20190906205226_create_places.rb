class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :type_of_activity  
      t.integer :cost
    end
  end
end
