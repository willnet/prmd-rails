require 'prmd/rake_tasks/combine'
require 'prmd/rake_tasks/verify'
require 'prmd/rake_tasks/doc'

namespace :json_schema do
  Prmd::RakeTasks::Combine.new do |t|
    t.options[:meta] = 'schema/meta.json'    # use meta.yml if you prefer YAML format
    t.paths << 'schema/schemata/'
    t.output_file = 'schema/schema.json'
  end

  Prmd::RakeTasks::Verify.new do |t|
    t.files << 'schema/schema.json'
  end

  Prmd::RakeTasks::Doc.new do |t|
    t.files = { 'schema/schema.json' => 'schema/schema.md' }
  end
end

task json_schema: ['json_schema:combine', 'json_schema:verify', 'json_schema:doc']
