class Hotpepper < ActiveResource::Base
  self.site = "http://webservice.recruit.co.jp/"
  self.format = :json
  APIKEY = ENV['HOTPEPPER_APIKEY'] # ホットペッパー登録時のメールに記載されたAPIキーを入力してください

  def self.find_by_keyword(keyword)
    self.find(:one, from: '/hotpepper/gourmet/v1/',
      #小エリアあり
      #params: {key: APIKEY, format: 'json', small_area: 'X005',keyword: keyword})
      #小エリアなし
      #params: {key: APIKEY, format: 'json',keyword: keyword})
      #test
      params: {key: APIKEY,midnight_meal: '1', format: 'json',keyword: keyword,range: 1})
  end

  def self.find_by_position(lat,lng)
    self.find(:one, from: '/hotpepper/gourmet/v1/',
      params: {key: APIKEY, format: 'json', midnight_meal: '1', lat: lat,lng: lng,range: 1})
  end

  def self.find_by_keyword_in_small_area(keyword)
    self.find(:one, from: '/hotpepper/small_area/v1/',
      params: {key: APIKEY, format: 'json', keyword: keyword})
  end
end