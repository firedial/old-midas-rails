class PlaceRelation < ApplicationRecord
  belongs_to :place, class_name: 'Place'
  belongs_to :place_group, class_name: 'PlaceGroup'

  validates: place_id, presence: true
  validates: place_group_id, presence: true
end
