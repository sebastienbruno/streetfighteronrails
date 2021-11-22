class CreateFights < ActiveRecord::Migration[6.1]
    def change
      create_table :fights do |t|
        t.string :status
        t.references :opponent1, null: false
        t.references :opponent2, null: false
  
        t.timestamps
      end
    end
  end
  