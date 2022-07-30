class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_token_authenticatable
  has_many :restaurants, dependent: :destroy
  has_many :comments, dependent: :destroy
end
