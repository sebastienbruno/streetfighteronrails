class AddFkHitsToUsers < ActiveRecord::Migration[6.1]
    def change
      add_foreign_key :hits, :characters, column: :attacker_id
      add_foreign_key :hits, :characters, column: :defender_id
    end
  end
  