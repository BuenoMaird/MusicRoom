class UsersController < ApplicationController

  before_action :check_if_admin, :only => [:index]

  def index
    @user = User.all
  end

  def create
    if request.remote_ip === "::1"
      request.remote_ip = "140.168.135.1"
    end
    params[:user][:ip_address] = request.remote_ip 
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
    user = @current_user
    user.update user_params
    redirect_to root_path
  end

  def destroy
    user = @current_user
    session[:user_id] = nil
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :instruments, :interests, :image, :dob, :website, :ip_address, :latitude, :longtitude)
  end

  def check_if_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end
end
