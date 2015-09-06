class ChangeLikedUserUsernameTypeInLikeRequests < ActiveRecord::Migration
  def change
    change_column :like_requests, :liked_user_username, :string
  end
end
