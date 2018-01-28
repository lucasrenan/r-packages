class Package < ApplicationRecord
  has_many :package_users
  has_many :authors, -> { where('package_users.user_type' => 0) },
                     through: :package_users,
                     source: :user
  has_many :maintainers, -> { where('package_users.user_type' => 1) },
                     through: :package_users,
                     source: :user
end
