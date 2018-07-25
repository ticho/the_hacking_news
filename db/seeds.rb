require 'faker'

# create 10 users
10.times do
  User.create(name: Faker::Name.name)
end

# create 10 links with a user
10.times do
  Link.create(title: Faker::HarryPotter.character,
              url: Faker::Internet.url,
              user_id: User.all.sample.id)
end

# create 15 comments, and gives them either a comment or link parent
15.times do |times|
  comment = Comment.create(body: Faker::HarryPotter.quote,
                user_id: User.all.sample.id)
  if rand(10) > 5 && times > 2
    comment.comment_id = Comment.all.sample.id
  else
    comment.link_id = Link.all.sample.id
  end
  comment.save
end
