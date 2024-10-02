require "test_helper"

class GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get directors" do
    get genres_directors_url
    assert_response :success
  end
end
