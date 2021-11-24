class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.integer :current_life
      t.integer :damage_attack, null: false
      t.integer :shield, null: false
      t.integer :experience, null: false

      t.timestamps
    end
  end
end
