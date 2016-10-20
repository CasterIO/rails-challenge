class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean     :paid, null: false, default: false
      t.integer     :amount, null: false
      t.string      :currency, null: false, default: "usd"
      t.boolean     :refunded, null: false, default: false
      t.integer     :customer_id, null: false
      t.boolean     :disputed, null: false, default: false

      t.timestamps
    end
  end
end
