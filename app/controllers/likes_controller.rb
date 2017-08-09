class LikesController < ApplicationController
  def create
    @user = User.find(params[:like][:liking_id])
    current_user.like!(@user)
    redirect_to root_path
  end

  def destroy
    @user = Like.find(params[:id]).liking
    current_user.unlike!(@user)
    redirect_to root_path
  end
end
