class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.create_unique_string
    SecureRandom.uuid
  end
end
