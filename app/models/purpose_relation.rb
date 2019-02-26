class PurposeRelation < ApplicationRecord
  belongs_to :purpose, class_name: 'Purpose'
  belongs_to :purpose_group, class_name: 'PurposeGroup'

  validates: purpose_id, presence: true
  validates: purpose_group_id, presence: true
end
