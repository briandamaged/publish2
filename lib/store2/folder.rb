require_relative '__module__'

require 'fileutils'

module Store2

  # Just stashes the data into a folder.
  class Folder

    attr_reader :root_path

    def initialize(options = {})
      unless options.is_a? Hash
        options = {root_path: options}
      end

      @root_path = options.fetch(:root_path)
    end


    def store(name, src)
      dest = File.join(root_path, name)
      FileUtils.cp src, dest
      return dest
    end

  end

end
