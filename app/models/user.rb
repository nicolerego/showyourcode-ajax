class User < ActiveRecord::Base
	has_secure_password

	validates :name, :email, presence: true
	validates :email, uniqueness: true

	has_many :reviews
	has_many :projects, through: :reviews

	has_many :owned_projects, class_name: "Project", foreign_key: :owner_id

end
