class UsersController < ApplicationController
  def show
    @user = User.includes(:reviews, reviews: :movie).find(params[:id])
  end
end
