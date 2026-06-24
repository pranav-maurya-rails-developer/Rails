require "test_helper"
class FactorybotTest < ActiveSupport::TestCase
  test "user factory bot is valid" do
    assert build(:user).valid?
  end
end 

