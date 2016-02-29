class UserController < ApplicationController
  def index
    #@user = User.find(params[:id])
    @user = User.find_by(username: params[:username])
  end

  def update
    @user = current_user

    if @user.update(user_params)
      flash[:success] = "Your account has been successfully updated!"
      render 'edit'
    else
      render 'edit'
    end
  end
end
