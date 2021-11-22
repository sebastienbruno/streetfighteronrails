class CreateHits < ActiveRecord::Migration[6.1]
  def change
    create_table :hits do |t|
      t.belongs_to :fight, index: true, foreign_key: true
      t.integer :damage_point
      t.references :defender, null: false
      t.references :attacker, null: false

      t.timestamps
    end
  end
end
