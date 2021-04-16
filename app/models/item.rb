class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :admin
  has_many :orders
  has_one_attached :image
  belongs_to :gender

  with_options presence: true do
    validates :name
    validates :text
    validates :image
    validates :price
    validates :gender_id
  end 
end
