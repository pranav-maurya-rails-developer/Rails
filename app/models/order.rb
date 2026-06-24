class Order < ApplicationRecord
    belongs_to :users, inverse_of: :orders
end
