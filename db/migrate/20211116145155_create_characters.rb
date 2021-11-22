class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :picture
      t.integer :current_life
      t.integer :damage_attack
      t.integer :shield
      t.integer :experience

      t.timestamps
    end
  end
end
