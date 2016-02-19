class UserController < ApplicationController
  def index
    #@user = User.find(params[:id])
    @user = User.find_by(username: params[:username])
  end
end
