require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
  it "password and password_confirmation should match" do
    @user = User.create({
      name: "test",
      password: "asdf",
      password_confirmation: "abcd"
    })
    expect(@user).to be_invalid

    @user2 = User.create({
      name: "test",
      password: "asdf",
      password_confirmation: "asdf"
    })
    expect(@user2).to be_valid
  end
  it "email must be unique" do
    @user3 = User.create({
      name: "test",
      email: "test@test.com"
      })
    @user4 = User.create({
      name: "test",
      email: "test@test.com"
      })
    expect(@user4).to be_invalid
  end
  it "password must be a minimum length" do
    @user5 = User.create({
      name: "tester",
      password: "asd",
      password_confirmation: "asd"
      })
    expect(@user5).to be_invalid
  end
end



  describe '.authenticate_with_credentials' do
    # examples for this class method here
    it "spaces should be allowed" do
      @user6 = User.create({
      name: "test",
      password: "asdfg",
      password_confirmation: "asdfg",
      email: "eXAMple@domain.com"
      })
    expect(@user6).to be_valid
  end
end


end


