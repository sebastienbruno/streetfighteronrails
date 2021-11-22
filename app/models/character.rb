class Character < ApplicationRecord
    has_many :fights
    has_many :hits
    belongs_to :image
end
