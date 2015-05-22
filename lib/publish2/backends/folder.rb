require_relative '__module__'

require_relative 'base'

require 'fileutils'

module Publish2::Backends

  # Just stashes the data into a folder.
  class Folder < Base

    attr_reader :root_path

    def initialize(options = {})
      unless options.is_a? Hash
        options = {root_path: options}
      end

      @root_path = options.fetch(:root_path)
    end


    def publish(name, src_path)
      FileUtils.mkdir_p root_path

      dest_path = File.join(root_path, name)
      FileUtils.cp src_path, dest_path
      return dest_path
    end

  end

end
