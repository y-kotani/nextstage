class UsersController < ApplicationController
  def show
      user = User.find(params[:id])
      @name = current_user.name
      @reviews = user.reviews.order("created_at DESC")
  end
end
