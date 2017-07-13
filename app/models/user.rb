class User < ApplicationRecord
  has_many :runs
  has_many :contacts, through: :runs
end
