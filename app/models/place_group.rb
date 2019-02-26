class PlaceGroup < ApplicationRecord
  has_many :child_places, class_name: 'PlaceRelation', foreign_key: 'place_group_id'
  has_many :places, through: child_places

  validates: name, presence: true, length: { maximun: 20 }, format: { with: /\A[A-Z]\w*\z/ }
end
