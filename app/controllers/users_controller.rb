class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_current_user, only: [:edit, :update]
  
  def show
    @user = User.find(params[:id])
    
  end
  
  def edit
    
  end
  
  def ensure_current_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
  
end
