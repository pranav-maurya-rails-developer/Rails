# frozen_string_literal: true

FactoryBot.define do 
  factory :order_item do 
    quantity {2}
    unit_price {200}
  end
end 