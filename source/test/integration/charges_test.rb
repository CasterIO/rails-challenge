require 'test_helper'

class ChargesTest < ActionDispatch::IntegrationTest
  test "should have 3 sections" do

    customer = create(:customer)
    create(:charge, :paid, customer: customer)
    create(:charge, :disputed, customer: customer)
    create(:charge, :refunded, customer: customer)

    get_via_redirect charges_path

    assert_select "h1", 3
    assert_select "table", 3
    assert_select "table.failed tr", 1
    assert_select "table.disputed tr", 1
    assert_select "table.paid tr", 1
  end
end
