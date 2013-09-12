require 'test_helper'

class InputFormControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

end
