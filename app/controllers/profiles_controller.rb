class ProfilesController < ApplicationController
  def new
    # form for user to create own profile
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = 'Your profile is good to go, bruh'
      redirect_to user_path(params[:user_id])
    else
      render action: :new
      flash[:danger] = 'There was some kind of problem. One of us has to be better at this.'
    end
  end
  def edit
  end
  
  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number, :contact_email, :description, :job_title)
  end
end