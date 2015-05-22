require_relative '__module__'

module Publish2::Backends

  class Backend

    def type
      self.class.name
    end

    def store(name, src_path)
      raise NotImplementedError
    end

  end

end