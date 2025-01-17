class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to @profile, notice: "Profile Saved"
      # byebug
    else
      render 'new' 
    end
  end





  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: "Profile Updated"
    else 
      render 'edit'
    end
  end


  # def destroy
  #   @profile.destroy
  #   redirect_to profiles_path
  # end

  private

  def profile_params
    params.require(:profile).permit(
      :first_name, 
      :last_name,
      :city,
      :state,
      :bio,
      :coach_type,
      :rating,
      :price_low,
      :price_high,
      :industry,
      :language,
      :certification,
      :skills,
      :experience,
      :email)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end

end

