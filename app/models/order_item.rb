class OrderItem < ApplicationRecord
    belongs_to :orders, dependent: :restrict_with_error, inverse_of: :orderItems
    belongs_to :products, dependent: :restrict_with_error, inverse_of: :orderItems
end
