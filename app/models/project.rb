class Project < ActiveRecord::Base

	after_validation :format_name

	has_many :reviews
	has_many :users, through: :reviews

	belongs_to :owner, class_name: "User"

	validates :name, presence: true
	validates :description, :name, presence: true

	scope :recently_added_projects, -> { order(created_at: :DESC) }

	private
	def format_name
		self.name = name.titleize 
	end 
end
