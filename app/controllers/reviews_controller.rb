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

  def destroy
    review = Review.find(params[:id])
    if review.user_id == current_user.id
      review.destroy
    end
  end


  def edit
    @review = Review.find(params[:id])
  end

  def update
    # binding.pry
    review = Review.find(params[:id])
    if review.user_id == current_user.id
      review.update(review_params)
    end
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review).merge(restaurant_id: params[:restaurant_id], user_id: current_user.id)
  end

  def review_params
        params.permit(:rate, :review)
  end


end
