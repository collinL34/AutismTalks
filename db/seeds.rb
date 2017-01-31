User.create(first_name: 'admin', last_name: nil, email: 'c@c.com',
            address: '367 at blah ave', city: 'berkeley',
            state: 'CA', password: 'p')
User.create(first_name: 'friend', last_name: nil, email: 'c@c.com',
            address: '367 at blah ave', city: 'berkeley',
            state: 'CA', password: 'p')
Category.create(name: 'Test')
Category.create(name: 'stories')
Category.create(name: 'medical')
Category.create(name: 'inspirational')
Category.create(name: 'financial')
Category.create(name: 'support')

art1 = Article.new(category_id: 1, link: 'https://www.ninds.nih.gov/Disorders/Patient-Caregiver-Education/Fact-Sheets/Autism-Spectrum-Disorder-Fact-Sheet', author_id: 1)
art2 = Article.new(category_id: 1, link: 'https://www.autismspeaks.org/what-autism', author_id: 1)
art3 = Article.new(category_id: 2, link: 'https://www.autismspeaks.org/node/314251', author_id: 1)
art4 = Article.new(category_id: 5, link: 'https://www.autismspeaks.org/advocacy/advocacy-news/autism-speaks-legislative-wins-2016', author_id: 1)
art5 = Article.new(category_id: 2, link: 'https://www.autismspeaks.org/science/resources-programs/autism-treatment-network', author_id: 1)
art6 = Article.new(category_id: 2, link: 'https://iancommunity.org/', author_id: 1)
art7 = Article.new(category_id: 6, link: 'https://takesbrains.org/', author_id: 1)

articles = [art1, art2, art3, art4, art5, art6, art7]

articles.each do |article| 
  nokogiri_obj       = Article.nokogiri_obj_makr(article.link)
  article.title      = Article.title_grabber(nokogiri_obj)
  article.image_link = Article.img_grabber(nokogiri_obj)
  article.save
end

Friendship.create(user_id: 1, friend_id: 2)