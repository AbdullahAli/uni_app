class ChangeLikeeUserIdToLikedUserIdInLikeRequests < ActiveRecord::Migration
  def change
    rename_column :like_requests, :likee_user_id, :liked_user_id
  end
end
