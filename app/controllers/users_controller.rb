class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])    #testing
    if @user.save
      #testing
    else
      render 'new'
    end
  end

end
