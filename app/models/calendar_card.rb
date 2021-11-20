class CalendarCard < ApplicationRecord
  belongs_to :user
  belongs_to :advent_card
end
