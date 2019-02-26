class Kind < ApplicationRecord
  has_many :balances
  has_many :parent_kinds, class_name: 'KindRelation', foreign_key: 'kind_id'

  validates: name, presence: true, length: { maximun: 20 }, format: { with: /\A[a-z]\w*\z/ }
end
