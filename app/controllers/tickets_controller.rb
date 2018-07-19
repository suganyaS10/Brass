class TicketsController < ApplicationController

	before_action :set_params, except: [:index, :new, :show, :edit]

	def index
		@tickets = Ticket.paginate(page: params[:ticket], per_page: 20)
	end

	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.create(@ticket_params)
		@ticket.creator = current_user

		if @ticket.save
			redirect_to tickets_path
		else
			render :new
		end
	end

	def show
		@ticket = Ticket.find(params[:id])
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])

		if @ticket.update_attributes(@ticket_params)
			redirect_to tickets_path
		else
			redirect_to edit_ticket_path(@ticket)
		end
	end

	def project_tickets
		@project = Project.includes(:tickets).find_by(id: @ticket_params[:project_id])
    @tickets = @project.tickets
     
		@tickets = @tickets.select { |t| t.status == @ticket_params[:status] } if ticket_params[:status]
		@tickets
	end

	private

	def set_params
		@ticket_params = params.require(:ticket).permit(:title, :description, :assignee_id, :project_id, :status,
			:is_epic, :epic_id, :creator_id, :sprint_id)
	end
end
