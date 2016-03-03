require 'test_helper'

class KlassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
