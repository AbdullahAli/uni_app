class LikeRequest < ActiveRecord::Base
  validates :liker_username, :liked_user_username, presence: true
  
  # after_commit :queue_job, :on => :create
  
  private

  # def queue_job
  #   Sidekiq::Client.enqueue(LikeRequestWorker, self.id)
  # end
end
