require 'open-uri'
require 'rubygems/package'
require 'zlib'

class PackageExtractor
  PACKAGE_URL_TEMPLATE = -> (name, version) {
    "https://cran.r-project.org/src/contrib/#{name}_#{version}.tar.gz"
  }

  def initialize(name, version)
    @name = name
    @version = version
  end

  def uncompress
    Zlib::GzipReader.wrap(open_package_url) do |gzip|
      return Gem::Package::TarReader.new(gzip)
    end
  end

private
  attr_reader :name, :version

  def package_url
    PACKAGE_URL_TEMPLATE[name, version]
  end

  def open_package_url
    open(package_url)
  end
end
