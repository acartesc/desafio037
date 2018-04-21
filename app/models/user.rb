class User < ApplicationRecord
  has_many :allocations
  has_many :projects, through: :allocations

end
