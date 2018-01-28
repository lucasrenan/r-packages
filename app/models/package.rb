class Package < ApplicationRecord
  has_many :contributions
  has_many :authors, -> { where('contributions.contribution_type' => 0) },
                     through: :contributions,
                     source: :contributor
  has_many :maintainers, -> { where('contributions.contribution_type' => 1) },
                     through: :contributions,
                     source: :contributor
end
