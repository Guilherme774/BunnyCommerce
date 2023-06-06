require "test_helper"

class CartingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carting = cartings(:one)
  end

  test "should get index" do
    get cartings_url, as: :json
    assert_response :success
  end

  test "should create carting" do
    assert_difference("Carting.count") do
      post cartings_url, params: { carting: { carrot_id: @carting.carrot_id, order_id: @carting.order_id, quantity: @carting.quantity, total: @carting.total } }, as: :json
    end

    assert_response :created
  end

  test "should show carting" do
    get carting_url(@carting), as: :json
    assert_response :success
  end

  test "should update carting" do
    patch carting_url(@carting), params: { carting: { carrot_id: @carting.carrot_id, order_id: @carting.order_id, quantity: @carting.quantity, total: @carting.total } }, as: :json
    assert_response :success
  end

  test "should destroy carting" do
    assert_difference("Carting.count", -1) do
      delete carting_url(@carting), as: :json
    end

    assert_response :no_content
  end
end
