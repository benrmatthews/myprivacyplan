class Plan < ActiveRecord::Base
  belongs_to :completed, class_name: "User"
  belongs_to :planned, class_name: "User"
  validates :completed_id, presence: true
  validates :planned_id, presence: true
 end
