require 'rails_helper'

RSpec.describe Contribution, type: :model do
  it { is_expected.to define_enum_for(:contribution_type) }

  it { is_expected.to belong_to(:package) }
  it { is_expected.to belong_to(:contributor) }
end
