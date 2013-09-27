class User < ActiveRecord::Base
	attr_accessible :email, :name, :password, :password_confirmation, :username
	has_secure_password

	validates :username, uniqueness: true, presence: true
	validates :email, uniqueness: true, presence: true
	has_many :comments
end
