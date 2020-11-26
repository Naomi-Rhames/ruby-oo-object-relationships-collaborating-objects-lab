class MP3Importer
    attr_accessor :path, :filename

  def initialize(path)
    @path = path 
  end

  def files
    Dir[@path+"/*.mp3"].map {|file| file.split("/").last }
    end
    def import
        files.each do |filename| Song.new_by_filename(filename)
        end
    end
    
end