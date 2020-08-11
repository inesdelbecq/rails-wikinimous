require "faker"
# TODO: Write a seed to insert 100 posts in the database
puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence(word_count: 3)
  )
  article.save!
end
puts 'Finished!'
