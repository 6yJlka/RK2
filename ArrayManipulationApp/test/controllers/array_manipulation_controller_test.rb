require "test_helper"

class ArrayManipulationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get array_manipulation_index_url
    assert_response :success
  end
end
