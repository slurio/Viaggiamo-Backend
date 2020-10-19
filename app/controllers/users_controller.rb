class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def show
    render json: @user
  end

  def create
    user = User.find_by(username: params[:user][:username])
    if user
      render json: user
    else
      new_user = User.create(username: params[:user][:username])
      new_user.bio = 'Add some information about yourself!'
      render json: new_user
    end
  end

  def update

    if params[:file]
      # The data is a file upload coming from <input type="file" />
      @user.img.attach(params[:file])
      # Generate a url for easy display on the front end 
      photo = url_for(@user.img)
    end

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :bio, :img)
    end
end
