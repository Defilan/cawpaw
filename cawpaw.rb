require 'sinatra'

set :port, 8000
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do
  erb :main
end

get '/add' do
  erb :add_form
end

post '/add' do
  firstnum = params[:firstnum]
  secondnum = params[:secondnum]
  erb :add, locals: { 'firstnum' => firstnum, 'secondnum' => secondnum }
end

get '/subtraction' do
  erb :sub_form
end

post '/subtraction' do
  firstnum = params[:firstnum]
  secondnum = params[:secondnum]
  erb :sub, locals: { 'firstnum' => firstnum, 'secondnum' => secondnum }
end

get '/multiplication' do
  erb :multiply_form
end

post '/multiplication' do
  firstnum = params[:firstnum]
  secondnum = params[:secondnum]
  erb :multiply, locals: {'firstnum' => firstnum, 'secondnum' => secondnum}
end
