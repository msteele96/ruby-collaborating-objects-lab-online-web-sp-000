class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
<<<<<<< HEAD
    @files = Dir.glob("#{path}/*.mp3").collect{ |file| file.sub("#{path}/", "") }
  end

  def import
    files.each do |file|
=======
    @files = []
    @files << Dir.glob("#{path}/*.mp3").collect{ |file| file.sub("#{path}/", "") }
  end

  def import
    @files.each do |file|
>>>>>>> 41530c75c49bcc48779b3f2491956b3e14faed34
      Song.new_by_filename(file)
    end
  end

end
