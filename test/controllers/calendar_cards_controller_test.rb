require "test_helper"

class CalendarCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get calendar_cards_update_url
    assert_response :success
  end

  test "should get index" do
    get calendar_cards_index_url
    assert_response :success
  end

  test "should get show" do
    get calendar_cards_show_url
    assert_response :success
  end
end
