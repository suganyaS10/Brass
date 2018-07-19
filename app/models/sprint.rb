class Sprint < ApplicationRecord

	has_many :tickets
	belongs_to :project
	belongs_to :creator, class_name: 'User', foreign_key: :creator_id

	before_save :check_overlapping_sprints_for_project

	def check_overlapping_sprints_for_project
	end

end
