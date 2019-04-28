class Picture < ApplicationRecord
  has_one_attached :image
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 1 }
end
