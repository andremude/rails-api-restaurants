class User < ApplicationRecord
  has_secure_password
  has_many :restaurants

  validates :username, presence: true, uniqueness: { case_sensitive: false }
end
