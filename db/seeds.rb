# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

filepath = 'app/assets/config/jokes_and_prompts.csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
CSV.foreach(filepath, csv_options) do |row|
  card = AdventCard.create(joke_prompt: row['joke_prompt'], joke_answer: row['joke_answer'])
  puts "Created #{card.joke_prompt}"
end
