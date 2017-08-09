class ProfileController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = User.find_by(id: current_user.id)
  end

  def edit
    @user = User.find_by(id: current_user.id)
  end

  def update
    @user = current_user.update(profile_params)
    redirect_to profile_path
  end

  private
  def profile_params
    params.require(:user).permit!
  end

end
