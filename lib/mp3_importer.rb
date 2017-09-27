require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
      array = Dir.entries(path).map { |file| file if file.end_with?(".mp3")
    # binding.pry
  }.compact

  # binding.pry
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    # binding.pry
    end
  end

end
