# myapp.rb
#require 'sinatra'
#require 'erubi'
require_relative '../models/magic_effects'

get '/' do
  erb :index, layout: false
end

get '/effect' do
  @effect = "caster dies"
end

get '/effect/random' do
  num = rand(0000..9999)
  puts MAGIC_EFFECTS[num.to_s.to_sym]
  puts num
  @magic = MAGIC_EFFECTS[num.to_s.to_sym]
#random number generator rand(1000..9999) tie it to id
#create random template
#random.erb
#generate random id
#convert to string/symbol
#get magic effect
#display on template that you return
#template is erb file.
#0000 9999
erb :'effect/show', layout: false

end


get '/effect/:id' do
  id = params['id']
  #{"splat"=>[], "captures"=>["200"], "id"=>"200"}
  puts MAGIC_EFFECTS[id.to_sym]

  @magic = MAGIC_EFFECTS[id.to_sym]

  erb :'effect/show', layout: false
end


