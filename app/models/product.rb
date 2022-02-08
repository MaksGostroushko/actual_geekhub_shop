class Product < ApplicationRecord
  validates :title, :description, :price, presence: true

  belongs_to :category

  def to_param
    return nil unless persisted?

    [id, title].join('-')
  end
end
