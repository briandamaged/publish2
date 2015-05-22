require_relative '__module__'

module Publish2

  class Vault

    attr_reader :namer, :vault

    def initialize(options = {})
      @namer = options.fetch(:namer)
      @vault = options.fetch(:vault)
    end

    def store(src_path)
      name = namer.name_for(src_path)
      vault.store(name, src_path)
    end

  end

end