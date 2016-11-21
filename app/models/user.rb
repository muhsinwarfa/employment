class User < ActiveRecord::Base
	belongs_to :role
	has_many :jobs

	before_save = {self.email = email.lowercase}
	validates :name , :email , :password , :role_id , presence: true
	validates :email , uniqueness:  true
end
