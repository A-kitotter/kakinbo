require 'test_helper'

class IndexPageControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get index_page_show_url
    assert_response :success
  end

end
