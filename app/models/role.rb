class Role < ApplicationRecord

	has_many :users

	ADMIN = 'admin'
	DEV = 'developer'
	TESTER = 'tester'
	SCRUMMASTER = 'scrum_master'
	MANAGER = 'manager'
end
