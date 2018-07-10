class Group < ApplicationRecord
	has_many :events
	has_many :interestings
	has_many :users, through: :interestings

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
	validates :tel,
		length: {in: 8..12},
		numericality:{only_integer: true}
	validates :captain_name,
		length:{in: 2..50}
end
