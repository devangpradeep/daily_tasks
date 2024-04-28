# frozen_string_literal: true

require "rails_helper"

RSpec.describe(TeamsUser, type: :model) do
  describe "Associations" do
    it { is_expected.to(belong_to(:user)) }

    it { is_expected.to(belong_to(:team)) }

    it { is_expected.to(have_many(:created_tasks)) }

    it { is_expected.to(have_many(:assigned_tasks)) }
  end
end
