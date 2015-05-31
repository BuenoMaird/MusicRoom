class UsersController < ApplicationController

  before_action :check_if_admin, :only => [:index]

  def index
    @user = User.all
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
    render :new
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = @current_user
    render :new
  end

  def show
    @user = User.find params[:id]
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :instruments, :interests, :image, :dob, :website)
  end

  def check_if_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end
end
