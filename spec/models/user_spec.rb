require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "is valid email, and password" do
    user = User.new(
        email:      "enogrob@gmail.com",
        password:   "betoz23",
        )
    expect(user).to be_valid
  end

  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
end
