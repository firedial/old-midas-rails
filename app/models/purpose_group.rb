class PurposeGroup < ApplicationRecord
  has_many :child_purposes, class_name: 'PurposeRelation', foreign_key: 'purpose_group_id'
  has_many :purposes, through: :child_purposes

  validates :name, presence: true, length: { maximum: 20 }, format: { with: /\A[A-Z]\w*\z/ }
end
