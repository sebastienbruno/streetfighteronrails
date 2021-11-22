class Fight < ApplicationRecord
    belongs_to :opponent1, class_name:"Character"
    belongs_to :opponent2, class_name:"Character"
end
