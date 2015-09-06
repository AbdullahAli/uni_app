class ChangeLikerAndLikedUsernameColumnsForLikeRequests < ActiveRecord::Migration
  def change
    rename_column :like_requests, :liked_user_id, :liked_user_username
    rename_column :like_requests, :liker_user_id, :liker_username
  end
end
