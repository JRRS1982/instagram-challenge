require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new }

  it "is has a name" do
    subject.name = "bob"
    expect(subject).to eq("bob")
  end

  it "has an email address" do
    subject.email = "bob@bob.com"
    expect(subject).to be_valid
  end

  it "has a password" do
    subject.password = "hidden later!"
    expect(subject).to be_valid
  end
end
