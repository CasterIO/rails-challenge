class ChargesController < ApplicationController
  def index
    @paid = Charge.paid
    @failed = Charge.failed
    @disputed = Charge.disputed
  end
end
