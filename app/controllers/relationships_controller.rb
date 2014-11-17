require 'pp'
class RelationshipsController < ApplicationController
  before_action :set_target
  def create
    render template: "relationships/index"
    current_user.follow!(@user)
  end

  def index

  end

  def destroy
  end

  private
  def set_target
    @user = User.find(params[:user_id])
  end


end
