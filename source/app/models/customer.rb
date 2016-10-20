class Customer < ActiveRecord::Base

  # Foreign keys
  has_many :charges, dependent: :destroy

  # validation
  validates :first_name, :last_name, :presence => true
end
