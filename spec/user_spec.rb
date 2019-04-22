require "rails_helper"

RSpec.describe User, :type => :model do
  describe "Validations" do
    user = User.new(
      password: "test", password_confirmation: "test", email: "test@test.com", first_name: "test", last_name: "test"
    )

    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    it "is not valid without a password" do
      user.password = nil
      expect(user).to_not be_valid
    end

    it "is not valid without a password_confirmation" do
      user.password_confirmation = nil
      expect(user).to_not be_valid
    end

    it "is not valid without an email" do
      user.email = nil
      expect(user).to_not be_valid
    end

    it "is not valid without a first_name" do
      user.first_name = nil
      expect(user).to_not be_valid
    end

    it "is not valid without a last_name" do
      user.last_name = nil
      expect(user).to_not be_valid
    end
  end

  # describe ".authenticate_with_credentials" do
  #   user = User.new(
  #     password: "test", password_confirmation: "test", email: "test@test.com", first_name: "test", last_name: "test"
  #   )

  #   it "is valid with valid attributes" do
  #     expect(user).to be_valid
  #   end

  #   it "is not valid without a password" do
  #     user.password = nil
  #     expect(user).to_not be_valid
  #   end

  #   it "is not valid without a password_confirmation" do
  #     user.password_confirmation = nil
  #     expect(user).to_not be_valid
  #   end

  #   it "is not valid without an email" do
  #     user.email = nil
  #     expect(user).to_not be_valid
  #   end

  #   it "is not valid without a first_name" do
  #     user.first_name = nil
  #     expect(user).to_not be_valid
  #   end

  #   it "is not valid without a last_name" do
  #     user.last_name = nil
  #     expect(user).to_not be_valid
  #   end
  # end
end