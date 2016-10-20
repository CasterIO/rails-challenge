module ChargesHelper

  # Format amount in US Dollar
  def currency_format(amount)
    number_to_currency(amount)
  end
end
