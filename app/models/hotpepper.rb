class Hotpepper < ActiveResource::Base
  self.site = "http://webservice.recruit.co.jp/"
  self.format = :json
  APIKEY = ENV['HOTPEPPER_APIKEY'] # ホットペッパー登録時のメールに記載されたAPIキーを入力してください

  def self.find_by_keyword(keyword)
    self.find(:one, from: '/hotpepper/gourmet/v1/',
      params: {key: APIKEY, format: 'json', keyword: keyword})
  end

  def self.find_by_position(lat,lng,range)
    self.find(:one, from: '/hotpepper/gourmet/v1/',
      params: {key: APIKEY, format: 'json', lat: lat, lng: lng,range: range})
  end
end