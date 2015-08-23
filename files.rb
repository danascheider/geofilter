module GeoFilterPackage
  def self.files
    Files::FILES
  end

  module Files
    LIB_FILES  = Dir.glob('./lib/**/*.rb')
    BASE_FILES = %w(files.rb Gemfile Vagrantfile config.ru tessitura.gemspec README.rdoc version.rb)

    FILES = [BASE_FILES, LIB_FILES].flatten.sort
  end
end