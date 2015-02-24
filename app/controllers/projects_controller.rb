class ProjectsController < ApplicationController
  before_filter :ensure_logged_in, only: [:create, :destroy, :edit, :update]

  def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  
    if current_user
      @review = @project.reviews.build
    end 
    @newest_first_review = Review.newest_first
  end

  def new
  	@project = Project.new
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def create
  	@project = Project.new(project_params)
    @project.owner = current_user

  	if @project.save
  		redirect_to project_path(@project), notice: "Project was created successfully!"
  	else
       flash.now[:alert] = "Error saving project"
  		render :new
  	end 
  end 

  def update
  	@project = Project.find(params[:id])

  	if @project.update_attributes(project_params)
  		redirect_to project_path(@project)
  	else
  		render :edit
  	end 
  end 

  def destroy
  	@project = Project.find(params[:id])
  	@project.destroy
  	redirect_to projects_path
  end 

  private
  def project_params
  	params.require(:project).permit(:name, :description, :link, :owner_id)
  end 
end
