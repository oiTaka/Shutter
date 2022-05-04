class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs.all
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).parmit(:name, :profile_img, :self_introduction)
  end

end
