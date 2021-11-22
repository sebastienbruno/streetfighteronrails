class Hit < ApplicationRecord
    belongs_to :fight
    has_one :attacker, class_name:"Character"
    has_one :defender, class_name:"Character"
end
