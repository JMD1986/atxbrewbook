class UserController < ApplicationController

  def show
    @user = User.where(user_id: params[:id])
    @opinions = Opinions.where(user_id: params[:id])
  end
end
