class OrderItem < ApplicationRecord
    belongs_to :orders, inverse_of: :orderItems
    belongs_to :products, inverse_of: :orderItems
end
