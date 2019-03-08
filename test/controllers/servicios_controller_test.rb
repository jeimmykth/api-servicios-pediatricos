require 'test_helper'

class ServiciosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get servicios_url, as: :json
    assert_response :success
  end
end
