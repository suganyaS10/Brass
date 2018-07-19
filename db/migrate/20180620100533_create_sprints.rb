class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
    	t.string :name, null: false
    	t.integer :project_id
    	t.integer :creator_id
    	t.datetime :start_date
    	t.datetime :end_date
    	

      t.timestamps
    end
  end
end
