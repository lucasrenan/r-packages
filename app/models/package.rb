class Package < ApplicationRecord
  has_many :contributions
  has_many :authors, -> { where('contributions.contribution_type' => Contribution::AUTHOR) },
                     through: :contributions,
                     source: :contributor
  has_many :maintainers, -> { where('contributions.contribution_type' => Contribution::MAINTAINER) },
                     through: :contributions,
                     source: :contributor

  validates :name, presence: true
end
