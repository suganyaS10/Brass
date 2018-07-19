class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :name
    	t.boolean :is_mandatory
    	t.integer :owner_id

      t.timestamps
    end
  end
end
