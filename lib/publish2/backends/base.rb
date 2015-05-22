require_relative '__module__'

module Publish2::Backends

  class Base

    def type
      self.class.name
    end

    def publish(name, src_path)
      raise NotImplementedError
    end

  end

end