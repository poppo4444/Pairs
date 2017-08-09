class UsersController < ApplicationController

  def following
      @user  = User.find(params[:id])
      @users = @user.likings
      render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.likers
    render 'show_follower'
  end

end