class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
 end

  def edit
    debugger
  end

  def update
    @user.update_attributes(user_params)
  end

  private

  def user_params
    require(:user)
  end
end