module Prmd
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load 'prmd/rails/tasks/json_schema.rake'
      end

      generators do
        require 'prmd/rails/generators/json_schema_generator'
      end
    end
  end
end
