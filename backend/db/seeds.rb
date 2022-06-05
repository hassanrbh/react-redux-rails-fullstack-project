

100.times do 
    post = Todo.create(
        :title => Faker::Game.title,
        :body => Faker::Game.platform,
        :done => true,
    )

    post.save!
end