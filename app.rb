require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('./lib/favorite_things')
require('pry')

get('/') do
  @list = Item.all()
  erb(:input)
end

get('/favorite_things/:id') do
  @item = Item.find(params[:id])
  # @item = Item.rank(params[:rank])
  erb(:output)
end

# get('/favorite_things/:rank') do
#   @item = Item.rank(params[:rank])
#   erb(:output)
# end


post('/') do
  name = params["name"]
  item = Item.new(name)
  # item.rank()
  item.save()
  @list = Item.all()
  erb(:input)
end
