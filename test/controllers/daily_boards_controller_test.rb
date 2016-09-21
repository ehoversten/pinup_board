require 'test_helper'

class DailyBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_board = daily_boards(:one)
  end

  test "should get index" do
    get daily_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_board_url
    assert_response :success
  end

  test "should create daily_board" do
    assert_difference('DailyBoard.count') do
      post daily_boards_url, params: { daily_board: { catagory: @daily_board.catagory, description: @daily_board.description, title: @daily_board.title } }
    end

    assert_redirected_to daily_board_url(DailyBoard.last)
  end

  test "should show daily_board" do
    get daily_board_url(@daily_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_board_url(@daily_board)
    assert_response :success
  end

  test "should update daily_board" do
    patch daily_board_url(@daily_board), params: { daily_board: { catagory: @daily_board.catagory, description: @daily_board.description, title: @daily_board.title } }
    assert_redirected_to daily_board_url(@daily_board)
  end

  test "should destroy daily_board" do
    assert_difference('DailyBoard.count', -1) do
      delete daily_board_url(@daily_board)
    end

    assert_redirected_to daily_boards_url
  end
end
