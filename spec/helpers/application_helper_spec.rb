require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  it "is included in the helper object" do
    expect(helper).to be_a(described_class)
  end
end
