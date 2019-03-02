class KindGroup < ApplicationRecord
  has_many :child_kinds, class_name: 'KindRelation', foreign_key: 'kind_group_id'
  has_many :kinds, through: :child_kinds

  validates :name, presence: true, length: { maximum: 20 }, format: { with: /\A[A-Z]\w*\z/ }
end
