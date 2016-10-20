require 'test_helper'

class ChargesControllerTest < ActionController::TestCase
  test "should get correct charges" do
  	customer = create(:customer)
    create_list(:charge, 10, :paid, customer: customer)
    create_list(:charge, 5, :disputed, customer: customer)
    create_list(:charge, 5, :refunded, customer: customer)

  	get :index

  	assert_response :success
    assert(assigns(:paid).count == 10)
    assert(assigns(:disputed).count == 5)
    assert(assigns(:failed).count == 5)
  end
end
