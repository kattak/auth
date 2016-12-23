#LOGIN for NEW USER (redirected FROM LOGIN button)
get '/sessions/new' do
  erb :'/sessions/new'
end

#POST LOGIN FORM
post '/sessions' do
  @user = User.find_by(email: params[:email])

    if @user && @user.password == params[:password]
      login(@user)
      redirect '/'
    else
      erb :'/sessions/new'
    end
end

#LOGOUT (redirected from LOGOUT button)
delete '/sessions' do
  logout
  redirect '/'
end
