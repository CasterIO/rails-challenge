# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Rails.env == "production"
  
  # Seed customers  
  customer_1 = Customer.create({ first_name: "Johny",   last_name: "Flow" })
  customer_2 = Customer.create({ first_name: "Raj",     last_name: "Jamnis" })
  customer_3 = Customer.create({ first_name: "Andrew",  last_name: "Chung" })
  customer_4 = Customer.create({ first_name: "Mike",    last_name: "Smith" })

  # Seed transactions
  5.times.map { Charge.create({ customer: customer_1, amount: 1000 + Random.rand(10000), paid: true })}
  3.times.map { Charge.create({ customer: customer_1, amount: 1000 + Random.rand(10000), disputed: true })}

  3.times.map { Charge.create({ customer: customer_2, amount: 1000 + Random.rand(10000), paid: true })}
  2.times.map { Charge.create({ customer: customer_2, amount: 1000 + Random.rand(10000), disputed: true })}

  1.times.map { Charge.create({ customer: customer_3, amount: 1000 + Random.rand(10000), paid: true })}
  3.times.map { Charge.create({ customer: customer_3, amount: 1000 + Random.rand(10000), refunded: true })}

  1.times.map { Charge.create({ customer: customer_4, amount: 1000 + Random.rand(10000), paid: true })}
  2.times.map { Charge.create({ customer: customer_4, amount: 1000 + Random.rand(10000), refunded: true })}
end
