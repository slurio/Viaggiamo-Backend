class User < ApplicationRecord
  has_many :categories
  has_one_attached :img
end
