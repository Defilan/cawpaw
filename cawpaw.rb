require 'sinatra'

set :port, 8000
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do
  'Welcome to CawPaw: A tool for learning basic math'
end

get '/add' do
  erb :add_form
end

post '/add' do
  firstnum = params[:firstnum]
  secondnum = params[:secondnum]
  erb :add, locals: { 'firstnum' => firstnum, 'secondnum' => secondnum }
end
