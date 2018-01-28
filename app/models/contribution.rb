class Contribution < ApplicationRecord
  AUTHOR = 0
  MAINTAINER = 1
  enum contribution_type: { author: AUTHOR, maintainer: MAINTAINER }

  belongs_to :package
  belongs_to :contributor
end
