require 'rails_helper'

RSpec.describe Package, type: :model do
  it { is_expected.to have_many(:contributions) }
  it { is_expected.to have_many(:authors).conditions('contributions.contribution_type' => Contribution::AUTHOR)
                                         .through(:contributions)
                                         .source(:contributor) }
  it { is_expected.to have_many(:maintainers).conditions('contributions.contribution_type' => Contribution::MAINTAINER)
                                         .through(:contributions)
                                         .source(:contributor) }

  it { is_expected.to validate_presence_of(:name) }
end
