class User < ActiveRecord::Base
  has_secure_password
  validates :email, confirmation: { case_sensitive: false }
  validates :password, length: { in: 4..15 }
end
