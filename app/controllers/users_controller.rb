class UsersController < ApplicationController

  def create
    user = User.find_by(username: params[:user][:username])

    if user
      render json: user
    else
      new_user = User.create(user_params)
      render json: new_user
    end

  end

  def update
    @user = User.find(params[:id])

    if params[:file]
      # The data is a file upload coming from <input type="file" />
      @user.avatar.attach(params[:file])
    else
      @user.update(user_params)
      render json: @user
    end

  end

  private
    def user_params
      params.require(:user).permit(:username, :bio, :spanish, :french, :italian, :german)
    end
end
