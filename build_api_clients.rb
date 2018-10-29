### !/usr/bin/env ruby
require 'pry'
require 'open3'

clients_for_build = %i[ruby java javascript]
working_directory = '/Users/joshuawilkosz/Desktop/repos/squash_matrix_io_sdks'
swagger_yml = working_directory + '/swagger_2_0_0.yml'
# swagger-codegen generate -i ./swagger_2_0_0.yml -l javascript -c ./configs/config-javascript.json -o ./javascript
# swagger-codegen generate -i ./swagger_2_0_0.yml -l ruby -c ./configs/config-ruby.json -o ./ruby

system 'echo Running Ruby Swagger Generation script'

stdout,stderr,status = Open3.capture3(some_command)
