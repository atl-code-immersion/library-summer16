require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get author_collection" do
    get :author_collection
    assert_response :success
  end

end
