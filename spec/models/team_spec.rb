# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Team, type: :model) do
  describe "Associations" do
    it { is_expected.to(belong_to(:created_by)) }

    it { is_expected.to(have_many(:users)) }

    it { is_expected.to(have_many(:teams_user)) }
  end
end
