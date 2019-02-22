module SessionsHelper
  # session variable is now populated with the corresponding entry.
  def log_in(commuter)
    session[:commuter_id] = commuter.id
  end

  # Returns the current user, if he/she is logged-in.
  def current_user
    if session[:commuter_id]
      if @commuter.nil?
        @commuter = Commuter.find_by(id: session[:commuter_id])
      else
        @commuter
      end
    end
  end

  # Returns whether user is logged in or not. Exclamation mark to force it as a boolean value.
  def logged_in?
    !current_user.nil?
  end
end
