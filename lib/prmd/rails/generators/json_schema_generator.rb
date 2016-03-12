class Prmd::Rails::JsonSchemaGenerator < ::Rails::Generators::NamedBase
  def create_initial_schema
    create_file "docs/schema/schemata/#{file_name}.yml"
  end
end
