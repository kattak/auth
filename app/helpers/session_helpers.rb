helpers do
  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.clear
  end

  def current_user
    if session[:user_id]
      user = User.find(session[:user_id])
      if user
        user
      else
        #some rudimentary error handling if
        #user was not logged out before closing the app lasta
        nil
      end
    else
      nil
    end
  end
end
