class Job < ActiveRecord::Base
	belongs_to :user
	validates :name, :overview , :type_id , :user_id, presence: true

	# scopes: 
end

