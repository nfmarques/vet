class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # está correcto porque o email deixa de ser o authentication_keys e passa a ser o username, mas isto só da para um o que é um verdadeiro cócó.
    #devise_parameter_sanitizer.for(:sign_up) << :email

    # assim dá para todos, tem é de ser ir buscar todos os nomes que lá estão.
    # new registration
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :first_name, :last_name)
    end

    # edit registration
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :current_password, :first_name, :last_name)
    end

    # login
    devise_parameter_sanitizer.for(:sign_in) << :username

  end

end
