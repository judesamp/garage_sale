require 'test_helper'

class ItemsSoldControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
