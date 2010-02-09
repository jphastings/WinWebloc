require 'plist'

ARGV.each do |webloc|
  if webloc.match(/\.webloc$/)
    `start #{Plist::parse_xml(webloc)['URL']}`
  end
end