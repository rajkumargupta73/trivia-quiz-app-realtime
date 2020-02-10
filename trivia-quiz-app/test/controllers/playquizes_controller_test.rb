require 'test_helper'

class PlayquizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get playquizes_index_url
    assert_response :success
  end

end
