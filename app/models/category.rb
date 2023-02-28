class Category < ApplicationRecord
    belongs_to :user

    validates :name, presence: true

    enum category_type: { expense: 0, income: 1 }, _default: :expense
end
