require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # binding.pry
    #   array = Dir.entries(path).map do  |file|
    #     file if file.end_with?(".mp3")
    #   end
    # binding.pry
  # }.compact
  # binding.pry
    # binding.pry

    Dir.glob("#{path}/*.mp3").map { |file| (file[/(?<=mp3s).*/])[1..file.length] }
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    binding.pry
    end
  end

end
