class User < ApplicationRecord
	has_many :entries
	has_many :interestings
	has_many :groups,through: :interestings
	has_many :events, through: :entries

	before_save {self.email = email.downcase}
	validates :name, 
		length:{in: 2..50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, 
		length:{maximum: 255},
		format:{with: VALID_EMAIL_REGEX},
		uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password,
		length: {minimum:6}
end
