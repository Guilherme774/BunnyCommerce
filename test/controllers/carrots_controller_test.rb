require "test_helper"

class CarrotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrot = carrots(:one)
  end

  test "should get index" do
    get carrots_url, as: :json
    assert_response :success
  end

  test "should create carrot" do
    assert_difference("Carrot.count") do
      post carrots_url, params: { carrot: { description: @carrot.description, name: @carrot.name, price: @carrot.price, stock: @carrot.stock, supplier_id: @carrot.supplier_id } }, as: :json
    end

    assert_response :created
  end

  test "should show carrot" do
    get carrot_url(@carrot), as: :json
    assert_response :success
  end

  test "should update carrot" do
    patch carrot_url(@carrot), params: { carrot: { description: @carrot.description, name: @carrot.name, price: @carrot.price, stock: @carrot.stock, supplier_id: @carrot.supplier_id } }, as: :json
    assert_response :success
  end

  test "should destroy carrot" do
    assert_difference("Carrot.count", -1) do
      delete carrot_url(@carrot), as: :json
    end

    assert_response :no_content
  end
end
