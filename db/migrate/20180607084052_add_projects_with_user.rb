class AddProjectsWithUser < ActiveRecord::Migration[5.1]
  def change
  	create_table :projects do |t|
    	t.string :name, null: false
    	t.string :technology
    	t.references :user, index: true

      t.timestamps
    end
  end
end
