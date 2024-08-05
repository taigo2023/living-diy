class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :admin_namespace?

  private

  def authenticate_admin!
    redirect_to new_admin_session_path unless admin_signed_in?
  end

  def admin_signed_in?
    current_admin.present?
  end

  def admin_namespace?
    controller_path.split('/').first == 'admin'
  end
end
