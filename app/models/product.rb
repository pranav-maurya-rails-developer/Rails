class Product < ApplicationRecord
    belongs_to :categories, dependent: :restrict_with_error, inverse_of: :products
end
