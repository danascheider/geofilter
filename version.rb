module GeoFilterPackage
  def self.gem_version
    Gem::Version.new Version::STRING
  end

  module Version
    MAJOR = '0'
    MINOR = '0'
    PATCH = '2'

    STRING = [MAJOR, MINOR, PATCH].join('.').chomp('.')
  end
end
