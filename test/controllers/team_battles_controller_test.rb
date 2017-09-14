require 'test_helper'

class TeamBattlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get team_battles_new_url
    assert_response :success
  end

  test "should get create" do
    get team_battles_create_url
    assert_response :success
  end

  test "should get update" do
    get team_battles_update_url
    assert_response :success
  end

  test "should get edit" do
    get team_battles_edit_url
    assert_response :success
  end

  test "should get show" do
    get team_battles_show_url
    assert_response :success
  end

end
