require 'rails_helper'

RSpec.describe Package, type: :model do
  it { is_expected.to validate_presence_of(:name) }
end
