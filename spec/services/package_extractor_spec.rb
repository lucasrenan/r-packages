require 'rails_helper'

RSpec.describe PackageExtractor do
  let(:name) { 'abc' }
  let(:version) { '2.1' }
  let(:package_url) { "https://cran.r-project.org/src/contrib/#{name}_#{version}.tar.gz" }
  let(:package_file) {
    File.new("spec/fixtures/#{name}_#{version}.tar.gz", "r")
  }

  subject { described_class.new(name, version) }

  describe '#uncompress' do
    before do
      allow(subject).to receive(:open).with(package_url).and_return(package_file)
    end

    it 'uncompress the package file' do
      expect(subject.uncompress).to be_a(Gem::Package::TarReader)
    end
  end
end
