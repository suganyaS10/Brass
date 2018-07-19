class AddSprintToTickets < ActiveRecord::Migration[5.1]
  def change
  	add_column :tickets, :sprint_id, :integer
  end
end
