# frozen_string_literal: true

class TeamsUser < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :created_tasks, class_name: "Task", foreign_key: "created_by_id"
  has_many :assigned_tasks, class_name: "Task", foreign_key: "assigned_to_id"
end
