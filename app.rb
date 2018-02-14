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

post('/') do
  name = params["name"]
  rank = params["rank"]
  item = Item.new(name,rank)
  # item.rank = rank
  item.save()
  Item.sort()
  @list = Item.all()
  erb(:input)
end
