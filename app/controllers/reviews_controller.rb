class ReviewsController < ApplicationController
  before_filter :ensure_logged_in, only: [:create, :destroy, :edit, :update]
  before_filter :load_project

  def index
  end

  def show
  	# @review = Review.find(params[:id])
    @review.newest_first = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
  	@review = @project.reviews.build(review_params)
  	@review.user = current_user

  	if @review.save
  		redirect_to project_path(@project), notice: "Comment was successfully added"
  	else
  		render 'projects/show'
  	end 
  end

  def update
    @review = Review.find(params[:id])

    if @review.update_attributes(review_params)
      redirect_to project_path(@project)
    else
      render :edit
    end 
  end 

  def destroy
  	@review = Review.find(params[:id])
  	@review.destroy
    redirect_to project_path(@project)
  end

  private
  def review_params
  	params.require(:review).permit(:comment, :project_id)
  end 

  def load_project
  	@project = Project.find(params[:project_id])
  end 
end
