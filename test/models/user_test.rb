require './test/test_helper'

class UserTest < ActiveSupport::TestCase

  test "should have first name and last name" do
    user = User.new(email: 'cuz211@gmail.com', password_digest: "1234", phone_no: "123-333-4444")

    assert_not user.save, "Saved user without a first name and last name being present"
  end

  test "should have an email" do
    user = User.new(first_name: "John", last_name: "Doe", password_digest: "5555", phone_no: "22222222")

    assert_not user.save,"Saved user without an email being present"
  end

  test "should have a phone number" do
    user = User.new(first_name: "John", last_name: "Doe", password_digest: "5555", email: 'cuz211@gmail.com')

    assert_not user.save, "Saved user without a phone no being present"
  end

  test "should have a password digest" do
    user = User.new(first_name: "John", last_name: "Doe", email: 'cuz211@gmail.com', phone_no: "22222222")

    assert_not user.save, "Saved user without a password digest being present"
  end

  test "phone number format should be in 1(XXX)XXX-XXXX" do
    user = User.new(first_name: "John", last_name: "Doe", email: 'cuz211@gmail.com', phone_no: "22222222", password_digest: "5555")
    assert_not user.save, "Saved user without correct phone_no format"
  end
  
end
