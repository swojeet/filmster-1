class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:id])
    unless check_user
      current_user.follow(@user)
    else
      redirect_to user_path(id: @user)
      flash[:error] = "You cannot follow yourself."
    end
  end

  def destroy
    @user = User.find(params[:id])
    unless check_user
      current_user.unfollow(@user)
    else
      redirect_to user_path(id: @user)
      flash[:error] = "You cannot unfollow yourself."
    end
  end

  private
  def check_user
    return @user == current_user ? true : false
  end
end
