module SessionsHelper
  def log_in(fp)
    session[:fp_id] = fp.id
  end

  def current_user
    @current_user ||= Fp.find_by(id: session[:fp_id])
  end
  def logged_in?
    !current_user.nil?
  end
end
