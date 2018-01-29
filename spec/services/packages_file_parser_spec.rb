require 'rails_helper'

RSpec.describe PackagesFileParser do
  let(:packages_file_url) { 'https://cran.r-project.org/src/contrib/PACKAGES' }
  let(:packages_file) {
    File.new('spec/fixtures/PACKAGES', 'r')
  }

  describe '.parse' do
    subject { described_class.parse }

    before do
      allow(described_class).to receive(:open)
        .with(packages_file_url).and_yield(packages_file)
    end

    it 'parses the PACKAGES file' do
      expect(subject.size).to eq(3)
      expect(subject.first['Package']).to eq('A3')
    end
  end
end
