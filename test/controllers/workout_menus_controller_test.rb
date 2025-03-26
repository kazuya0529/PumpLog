require "test_helper"

class WorkoutMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workout_menus_index_url
    assert_response :success
  end
end
