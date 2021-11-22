class AddImageToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :image, null: true, foreign_key: true
  end
end
