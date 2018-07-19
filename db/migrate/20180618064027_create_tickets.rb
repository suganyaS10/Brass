class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
    	t.string :title
    	t.text :description
    	t.string :status
    	t.integer :assignee_id
    	t.integer :creator_id
    	t.boolean :is_epic
    	t.integer :epic_id
    	t.integer :project_id

      t.timestamps
    end
  end
end
