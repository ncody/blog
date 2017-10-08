module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authorize
    redirect_to login_url if current_user.nil?
  end

  def admin?
    current_user.id == 1
  end

end