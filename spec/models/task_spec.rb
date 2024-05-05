# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Task, type: :model) do
  describe "Associations" do
    it { is_expected.to(belong_to(:category)) }

    it { is_expected.to(belong_to(:created_by)) }

    it { is_expected.to(belong_to(:assigned_to)) }

    it { is_expected.to(have_many(:comments)) }
  end

  describe "Enums" do
    it "defines the correct enum values for status" do
      expect(Task.statuses).to(eq(
        "yet_to_start" => 0,
        "in_progress" => 1,
        "completed" => 2,
      ))
    end

    it "responds to enum methods for status" do
      task = Task.new
      expect(task).to(respond_to(:yet_to_start?))
      expect(task).to(respond_to(:in_progress?))
      expect(task).to(respond_to(:completed?))
    end

    it "defines the correct enum values for priority" do
      expect(Task.priorities).to(eq(
        "low" => 0,
        "medium" => 1,
        "high" => 2,
        "extremely_high" => 3,
      ))
    end

    it "responds to enum methods for priority" do
      task = Task.new
      expect(task).to(respond_to(:low?))
      expect(task).to(respond_to(:medium?))
      expect(task).to(respond_to(:high?))
      expect(task).to(respond_to(:extremely_high?))
    end
  end
end
