# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Task, type: :model) do
  describe "Associations" do
    it { is_expected.to(belong_to(:category)) }

    it { is_expected.to(belong_to(:created_by)) }

    it { is_expected.to(belong_to(:assigned_to)) }
  end
end
