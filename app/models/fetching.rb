class Fetching
  def self.get_restaurant
    h = Hotpepper.find_by_keyword("丸の内 イタリアン")
    #h = Hotpepper.find_by_position("35.677962", "139.768286")
    # product = Product.new(title: title, image_url: image_url)
    # product.save

      h.attributes['shop'].each do |shop|
       name = shop.attributes['name']
       lng = shop.attributes['lng']
       lat = shop.attributes['lat']
       open = shop.attributes['open']
       budget = shop.attributes['budget'].attributes['name']
       url = shop.attributes['urls'].attributes['mobile']
       tel = shop.attributes['tel']
       address = shop.attributes['address']
       # p name
       # p lng

#       restaurant = Restaurant.where(name: name, latitude: lat, longitude: lng, adress: address, open_time: open, budget: budget, url: url, tel: tel).first_or_initialize
       restaurant = Restaurant.where(name: name, latitude: lat, longitude: lng, adress: address, open_time: open, budget: budget, url: url, tel: tel).first_or_initialize
       restaurant.save
      end
  end
end