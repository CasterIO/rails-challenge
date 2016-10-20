class Charge < ActiveRecord::Base

  # Foreign keys
  belongs_to :customer

  # validation
  validates :amount, :customer_id, :presence => true

  # Scopes
  scope :paid, -> { where(paid: true) }
  scope :failed, -> { where(refunded: true) }
  scope :disputed, -> { where(disputed: true) }

  def amount_in_dollar
    amount.to_i / 100.0
  end
end
