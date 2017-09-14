require 'test_helper'

class PlayerTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get player_teams_new_url
    assert_response :success
  end

  test "should get create" do
    get player_teams_create_url
    assert_response :success
  end

  test "should get show" do
    get player_teams_show_url
    assert_response :success
  end

end
