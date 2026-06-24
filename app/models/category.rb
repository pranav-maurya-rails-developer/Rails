class Category < ApplicationRecord
    has_many :products, dependent: :restrict_with_error, inverse_of: :category
end
