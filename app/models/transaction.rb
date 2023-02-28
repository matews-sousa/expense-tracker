class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :amount, presence: true
  validates :date, presence: true
  validates :category, presence: true
end
