class CreateCalendarCards < ActiveRecord::Migration[6.1]
  def change
    create_table :calendar_cards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :advent_card, null: false, foreign_key: true
      t.integer :num

      t.timestamps
    end
  end
end
