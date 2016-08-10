require ('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative ('models/shoo_order')

get "/shoos/order" do
  erb(:order)
end

post "/shoos" do
  @order = ShooOrder.new(params)
  @order.save
  erb(:create)
end

get "/shoos" do
  @orders = ShooOrder.all
  erb(:index)
end