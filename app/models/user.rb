class User < ActiveRecord::Base
  # callback for downcasing email addresses
  before_save { email.downcase! }
  
  # validations
  validates(:name, presence: true,length: { maximum: 50 })
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates(:email, presence:true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
  
  has_secure_password
  validates :password, length: { minimum: 6 }
  
end
