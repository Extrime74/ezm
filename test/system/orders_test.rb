require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Client", with: @order.client_id
    fill_in "Comment", with: @order.comment
    fill_in "Device brand", with: @order.device_brand
    fill_in "Device condition", with: @order.device_condition
    fill_in "Device model", with: @order.device_model
    fill_in "Device serial", with: @order.device_serial
    fill_in "Device set", with: @order.device_set
    fill_in "Device type", with: @order.device_type
    fill_in "Estimated cost", with: @order.estimated_cost
    fill_in "Malfunction", with: @order.malfunction
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Client", with: @order.client_id
    fill_in "Comment", with: @order.comment
    fill_in "Device brand", with: @order.device_brand
    fill_in "Device condition", with: @order.device_condition
    fill_in "Device model", with: @order.device_model
    fill_in "Device serial", with: @order.device_serial
    fill_in "Device set", with: @order.device_set
    fill_in "Device type", with: @order.device_type
    fill_in "Estimated cost", with: @order.estimated_cost
    fill_in "Malfunction", with: @order.malfunction
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
