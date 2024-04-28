# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable
  has_many :teams_user
  has_many :teams, through: :teams_user
  has_many :created_teams, class_name: "Team", foreign_key: "created_by_id"
end
