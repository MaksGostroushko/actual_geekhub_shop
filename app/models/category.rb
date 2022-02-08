class Category < ApplicationRecord
  validates :title, presence: true

  has_many :products, dependent: :destroy
end
