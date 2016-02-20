require 'test_helper'

class TrackControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
