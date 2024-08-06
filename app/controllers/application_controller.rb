class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :admin_namespace?

  def manifest
    send_file Rails.root.join('public', 'site.webmanifest'), type: 'application/manifest+json', disposition: 'inline'
  end

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
