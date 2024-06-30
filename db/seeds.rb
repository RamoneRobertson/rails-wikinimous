puts 'Clearing Database....'
Article.destroy_all


puts 'Creating Articles...'
10.times do
  # Forgery(:lorem_ipsum).words(1000)
  Article.create(
    title: Faker::GreekPhilosophers.quote,
    content: Faker::Lorem.paragraph(sentence_count: rand(15..40))
  )
end

puts 'Created 10 articles'
