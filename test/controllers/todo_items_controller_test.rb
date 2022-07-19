require "test_helper"

class TodoItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_item = todo_items(:one)
  end

  test "should get index" do
    get todo_items_url, as: :json
    assert_response :success
  end

  test "should create todo_item" do
    assert_difference("TodoItem.count") do
      post todo_items_url, params: { todo_item: { complete: @todo_item.complete, content: @todo_item.content, title: @todo_item.title } }, as: :json
    end

    assert_response :created
  end

  test "should show todo_item" do
    get todo_item_url(@todo_item), as: :json
    assert_response :success
  end

  test "should update todo_item" do
    patch todo_item_url(@todo_item), params: { todo_item: { complete: @todo_item.complete, content: @todo_item.content, title: @todo_item.title } }, as: :json
    assert_response :success
  end

  test "should destroy todo_item" do
    assert_difference("TodoItem.count", -1) do
      delete todo_item_url(@todo_item), as: :json
    end

    assert_response :no_content
  end
end
