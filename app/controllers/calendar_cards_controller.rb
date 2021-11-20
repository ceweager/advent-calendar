class CalendarCardsController < ApplicationController
  def index
    @cards = current_user.calendar_cards
  end

  def show; end
 
  def edit; end
  
  def update
    @card = CalendarCard.find(params[:id])
    @card.opened = true
    if @card.save
      redirect_back(fallback_location: user_calendar_cards_path(current_user))
    end
  end
end

