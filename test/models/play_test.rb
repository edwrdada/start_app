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
    @user.email = "     "
    assert_not @user.valid?
  end
end
