require 'open-uri'
require 'dcf'

namespace :packages do
  desc "Index R packages from CRAN"
  task index: :environment do
    url = "https://cran.r-project.org/src/contrib/PACKAGES"

    packages_file = open(url) { |io| data = io.read }
    parsed = Dcf.parse(packages_file)

    pp parsed
    puts "#{parsed.size} packages found"
  end

end
