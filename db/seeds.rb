User.create!(
  email: "test@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Admin",
  roles: "site_admin"
)

puts "1 Admin user created"

3.times do |topic|
  Topic.creat!(
  title: "Topic #{topic}"
  )
end

puts "3 Topics Created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus 
    qui blanditiis praesentium voluptatum deleniti atque corrupti quos 
    dolores et quas molestias excepturi sint occaecati cupiditate non 
    provident, similique sunt in culpa qui officia deserunt mollitia animi, 
    id est laborum et dolorum fuga. Et harum quidem rerum facilis est et 
    expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi 
    optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, 
    omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem 
    quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet 
    ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum 
    rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores 
    alias consequatur aut perferendis doloribus asperiores repellat.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times.do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
  end

  puts "5 skills created"

  8.times.do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}" ,
      subtitle: "Ruby on Rails",
      body: "The body of the portfolio",
      main_image: "www.placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolios created"

  1.times.do |portfolio_item|
    Portfolio.create!(
    title: " Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "sdhfjksdhjkfshdkjfhskfhksjdhfkjshdfjkhdsjhfskdj",
    main_image: "www.placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

puts "1 portfolio created"

3.times do |technology| 
  Portfolio.last.technologies.create!(
  name: "Technology #{technology}"
  )
end

puts "3 technologies created"
