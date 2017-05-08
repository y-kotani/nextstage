class Scraping
  def self.movie_urls
    links = []
    agent = Mechanize.new
    current_page = agent.get("http://review-movie.herokuapp.com/")
    elements = current_page.search('.entry-title a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end

    links.each do |link|
      get_product('http://review-movie.herokuapp.com/' + link)
    end
  end

  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.entry-title').inner_text
    image_url = page.at('.entry-content img')[:src] if page.at('.entry-content img')

    product = Product.new(title: title, image_url: image_url)
    product.save
  end
end