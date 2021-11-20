class AddColumnToCalendarCards < ActiveRecord::Migration[6.1]
  def change
    add_column :calendar_cards, :opened, :boolean, default: false
  end
end
