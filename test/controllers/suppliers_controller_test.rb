require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get suppliers_url, as: :json
    assert_response :success
  end

  test "should create supplier" do
    assert_difference("Supplier.count") do
      post suppliers_url, params: { supplier: { company: @supplier.company } }, as: :json
    end

    assert_response :created
  end

  test "should show supplier" do
    get supplier_url(@supplier), as: :json
    assert_response :success
  end

  test "should update supplier" do
    patch supplier_url(@supplier), params: { supplier: { company: @supplier.company } }, as: :json
    assert_response :success
  end

  test "should destroy supplier" do
    assert_difference("Supplier.count", -1) do
      delete supplier_url(@supplier), as: :json
    end

    assert_response :no_content
  end
end
