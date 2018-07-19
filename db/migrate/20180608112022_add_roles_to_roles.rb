class AddRolesToRoles < ActiveRecord::Migration[5.1]
  def change

  	['admin', 'developer', 'tester', 'scrum_master', 'manager'].each do |role|
  		Role.create!(name: role)
  	end
  end
end
