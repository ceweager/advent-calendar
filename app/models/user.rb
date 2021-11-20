class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :calendar_cards, dependent: :destroy
  after_create :generate_calendar

  def generate_calendar
    cards = AdventCard.all.shuffle
    num = (1..25).to_a.shuffle
    cards.each do |card|
      date = Date.new(2021,12,num.first)
      CalendarCard.create(user: self, advent_card: card, num: num.first, open_date: date)
      num.shift
    end
  end
end
