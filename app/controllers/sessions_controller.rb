class SessionsController < ApplicationController
  def new
  end

  def create
    fp = Fp.find_by(email: params[:session][:email].downcase)
    if fp && fp.authenticate(params[:session][:password_digest])
      log_in fp
      redirect_to current_user
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end
