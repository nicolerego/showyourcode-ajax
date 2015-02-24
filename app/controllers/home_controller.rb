class HomeController < ApplicationController
	def index
	 @projects = Project.all
		# @projects.recently_added_projects = Project.find(params[:id])
		# @projects.recently_added_projects = Project.all
	end 
end
