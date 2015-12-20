class Users::RegistrationsController < Devise::RegistrationsController

  # disable devise default user registration (because admins cant create new users)
  before_filter :redirect_users, only: [:new, :create]

  def new
  end

  def create
  end

  protected

  def redirect_users
    flash[:notice] = 'Operation not allowed'
    redirect_to root_path
  end

end
