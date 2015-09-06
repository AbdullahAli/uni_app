class User < ActiveRecord::Base
  extend FriendlyId

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # validates :username, presence: true
  friendly_id :username, use: :slugged

  private

  def should_generate_new_friendly_id?
    username_changed?
  end
end
