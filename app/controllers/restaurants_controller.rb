class RestaurantsController < ApplicationController

  def index
    @places = Place.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.name
      #marker.description place.description
      #binding.pry

    end
  end
end
