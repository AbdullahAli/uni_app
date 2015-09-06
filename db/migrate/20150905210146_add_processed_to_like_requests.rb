class AddProcessedToLikeRequests < ActiveRecord::Migration
  def change
    add_column :like_requests, :processed, :boolean, default: false
  end
end
