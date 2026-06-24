class Order < ApplicationRecord
    belongs_to :users, dependent: :restrict_with_error, inverse_of: :orders
end
