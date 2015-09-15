module GeoFilterPackage
  def self.gem_version
    Gem::Version.new Version::STRING
  end

  module Version
    MAJOR = '1'
    MINOR = '0'
    PATCH = '0-alpha'

    STRING = [MAJOR, MINOR, PATCH].join('.').chomp('.')
  end
end
