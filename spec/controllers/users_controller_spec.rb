require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #like" do
    it "returns http success" do
      start_time = Time.now
        10000.times do |i|
        get :like, liked_user_username: "alani1990", liker: "aliali"
        expect(response).to have_http_status(:success)
      end
      puts "took: #{Time.now - start_time} seconds"
    end
  end

end
