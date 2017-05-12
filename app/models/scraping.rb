class Scraping
  def self.movie_urls
    Restaurant.all.each do |shop|
        agent = Mechanize.new
        page = agent.get(shop.url)
        tel = page.search('.fs18').inner_text
        puts tel
        restaurant = Restaurant.where(name: shop.name).first_or_initialize
        restaurant.tel = tel
        restaurant.save
    end
  end
end
