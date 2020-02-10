require 'test_helper'

class PlaygamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get playgames_index_url
    assert_response :success
  end

end
