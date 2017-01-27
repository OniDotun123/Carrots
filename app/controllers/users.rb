
get '/users/:id' do

   @user = User.find_by(id: params[:id])
erb :users
end

get '/users' do
  redirect '/'
end

# signup
get '/users/signup' do
  erb :"users/new"
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    add_session(user.id)
    redirect '/users'
  else
    @errors = user.errors.full_messages
    erb :"users/new"
  end

end
