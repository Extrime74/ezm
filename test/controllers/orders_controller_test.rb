require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { client_id: @order.client_id, comment: @order.comment, device_brand: @order.device_brand, device_condition: @order.device_condition, device_model: @order.device_model, device_serial: @order.device_serial, device_set: @order.device_set, device_type: @order.device_type, estimated_cost: @order.estimated_cost, malfunction: @order.malfunction } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { client_id: @order.client_id, comment: @order.comment, device_brand: @order.device_brand, device_condition: @order.device_condition, device_model: @order.device_model, device_serial: @order.device_serial, device_set: @order.device_set, device_type: @order.device_type, estimated_cost: @order.estimated_cost, malfunction: @order.malfunction } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
