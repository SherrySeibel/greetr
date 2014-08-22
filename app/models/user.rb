class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :greetings, foreign_key: "sender_id"

  def received_greetings
    Greeting.where(receiver_id: self.id).order("created_at desc")
  end
end
