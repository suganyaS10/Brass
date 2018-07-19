class Ticket < ApplicationRecord

	belongs_to :project
	belongs_to :sprint
	belongs_to :assignee, class_name: 'User', foreign_key: :assignee_id, optional: true
	belongs_to :creator, class_name: 'User', foreign_key: :creator_id, optional: true


# self referential association
	belongs_to :epic, class_name: 'Ticket', optional: true
	has_many :tickets, class_name: 'Ticket', foreign_key: :epic_id

	validates_presence_of :title, :description, :project


	OPEN = 'open'
	IN_PROGRESS = 'in_progress'
	IN_REVIEW = 'in_review'
	DEV_COMPLETE = 'dev_complete'
	IN_QA = 'in_qa'
	REOPENED = 'reopened'
	QA_DONE = 'qa_done'
	DONE = 'done'
	CLOSE = 'close'

	STATUS_ARRAY = [OPEN, IN_QA, IN_REVIEW, IN_PROGRESS, DEV_COMPLETE, REOPENED, QA_DONE,
		DONE, CLOSE]

  MAJOR = 'major'
  MINOR = 'minor'
  CRITICAL = 'critical'
  BLOCKER = 'blocker'
  
  PRIOTITY_ARRAY = [ MAJOR, MINOR, CRITICAL, BLOCKER ]

  BUG = 'bug'
  NEW_FEATURE = 'new_feature'
  ENHANCEMENT = 'enhancement'
  EPIC = 'epic'
  TASK = 'task'

  TYPE_ARRAY = [BUG, NEW_FEATURE, ENHANCEMENT, EPIC, TASK]

  SLA_UNITS = ['days', 'month', 'year']

  # TYPE_WORKFLOW_HASH = { BUG: [OPEN, IN_PROGRESS, IN_REVIEW, IN_QA, REOPENED, QA_DONE
  #                       DONE, CLOSE],
  # 											NEW_FEATURE: [OPEN, IN_PROGRESS, IN_REVIEW, IN_QA, REOPENED, QA_DONE
  #                       DONE, CLOSE],
  # 											ENHANCEMENT: [OPEN, IN_PROGRESS, IN_REVIEW, IN_QA, REOPENED, QA_DONE
  #                       DONE, CLOSE],
  # 											EPIC: [OPEN, IN_PROGRESS, IN_REVIEW, IN_QA, REOPENED, QA_DONE
  #                       DONE, CLOSE]
  # 											TASK: [OPEN, IN_PROGRESS, DONE, CLOSE] }










end
