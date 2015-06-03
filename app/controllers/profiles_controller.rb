class ProfilesController < ApplicationController
  def new
    # form for user to create own profile
    @user = User.find(params[:user_id])
    @profile = @user.build_profile
  end
end