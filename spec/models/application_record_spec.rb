require "rails_helper"

RSpec.describe ApplicationRecord, type: :model do
  it "is the abstract Active Record base class" do
    expect(described_class).to be < ActiveRecord::Base
    expect(described_class.abstract_class?).to be(true)
  end
end
