class User < ActiveRecord::Base
  has_many :greetings
end
