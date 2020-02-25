class UsersController < ApplicationController
  before_action :set_user, only [:show, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
