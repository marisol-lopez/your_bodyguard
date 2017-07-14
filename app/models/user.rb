class User < ApplicationRecord
  has_many :runs
  has_many :contacts

  validates :username, :presence => true, :uniqueness => true

end
