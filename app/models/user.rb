class User < ApplicationRecord
  has_many :package_users
  has_many :packages, through: :package_users
end
