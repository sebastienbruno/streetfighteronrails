class AddInitialLifeToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :life, :integer, null: false
  end
end
