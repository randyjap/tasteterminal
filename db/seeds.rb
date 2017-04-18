article = "<div itemprop=\"articleBody\"><p class=\"mol-para-with-font\">The unicorn coffee trend has reached peak saturation.</p><p class=\"mol-para-with-font\">With cafés across the country turning out unicorn-themed lattes, <a style=\"font-weight: bold;\" target=\"_blank\" class=\"\" rel=\"nofollow\" href=\"https://news.starbucks.com/news/starbucks-unicorn-frappuccino\">Starbucks </a>has decided to throw its hat in the ring with its own magical drink, the Unicorn Frappuccino.</p><p class=\"mol-para-with-font\">But like the mystical creature, the drink is quite elusive — and will only be available in stores in the United States, Canada, and Mexico through the end of the weekend.</p><div class=\"artSplitter mol-img-group\">    <div class=\"mol-img\">      <div class=\"image-wrap\">
        <img id=\"i-9c0a5fc1a1c0b572\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" data-src=\"http://i.dailymail.co.uk/i/pix/2017/04/18/14/3F59DFE300000578-4421640-image-a-2_1492523172385.jpg\" height=\"634\" width=\"634\" alt=\"An a straw for a horn! Starbucks has debuted a new Unicorn Frappuccino\" class=\"blkBorder img-share\"/>
      </div><div itemprop=\"articleBody\"><p class=\"mol-para-with-font\">The unicorn coffee trend has reached peak saturation.</p><p class=\"mol-para-with-font\">With cafés across the country turning out unicorn-themed lattes, <a style=\"font-weight: bold;\" target=\"_blank\" class=\"\" rel=\"nofollow\" href=\"https://news.starbucks.com/news/starbucks-unicorn-frappuccino\">Starbucks </a>has decided to throw its hat in the ring with its own magical drink, the Unicorn Frappuccino.</p><p class=\"mol-para-with-font\">But like the mystical creature, the drink is quite elusive — and will only be available in stores in the United States, Canada, and Mexico through the end of the weekend.</p><div class=\"artSplitter mol-img-group\">    <div class=\"mol-img\">      <div class=\"image-wrap\">
              <img id=\"i-9c0a5fc1a1c0b572\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" data-src=\"http://i.dailymail.co.uk/i/pix/2017/04/18/14/3F59DFE300000578-4421640-image-a-2_1492523172385.jpg\" height=\"634\" width=\"634\" alt=\"An a straw for a horn! Starbucks has debuted a new Unicorn Frappuccino\" class=\"blkBorder img-share\"/>
            </div><div itemprop=\"articleBody\"><p class=\"mol-para-with-font\">The unicorn coffee trend has reached peak saturation.</p><p class=\"mol-para-with-font\">With cafés across the country turning out unicorn-themed lattes, <a style=\"font-weight: bold;\" target=\"_blank\" class=\"\" rel=\"nofollow\" href=\"https://news.starbucks.com/news/starbucks-unicorn-frappuccino\">Starbucks </a>has decided to throw its hat in the ring with its own magical drink, the Unicorn Frappuccino.</p><p class=\"mol-para-with-font\">But like the mystical creature, the drink is quite elusive — and will only be available in stores in the United States, Canada, and Mexico through the end of the weekend.</p><div class=\"artSplitter mol-img-group\">    <div class=\"mol-img\">      <div class=\"image-wrap\">
                    <img id=\"i-9c0a5fc1a1c0b572\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\" data-src=\"http://i.dailymail.co.uk/i/pix/2017/04/18/14/3F59DFE300000578-4421640-image-a-2_1492523172385.jpg\" height=\"634\" width=\"634\" alt=\"An a straw for a horn! Starbucks has debuted a new Unicorn Frappuccino\" class=\"blkBorder img-share\"/>
                  </div>"

category = ["sim cards", "smart packing", "adventure", "food", "lounge life", "best lounges"]

location = ["hong kong", "taiwan", "japan"]

User.create!(
  username: "Chuck",
  first_name: "Chuck",
  last_name: "Norris",
  email: "chuck@example.com",
  bio: Faker::ChuckNorris.fact,
  password: "password"
)

User.create!(
  username: "Jack",
  first_name: "Jack",
  last_name: "Bauer",
  email: "jack@example.com",
  bio: Faker::ChuckNorris.fact,
  password: "password"
)

10.times do
  6.times do |idx|
    Article.create!(
      author: User.order("RANDOM()").first,
      title: Faker::Company.catch_phrase + " " + category[idx],
      article: article,
      date: Time.now,
      category: category[idx],
      featured: false,
      approved: true,
      location: location.sample
    )
  end
end

5.times do |idx|
  Article.create!(
    author: User.order("RANDOM()").first,
    title: Faker::Company.catch_phrase + " " + category[idx],
    article: article,
    date: Time.now,
    category: category[idx],
    featured: true,
    approved: true,
    location: location.sample
  )
end
