namespace :packages do
  desc "Index R packages from CRAN"
  task index: :environment do
    parsed = PackagesFileParser.parse

    pp parsed
    puts "#{parsed.size} packages found"
  end

end
