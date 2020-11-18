class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
