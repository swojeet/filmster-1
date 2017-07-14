class RelationshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user

  def create
    @user = User.find(params[:id])
    current_user.follow(@user)
    redirect_to user_path(id: @user)
  end

  def destroy
    @user = User.find(params[:id])
    current_user.unfollow(@user)
    redirect_to user_path(id: @user)
  end

  private
  def check_user
    if @user == current_user
      flash[:alert] = "You are trying to follow/unfollow yourself."
      redirect_to user_path(id: @user)
    else
      true
    end
  end
end
