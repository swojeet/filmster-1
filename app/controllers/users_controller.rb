class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]).includes(:reviews, reviews: :movie)
  end
end
