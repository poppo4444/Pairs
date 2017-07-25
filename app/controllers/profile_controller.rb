class ProfileController < ApplicationController

  before_action :authenticate_user!

  def index
    @profiles = Profile.find(params[:user_id])
  end

  def edit
    @profiles = Profile.find(params[:user_id])
  end

  def update
  end

  private

end
