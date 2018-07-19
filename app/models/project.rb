class Project < ApplicationRecord

	belongs_to :admin, class_name: 'User', foreign_key: :user_id
	has_many :tickets
	has_many :sprints

	validates :name, presence: true
end
