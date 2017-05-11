class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
     Review.create(create_params)
    # トップページにリダイレクトする
    redirect_to controller: :restaurants, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review).merge(product_id: params[:product_id], user_id: current_user.id)
  end
end
