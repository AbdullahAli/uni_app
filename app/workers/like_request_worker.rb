class LikeRequestWorker
  include Sidekiq::Worker
  
  sidekiq_options queue: "default"
  
  def perform(like_request_id)
    like_request = LikeRequest.find(like_request_id)
    
    like_request.update_attribute(:processed, true)
  end
end
