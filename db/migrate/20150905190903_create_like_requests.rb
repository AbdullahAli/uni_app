class CreateLikeRequests < ActiveRecord::Migration
  def change
    create_table :like_requests do |t|
      t.string :liker_username
      t.string :liked_user_username
      t.boolean :processed

      t.timestamps null: false
    end
  end
end
