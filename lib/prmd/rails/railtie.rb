module Prmd
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load 'prmd/rails/tasks/json_schema.rake'
      end
    end
  end
end
