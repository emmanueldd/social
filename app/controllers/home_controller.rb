class HomeController < ApplicationController

  def index
    @users = User.recent
  end
end
