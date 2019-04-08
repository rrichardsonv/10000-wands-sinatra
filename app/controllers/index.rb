# myapp.rb
#require 'sinatra'
#require 'erubi'
require_relative '../models/magic_effects'

get '/' do
  erb :index, layout: false
end

get '/effect' do
  @effect = "Caster grows nonﬁinctional vampire fangs"
end

get '/effect/:id' do
  id = params['id']
  #{"splat"=>[], "captures"=>["200"], "id"=>"200"}
  puts MAGIC_EFFECTS[id.to_sym]

  @magic = MAGIC_EFFECTS[id.to_sym]

  erb :'effect/show', layout: false
end
