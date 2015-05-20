require_relative '__module__'

require 'securerandom'

module Store2::Namers

  module UUID

    def self.name_for(path)
      SecureRandom.uuid + File.extname(path)
    end

  end

end
