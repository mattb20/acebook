class WallsController < ApplicationController

  def show
    @user = User.find(wall_params[:wall_id])
    @posts = @user.posts
    render "posts/index"
  end

  private

  def wall_params
    params.permit(:wall_id)
  end
end
