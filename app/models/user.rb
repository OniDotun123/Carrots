class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :username, :email,  presence: true, uniqueness: :true
  validates :password, length: { minimum: 6 }

  has_secure_password
end
