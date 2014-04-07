class UsersController < ApplicationController
  def update
    if current_user.update(user_params)
      flash[:success] = 'flash.saved'
    else
      flash[:alert] = 'flash.error'
    end
    redirect_to :back
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end
end
