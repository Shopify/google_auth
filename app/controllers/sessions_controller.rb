class SessionsController < ApplicationController
  skip_before_filter :ensure_authenticated
  protect_from_forgery except: [:new, :create, :failure, :destroy]

  def new
    redirect_to '/auth/g'
  end

  def create
    if auth = request.env['omniauth.auth']
      user = GoogleAuth.user_class.find_or_initialize_by_email(auth['info']['email'])
      user.uid = auth['uid']
      user.name = auth['info']['name']
      user.save!

      session[:user_id] = user.id
      redirect_to session[:redirect] || GoogleAuth.default_redirect_path
    else
      render '/auth/failure'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  def failure
    render :inline => 'Snowman says no. <div id="snowman" style="text-align:center; font-size:4000%;">&#9731;</div>'
  end
end

