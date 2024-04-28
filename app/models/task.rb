# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :category
  belongs_to :created_by, class_name: "TeamsUser", foreign_key: "created_by_id"
  belongs_to :assigned_to, class_name: "TeamsUser", foreign_key: "assigned_to_id"
end
