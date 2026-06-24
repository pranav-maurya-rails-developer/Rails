class Product < ApplicationRecord
    belongs_to :categories,inverse_of: :products
end
