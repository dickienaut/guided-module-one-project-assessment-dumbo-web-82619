class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :parent_id
      t.integer :place_id
      t.integer :budget
      t.string :review
      t.string :emoticon
    end
  end
end
