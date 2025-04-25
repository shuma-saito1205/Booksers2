class RegistrationsController < ApplicationController

def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "Welcome! You have signed up successfully."
    redirect_to root_path
  else
    render :new
  end
end
