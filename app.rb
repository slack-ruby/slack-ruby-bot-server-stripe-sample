# frozen_string_literal: true

Dir[File.expand_path('config/initializers', __dir__) + '/**/*.rb'].sort.each do |file|
  require file
end

require_relative 'lib/models'
require_relative 'lib/commands'
