class Fetching
  def self.get_restaurant
    keywords = ["渋谷駅", "東京駅", "銀座駅", "新橋駅", "有楽町駅","京橋駅 東京","銀座一丁目駅","東銀座駅","日本橋駅","日比谷駅",
      "渋谷駅 バー", "東京駅 バー", "銀座駅 バー", "新橋駅 バー", "有楽町駅 バー","京橋駅 東京 バー","銀座一丁目駅 バー","東銀座駅 バー","日本橋駅 バー","日比谷駅 バー",
      "渋谷駅 居酒屋", "東京駅 居酒屋", "銀座駅 居酒屋", "新橋駅 居酒屋", "有楽町駅 居酒屋","京橋駅 東京 居酒屋","銀座一丁目駅 居酒屋","東銀座駅 居酒屋","日本橋駅 居酒屋","日比谷駅 居酒屋",
      "渋谷駅 イタリアン", "東京駅 イタリアン", "銀座駅 イタリアン", "新橋駅 イタリアン", "有楽町駅 イタリアン","京橋駅 東京 イタリアン","銀座一丁目駅 イタリアン","東銀座駅 イタリアン","日本橋駅 イタリアン","日比谷駅 イタリアン"]
     latlngs = []
     latlngs << ["35.677962", "139.768286"]
     latlngs << ["35.679190", "139.771756"]
     latlngs << ["35.678353", "139.769498"]
     latlngs << ["35.677237", "139.768822"]
     latlngs << ["35.676261", "139.768189"]
     latlngs << ["35.675167", "139.767245"]
     latlngs << ["35.673746", "139.765720"]
     latlngs << ["35.672839", "139.764740"]
     latlngs << ["35.671784", "139.763667"]
     latlngs << ["35.670267", "139.762004"]
     latlngs << ["35.669282", "139.760995"]
     latlngs << ["35.668306", "139.759353"]
     latlngs << ["35.667522", "139.761381"]
     latlngs << ["35.666598", "139.761917"]
     latlngs << ["35.669788", "139.764814"]
     latlngs << ["35.672263", "139.767078"]
     latlngs << ["35.680882", "139.771080"]
    # keywords.each do |keyword|
    #   h = Hotpepper.find_by_keyword(keyword)
     latlngs.each do |latlng|
      h = Hotpepper.find_by_position(latlng[0], latlng[1])

        h.attributes['shop'].each do |shop|
         name = shop.attributes['name']
         lng = shop.attributes['lng']
         lat = shop.attributes['lat']
         open = shop.attributes['open']
         budget = shop.attributes['budget'].attributes['name']
         url = shop.attributes['urls'].attributes['pc']
         address = shop.attributes['address']
         image = shop.attributes['photo'].attributes['pc'].attributes['l']

         restaurant = Restaurant.where(name: name, latitude: lat, longitude: lng, adress: address, open_time: open, budget: budget, url: url, imaege: image).first_or_initialize
         restaurant.save
      end
    end
  end
end

