class Contribution < ApplicationRecord
  belongs_to :package
  belongs_to :contributor
end
