class Spice < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :image, presence: true
  validates :item_name, presence: true
  validates :limit, presence: true
  validates :memo, presence: true

  
end
