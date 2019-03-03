class Place < ApplicationRecord
  has_many :balances
  has_many :parent_places, class_name: 'PlaceRelation', foreign_key: 'place_id'

  validates :name, presence: true, length: { maximum: 20 }, format: { with: /\A[a-z]\w*\z/ }
end
