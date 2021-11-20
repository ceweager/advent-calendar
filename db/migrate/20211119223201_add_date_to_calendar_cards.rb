class AddDateToCalendarCards < ActiveRecord::Migration[6.1]
  def change
    add_column :calendar_cards, :open_date, :date
  end
end
