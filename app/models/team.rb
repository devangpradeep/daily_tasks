# frozen_string_literal: true

class Team < ApplicationRecord
  belongs_to :created_by, class_name: "User", foreign_key: "created_by_id"
  has_many :teams_user
  has_many :users, through: :teams_user, source: :user
end
