class CreateCaseBoxes < ActiveRecord::Migration[8.0]
  def change
    create_table :case_boxes do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
