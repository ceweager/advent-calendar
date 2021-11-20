class AdventCard < ApplicationRecord
  has_many :calendar_cards, dependent: :destroy
end
