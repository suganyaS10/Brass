class SprintsController < ApplicationController
  
  before_action :set_params, except: [:index, :new, :edit, :show]

	def index
		@sprints = Sprint.all
	end

	def new
		@sprint = Sprint.new
	end

	def create
		@sprint = Sprint.create(@sprint_params)

		if @sprint.save
			redirect_to sprints_path
		else
			flash[:error] = "Something went wrong"
			render :new
		end
	end

	def show
		@sprint = Sprint.find(params[:id])
	end

	def edit
		@sprint = Sprint.find(params[:id])
	end

	def update
		@sprint = Sprint.find(params[:id])
		@sprint.update_attributes(@sprint_params)

		if @sprint.save
			redirect_to sprints_path
		else
			flash[:error] = "Something went wrong"
			redirect_to edit_sprints_path(@sprint)
		end

	end

	def delete
	end

	private

	def set_params
		@sprint_params = params.require(:sprint).permit(:name, :project_id, :creator_id,
		 :start_date, :end_date)
	end
end
