class CreateAdventCards < ActiveRecord::Migration[6.1]
  def change
    create_table :advent_cards do |t|
      t.string :joke_prompt
      t.string :joke_answer

      t.timestamps
    end
  end
end
