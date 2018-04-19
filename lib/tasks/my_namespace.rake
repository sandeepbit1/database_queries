namespace :my_namespace do
  desc "TODO"
  task my_task1: :environment do
    1.upto(100) do |i|
     post = Post.new(:title => "This is the title for post  #{i}", :body => "This is the body for post  #{i}")
     post.save
    end
  end

  desc "TODO"
  task my_task2: :environment do
    p = Post.first
    p.title = "this is the tiele for post 1"
    p.save
  end

  desc "TODO"
  task my_task3: :environment do
    1.upto(10) do |i|
      user = User.new(:name => "User #{i}")
      user.save
    end
  end

  desc "TODO"
  task my_task4: :environment do
    Post.all.each do |post|
      num = rand(1..10)
      post.user_id = num
      post.save
    end
  end

  desc "TODO"
  task my_task5: :environment do
    Post.take(50).each do |post|
      date_string = post.created_at
      #date_string["2018"] = "2008"
      date_string = 2.years.ago
      post.created_at = date_string
      post.save
    end
  end

end
