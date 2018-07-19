class CreateProjects < ActiveRecord::Migration[5.1]
  def up
    create_table :projects do |t|
    	t.string :name, null: false
    	t.string :technology
    	t.references :admin, :user, index: true

      t.timestamps
    end
  end

  def down
  	remove_table :projects
  end
end
