class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  privite

  def user_params
    params.require(:user).permit(:neme, :email)
  end
end
