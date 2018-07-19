class AddSpToTickets < ActiveRecord::Migration[5.1]
  def change

  	add_column :tickets, :story_points, :integer
  	add_column :tickets, :estimation, :integer
  	add_column :tickets, :type, :string
  	add_column :tickets, :priority, :string
  	add_column :tickets, :sla, :integer
  	add_column :tickets, :sla_unit, :string
  end
end
