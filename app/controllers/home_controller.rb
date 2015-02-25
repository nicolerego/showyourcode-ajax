class HomeController < ApplicationController
	def index
	 # @projects = Project.all
		# @projects.recently_added_projects = Project.find(params[:id])
		# @projects.recently_added_projects = Project.all
	
	@projects = Project.order(created_at: :DESC).limit(3)
	end 
end
