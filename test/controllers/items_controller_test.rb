require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get show" do
    get items_show_url
    assert_response :success
  end

>>>>>>> eaa26490a6e2d91dc7a1182756f4528a04a5d77d
end
