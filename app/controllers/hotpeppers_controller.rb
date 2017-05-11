class HotpeppersController < ApplicationController
  def index
    #h = Hotpepper.find_by_keyword('香里園')
    h = Hotpepper.find_by_position(lat=34.784654,lng=135.631128,range=2)
    @count = h.attributes['results_available']
    @shops = h.attributes['shop']
    #binding.pry
  end
end
