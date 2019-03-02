class KindRelation < ApplicationRecord
  belongs_to :kind, class_name: 'Kind'
  belongs_to :kind_group, class_name: 'KindGroup'

  validates :kind_id, presence: true
  validates :kind_group_id, presence: true
end
