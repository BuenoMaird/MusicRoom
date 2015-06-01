class PagesController < ApplicationController
  def home
    if @current_user
    @locations = User.near([@current_user.lat, @current_user.lon], 200)
  end
    # raise params.inspect
  end
end
