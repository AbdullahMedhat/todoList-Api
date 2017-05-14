class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @todolists = @user.todolists
  end	
end
