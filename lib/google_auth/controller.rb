module GoogleAuth
  module Controller

    def self.included(base)
      base.send(:before_filter, :ensure_authenticated)
      base.send(:helper_method, :current_user)
    end

    def current_user
      @current_user ||= begin
        GoogleAuth.user_class.find_by_id(session[:user_id]) if session[:user_id]
      end
    end

    def ensure_authenticated
      unless current_user
        session[:redirect] = request.fullpath
        redirect_to(login_path)
      end
    end

  end
end
