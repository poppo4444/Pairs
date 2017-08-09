class SearchController < ApplicationController

  def index
    @profile = User.find_by(id: current_user.id)
    if current_user.sexes == 1
      @searches = User.where(sexes: 2).page(params[:page])
    else
      @searches = User.where(sexes: 1).page(params[:page])
    end
  end

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
