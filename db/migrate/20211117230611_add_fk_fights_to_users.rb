class AddFkFightsToUsers < ActiveRecord::Migration[6.1]
    def change
      add_foreign_key :fights, :characters, column: :opponent1_id
      add_foreign_key :fights, :characters, column: :opponent2_id
    end
  end
  