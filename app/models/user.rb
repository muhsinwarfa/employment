class User < ActiveRecord::Base
	belongs_to :role
	has_many :jobs

	
	validates :name , :email , :password , :role_id , presence: true
	validates :email , uniqueness:  true
	before_save  {self.email = email.lowercase}
end
