class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true, length: { minimum: 6, maximum: 50 }
  has_secure_password
end
