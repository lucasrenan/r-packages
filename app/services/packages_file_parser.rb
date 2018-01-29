require 'open-uri'
require 'dcf'

class PackagesFileParser
  FILE_URL = 'https://cran.r-project.org/src/contrib/PACKAGES'

  def self.parse
    packages_file = open(FILE_URL) { |io| io.read }
    Dcf.parse(packages_file)
  end
end
