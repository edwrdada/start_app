require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  
  def setup
    @play = Play.new(name: "example user", email: "play@example.com")
  end

  test "should be valid" do
    assert @play.valid?
  end

  test "name should be present" do
    @play.name = "      "
    assert_not @play.valid?
  end

  test "email should be present" do
    @play.email = "     "
    assert_not @play.valid?
  end

  test "name should not be too long" do
    @play.name = "a" * 51
    assert_not @play.valid?  
  end

  test "email should not be too long" do
    @play.name = "a" * 200 + "@example.com"
    assert_not @play.valid?  
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @play.email = valid_address
      assert @play.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @play.email = invalid_address
      assert_not @play.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses unique" do
    dup_user = @play.dup
    dup_user.email = @play.email.upcase
    @play.save
    assert_not duplicate_user.valid?
  end
end
