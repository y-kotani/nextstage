class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    # locations = Restaurant.all.map{|r|
    #   "{lat: #{r.latitude.to_s}, lng: #{r.longitude.to_s} }"
    # }
    # locations.map{|location| }
    @latitude = @restaurants.map{|r| r.latitude.to_s}
    @longitude = @restaurants.map{|r| r.longitude.to_s}

    # @hash = Gmaps4rails.build_markers(@places) do |place, marker|
    #   marker.lat place.latitude
    #   marker.lng place.longitude
    #   marker.infowindow place.name
      #marker.description place.

    #binding.pry

    #end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reviews = @restaurant.reviews.includes(:user)

  end
end
