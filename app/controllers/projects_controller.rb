class ProjectsController < ApplicationController

	before_action :set_params, except: [:index, :new, :show]

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(@project_params)

		if @project.save
			redirect_to projects_path
		else
			flash[:error] = 'Something went wrong'
			redirect_to new_project_path
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def set_params
		@project_params = params.require(:project).permit(:name, :technology, :user_id).to_h
	end
end
