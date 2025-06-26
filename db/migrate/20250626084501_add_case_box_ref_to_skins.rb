class AddCaseBoxRefToSkins < ActiveRecord::Migration[8.0]
  def change
    add_reference :skins, :case_box, null: false, foreign_key: true
  end
end
