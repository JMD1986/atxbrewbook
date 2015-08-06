class UsersController < ApplicationController
  def show
    @user = User.where(user_id: params[:id])
    @opinion = Opinion.where(user_id: params[:id])
  end
end
