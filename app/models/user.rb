class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :email, format: { with: /\S+@\S+/ }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 7 }
end
