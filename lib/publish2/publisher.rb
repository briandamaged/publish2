require_relative '__module__'

require_relative 'namers/uuid'

module Publish2

  class Publisher

    attr_reader :namer, :backend

    def initialize(options = {})
      @namer   = options.fetch(:namer, ::Publish2::Namers::UUID)
      @backend = options.fetch(:backend)
    end

    def store(src_path)
      name = namer.name_for(src_path)

      return {
        type:    backend.type,
        locator: backend.store(name, src_path)
      }

    end

  end

end