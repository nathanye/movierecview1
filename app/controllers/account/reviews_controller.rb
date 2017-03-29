class Account::ReviewsController < ApplicationController
  before_action :authenticate_user!
  def index
    @reviews = current_user.reviews
  end

  def destroy
    @review = @Review.find(params[:id])
    @review.destroy
    redirect_to account_reviews_path, alert:"已删除该评论！"
  end
end
