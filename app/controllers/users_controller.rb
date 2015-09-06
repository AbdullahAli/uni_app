class UsersController < ApplicationController

  def index
    render json: "hi"
  end

  def like
    like_request = LikeRequest.create!(liker_username: params[:liker], liked_user_username: params[:liked_user_username])

    LikeRequestWorker.perform_async(like_request.id)

    render json: params
  end
end
