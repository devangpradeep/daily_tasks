# frozen_string_literal: true

10.times do
  User.create!(
    name: Faker::Name.name,
    password: "password",
    email: "#{Faker::Name.first_name.downcase}@gmail.com",
  )
end

5.times do
  Team.create!(
    title: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 6),
    created_by_id: rand(1..10),
    user_ids: [
      rand(1..10), rand(1..10), rand(1..10),
    ],
  )
end

["Project", "Meeting", "Deadline", "Report", "Email"].each do |category_name|
  Category.create!(title: category_name, description: Faker::Lorem.sentence(word_count: 6))
end

5.times do
  Task.create!(
    title: Faker::Company.bs,
    description: Faker::Lorem.sentence,
    status: rand(0..2),
    priority: rand(0..3),
    category_id: rand(1..5),
    deadline: Date.tomorrow,
    created_by_id: rand(1..10),
    assigned_to_id: rand(1..10),
  )
end

20.times do
  Comment.create!(
    task_id: rand(1..5),
    user_id: rand(1..10),
    data: Faker::Lorem.sentence,
  )
end

puts "Seeded successfully"
