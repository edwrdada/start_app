require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  
  def setup
    @play = Play.new(name: "example user", email: "play@example.com")
  end

  test "should be valid" do
    assert @play.valid?
  end
end
