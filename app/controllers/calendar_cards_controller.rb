class CalendarCardsController < ApplicationController
  def index
    @cards = current_user.calendar_cards.sort
    # @countdown = (Date.new(2021,12,25) - Date.today).ceil
    @countdown = 24
  end

  def show; end
 
  def edit; end
  
  def update
    @card = CalendarCard.find(params[:id])
    @card.opened = true
    @card.save!
  end
end

