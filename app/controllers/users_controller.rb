class UsersController < ApplicationController
  def new
    @user=User.new
    @users=User.all
  end

  def create
    @user=User.new(user_params)
    @user.save
    redirect_to new_user_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:title,:body,:image)
  end
end
