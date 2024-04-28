# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Comment, type: :model) do
  describe "Associations" do
    it { is_expected.to(belong_to(:task)) }

    it { is_expected.to(belong_to(:user)) }
  end
end
