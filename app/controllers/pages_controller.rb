class PagesController < ApplicationController
  def home
    if @current_user
    @locations = User.near([@current_user.lat, @current_user.lon],100, :units => :km)
  end
    # raise params.inspect
  end
end
