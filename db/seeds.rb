# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Issue.destroy_all
Project.destroy_all

5.times do
  project = Project.create!(
    title: Faker::App.name,
    description: Faker::Lorem.paragraph(sentence_count: 2)
  )

  3.times do
    project.issues.create!(
      title: Faker::Lorem.sentence(word_count: 3),
      status: %w[New In\ Progress Closed].sample,
      priority: rand(1..5)
    )
  end
end
