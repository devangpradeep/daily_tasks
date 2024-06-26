# frozen_string_literal: true

require "rails_helper"

RSpec.describe(User, type: :model) do
  describe "Associations" do
    it { is_expected.to(have_many(:teams)) }

    it { is_expected.to(have_many(:created_teams)) }

    it { is_expected.to(have_many(:teams_user)) }
  end
end
