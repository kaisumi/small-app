require "rails_helper"

RSpec.describe ApplicationJob, type: :job do
  it "is the base class for application jobs" do
    expect(described_class).to be < ActiveJob::Base
  end
end
