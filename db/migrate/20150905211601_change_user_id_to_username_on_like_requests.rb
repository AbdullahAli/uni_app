class ChangeUserIdToUsernameOnLikeRequests < ActiveRecord::Migration
  def change
    change_column :like_requests, :liker_user_id, :string
    rename_column :like_requests, :liker_user_id, :liker_username
    
    change_column :like_requests, :liked_user_id, :string
    rename_column :like_requests, :liked_user_id, :liked_username
  end
end
